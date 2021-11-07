#pragma GCC diagnostic ignored "-Werror=maybe-uninitialized"
#pragma once
#include <functional>
#include <Eigen/Core>
#include <Eigen/LU>
#include <vector>
#include <iostream>

class CoronaOutbreak {
public:

    ///
    /// Evaluates right hand side of the system of ODEs U' = F(t,U)
    ///    S' = Pi*S - alpha*S*I - beta*S*E - delta*S + d*R
    ///    E' = alpha*S*I + beta*S*E - e*E - gamma *E - delta*E
    ///    I' = e*E -f*I - (sigma +delta) *I
    ///    R' = f*I + gamma *E - d*R - delta *R
    /// @param[in/out] F evaluation of RHS
    /// @param[in] U VectorXd with [S,E,I,R]
    /// @param[in] t current time
    ///
    //----------------FStart----------------
    void computeF(Eigen::VectorXd& F, double t, Eigen::VectorXd U) {
        double S = U[0];
        double E = U[1];
        double I = U[2];
        double R = U[3];

        F[0] = Pi * S - alpha(t) * S * I - beta(t) * S * E - delta * S + d * R;
        F[1] = alpha(t) * S * I + beta(t) * S * E  - e * E - gamma * E - delta * E;
        F[2] = e * E - f * I - sigma * I - delta * I;
        F[3] = f * I + gamma * E - d * R - delta * R; 
    }
    //----------------FEnd---------------

    ///
    /// Computes Jacobian matrix of F
    /// @param[in/out] J Jacobian matrix
    /// @param[in] t time
    /// @param[in] U VectorXd with [S,E,I,R]
    ///
    //----------------JFStart----------------
    void computeJF(Eigen::MatrixXd& J, double t, Eigen::VectorXd U) {
// (write your solution here)
        double S, E, I, R;
	 S = U[0];
	 E = U[1];
	 I = U[2];
	 R = U[3];
	
	// Inserting terms in the jacobi matrix
	// In each column is derived by a specific parameter
	// 0 -> s
	// 1 -> e
	// 2 - > i
	// 3 -> r
	
	 J << Pi - delta - alpha(t) * I - beta(t) * E, -beta(t) * S, -alpha(t) * S, d, 
	      alpha(t) * I + beta(t) * E, -(e + gamma + delta) + beta(t) * S, alpha(t) * S, 0,
	      0, e, -(f + sigma + delta), 0,
	      0, gamma, f, -(d + delta);

    }
    //----------------JFEnd----------------

    ///
    /// Computes Dead class D
    /// @param[in/out] u vector of vectors of variables. Dimensions: 5 x # time steps
    /// @param[in] dt time step, n integer corresponding to t_n+1.
    ///
    //----------------DStart----------------
    void computeD(std::vector< std::vector<double> >& u, const double dt, int n) {
// (write your solution here)
//	double h, hF, s, e, i, r, sF, eF,iF,rF;
	 // n is the step number, the more steps, the more precise it is
	 // in the first .at() a line is assigned to each variable, in the second .at() a value of this variable is saved for each time step
	 // n - 1 ensures that each step is saved at the right spot, the index starts at 0, so n = 1 saves in i = 0
//	 s = u.at(0).at(n-1); // S
//	 e = u.at(1).at(n-1); // E
//	 i = u.at(2).at(n-1); // I
//	 r = u.at(3).at(n-1); // R
//	 sF = u.at(0).at(n); // Same but a step forward
//	 eF = u.at(1).at(n);
//	 iF = u.at(2).at(n);
//	 rF = u.at(3).at(n);
//	h = delta * ( s + e + r + i) + sigma * i; // D'
//	hF = delta * (sF + eF + rF + iF) + sigma * iF;
//	u.at(4).at(n) = u.at(4).at(n-1) + (h + hF) / 2.0 * dt; // D
	Eigen::VectorXd H(4);
	H << delta,delta,delta+sigma,delta;
	for(unsigned int i = 1; i <= n; i++){
	double Hu, HuN;
	Hu = H[0]*u[0][i]+H[1]*u[1][i]+H[2]*u[2][i]+H[3]*u[3][i];
	HuN = H[0]*u[0][i-1]+H[1]*u[1][i-1]+H[2]*u[2][i-1]+H[3]*u[3][i-1];
	u[4][i] = u[4][i - 1] + dt / 2 * (Hu + HuN);

	}

    }
    //----------------DEnd----------------

    double alpha(double t) {
        return a * (1. - r * t / (t + 1.));
    }

    double beta(double t) {
        return b * (1. - r * t / (t + 1.));
    }

    CoronaOutbreak() = default;

    CoronaOutbreak(double a_, double b_, double d_, double e_, double f_, 
        double Pi_, double delta_, double gamma_, double sigma_, double r_ = 0) :
        a(a_), b(b_), d(d_), e(e_), f(f_), Pi(Pi_), delta(delta_), gamma(gamma_), sigma(sigma_), r(r_) {
        // Empty
    }


    std::vector<double> computeExactNoCorona(double t, double S0) {
        std::vector<double> result(5);
        result[0] = S0 * std::exp( (Pi - delta) * t);
        result[1] = 0.;
        result[2] = 0.;
        result[3] = 0.;
        result[4] = (delta * S0 / (Pi - delta)) * ( std::exp( (Pi - delta) * t) - 1. );
        std::cout.precision(17);
        std::cout << "Exact solution: " << result[0] << " " << result[1]
            << " " << result[2] << " " << result[3] << " " << result[4] << std::endl;
        return result;
    }


private:

    const double r = 0.01;

    //! Birth rate
    const double Pi = 3e-5;

    //! Death rate
    const double delta = 2e-5;
    const double gamma = 1.5e-5;
    const double sigma = 2.5e-3;

    // The magic Garland constants:
    const double a = 1.5e-3;
    const double b = 0.3e-3;
    const double d = 2e-3;
    const double e = 0.5;
    const double f = 0.5;
};
