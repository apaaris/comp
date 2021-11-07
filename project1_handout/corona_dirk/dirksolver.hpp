#pragma GCC diagnostic ignored "-Werror=maybe-uninitialized"
#pragma once
#include <Eigen/Core>
#include <vector>
#include "coronaoutbreak.hpp"

class DIRKSolver {
public:
	DIRKSolver(const CoronaOutbreak& coronaOutbreak_)
		: coronaOutbreak(coronaOutbreak_) {

	}

	///
	/// Evaluates function G1(y) from task b)
	/// @param[out] G evaluation of function
	/// @param[in] y input to G
	/// @param[in] tn current time
	/// @param[in] Un computed value of U = [S,E,I,R] at time tn
	/// @param[in] dt timestep
	///
	//----------------G1Start----------------
	void computeG1(Eigen::VectorXd& G, Eigen::VectorXd y, double tn,
		Eigen::VectorXd Un, double dt) {
		// (write your solution here)
		Eigen::VectorXd F(y.size());
		coronaOutbreak.computeF(F, mu * dt + tn, y);
		G = Un + F * mu * dt - y;
	}
	//----------------G1End----------------

	///
	/// Evaluates function G2(y1, y) from task b)
	/// @param[out] G evaluation of function
	/// @param[in] y input to G
	/// @param[in] tn current time
	/// @param[in] Un computed value of U = [S,E,I,R] at time tn
	/// @param[in] dt timestep
	/// @param[in] y1 computed value for first intermediate RK value
	///
	void computeG2(Eigen::VectorXd& G, Eigen::VectorXd y, double tn,
		Eigen::VectorXd Un, double dt, Eigen::VectorXd y1) {
		// (write your solution here)	
		Eigen::VectorXd F(y.size());
		Eigen::VectorXd F2(y.size());
		coronaOutbreak.computeF(F, mu * dt + tn, y1);
		coronaOutbreak.computeF(F2,(mu-nu) * dt + tn, y);
		G = Un - (F * nu * dt) + (mu * F2 * dt) - y;
	}

	///
	/// Find a solution to JG1*x = -G1 with Newton's method
	/// @param[out] x solution to the system
	/// @param[in] Un computed value of U = [S,E,I,R] at time tn
	/// @param[in] dt timestep
	/// @param[in] tn current time
	/// @param[in] tolerance if Newton increment smaller, successfully converged
	/// @param[in] maxIterations  max Newton iterations to try before failing
	///
	void newtonSolveY1(Eigen::VectorXd& u, Eigen::VectorXd Un, double dt,
	double tn, double tolerance, int maxIterations) {
		int size = Un.size();
		Eigen::VectorXd RES(size), Fu(size), x(size);
		Eigen::MatrixXd JG1(size,size), JFu(size,size);
		u = Un;
	
	   	// Write your loop for the Newton solver here.
	   	// You will need to use coronaOutbreak.computeF(...) 
	   	// and coronaOutbreak.computeJF(...)
	   	// (write your solution here)

		//coronaOutbreak.computeF(Fu,tn + mu * dt,u);
		for(unsigned int iteration = 0; iteration < maxIterations; iteration++){
		
		computeG1(RES,u,tn,Un,dt);

		if(x.norm() <= tolerance){
			return;
		}
		coronaOutbreak.computeJF(JFu, tn + mu*dt, u);
		JG1 = dt * mu * JFu - Eigen::MatrixXd::Identity(size,size);
		x = JG1.lu().solve(-RES);
		u = u + x;
		}
		// If we reach this point, something wrong happened.
		throw std::runtime_error("Did not reach tolerance in Newton iteration in Y1");
	}

	///
	/// Find a solution to JG2*x = -G2 with Newton's method
	/// @param[out] x solution to the system
	/// @param[in] Un computed value of U = [S, E, I, R] at time tn
	/// @param[in] y1 previous intermediate value for RK method
	/// @param[in] dt timestep
	/// @param[in] tn current time
	/// @param[in] tolerance if Newton increment smaller, successfully converged
	/// @param[in] maxIterations  max Newton iterations to try before failing
	///
	//----------------NewtonG2Start----------------
	void newtonSolveY2(Eigen::VectorXd& v, Eigen::VectorXd Un,
		Eigen::VectorXd y1, double dt, double tn, double tolerance, int maxIterations) {

	   // Use newtonSolveY1 as a model for this
// (write your solution here)
		int size = Un.size();
       		Eigen::VectorXd RES(size), Fu(size), x(size);
                Eigen::MatrixXd JG2(size,size), JFu(size,size);
                v = Un;

                // Write your loop for the Newton solver here.
                // You will need to use coronaOutbreak.computeF(...) 
                // and coronaOutbreak.computeJF(...)
                // (write your solution here)

                //coronaOutbreak.computeF(Fu,tn + mu * dt,u);
                for(unsigned int iteration = 0; iteration < maxIterations; ++iteration){

                computeG2(RES,v,tn,Un,dt,y1);
                
                if(x.norm() <= tolerance){
                        return;
                }
                coronaOutbreak.computeJF(JFu, tn + (mu-nu)*dt, v);
                JG2 = dt * mu * JFu - Eigen::MatrixXd::Identity(size,size);
                x = JG2.lu().solve(-RES);
                v = v + x;
        }
                // If we reach this point, something wrong happened.
                throw std::runtime_error("Did not reach tolerance in Newton iteration in Y1");	
	
	
	
	
	}


	//----------------NewtonG2End----------------



	///
	/// Compute N timesteps of DIRK(2,3)
	/// @param[in/out] u should be a vector of size 5, where each
	///                component is a vector of size N+1. u[i][0]
	///                should have the initial value stored before
	///                calling the funtion
	///
	/// @param[out] time should be of length N+1
	///
	/// @param[in] T the final time
	/// @param[in] N the number of timesteps
	///
	//----------------DirkStart----------------
	void solve(std::vector<std::vector<double> >& u, std::vector<double>& time,
		double T, int N) {
		
		const unsigned int SIZE = u.size()-1;
		const double max_iteration = 100;
		const double tolerance = 1e-10;
		const double dt = T / N;
		Eigen::VectorXd Y1(SIZE), Y2(SIZE), F1(SIZE), F2(SIZE), U(SIZE);
		
		time.at(0) = 0.0;
		
		// Your main loop goes here. At iteration n,
		// 1) Find Y_1 with newtonSolveY1 (resp. Y2)
		// 2) Compute U^{n+1} with F(Y1), F(Y2)
		// 3) Write the values at u[...][n] 
		// 4) Compute D and write time[n]
		// (write your solution here)

		for(unsigned int i = 0; i < N; i++){

			U << u.at(0).at(i), u.at(1).at(i),u.at(2).at(i), u.at(3).at(i);
		
			newtonSolveY1(Y1, U, dt, time.at(i), tolerance, max_iteration);
			newtonSolveY2(Y2, U, Y1, dt, time.at(i), tolerance, max_iteration);
			coronaOutbreak.computeF(F1, time.at(i) + mu * dt, Y1);
			coronaOutbreak.computeF(F2, time.at(i) + (mu-nu) * dt, Y2);
			coronaOutbreak.computeD(u, dt, N);
			
			for(unsigned int j = 0; j < SIZE; j++){

				u.at(j).at(i+1) = u.at(j).at(i) + dt*(mu - nu / 2.0) * (F1[j]+F2[j]);	
			}

			time.at(i+1) = dt + i * dt;
		}	
	}
	//----------------DirkEnd----------------

private:

	const double mu = 0.5 + 0.5 / sqrt(3);
	const double nu = 1. / sqrt(3);

	CoronaOutbreak coronaOutbreak;

}; // end class DIRKSolver
