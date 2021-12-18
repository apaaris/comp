#include "crank_nicolson.hpp"
#include <Eigen/LU>

//! Uses the Crank-Nicolson method to compute u from time 0 to time T
//!
//! @param[in] u0 the initial data, as column vector (size N+2)
//! @param[in] dt the time step size
//! @param[in] T the final time at which to compute the solution (which we assume to be a multiple of dt)
//! @param[in] N the number of interior grid points
//! @param[in] gL function of time with the Dirichlet condition at left boundary
//! @param[in] gR function of time with the Dirichlet condition at right boundary
//! @param[in] a the coefficient function a
//!
//! @note the vector returned should include the boundary values!
//!
std::pair<Eigen::MatrixXd, Eigen::VectorXd> crankNicolson(
    const Eigen::VectorXd& u0,
    double dt, double T, int N,
    const std::function<double(double)>& gL,
    const std::function<double(double)>& gR,
    const std::function<double(double)>& a) {


    unsigned int nsteps = (unsigned int)(round(T / dt));
    Eigen::MatrixXd u;
    u.resize(N + 2, nsteps + 1);
    Eigen::VectorXd time;
    time.resize(nsteps + 1);
    double h = 1.0 / (N + 1);
    // Build A
    SparseMatrix A = createPoissonMatrix(N, a);
    // Build B = Id * dt * A
    SparseMatrix B(N, N);
    B.setIdentity();
    B += 0.5 * dt * A;
    //Set IC
    u.col(0) =  u0;
    time[0] = 0.0;
    // Initialize solver
    Eigen::SparseLU<SparseMatrix> solver;
    solver.compute(B);
    // Initialize G1, G2
    Eigen::VectorXd G1 = Eigen::VectorXd::Zero(N);
    Eigen::VectorXd G2 = Eigen::VectorXd::Zero(N);
	for(unsigned int k = 0; k < nsteps; k++) {
		// Step in time
		time[k+1] = (k + 1) * dt;
		// Calculate G1
		G1[0] = a(h) * dt * gL(time[k]) / (h * h);
		G2[0] = a(h) * dt * gL(time[k + 1]) / (h * h);
		G1[N-1] = a(1 - h) * dt * gR(time[k]) / (h * h);
		G2[N-1] = a(1 - h) * dt * gR(time[k + 1]) / (h * h);
		// Prepare rhs for solver
		Eigen::VectorXd rhs = u.col(k).segment(1, N) - dt / 2 * A * u.col(k).segment(1, N) + 0.5 * (G1 + G2);
		// Solve U
		u.col(k + 1).segment(1, N) = solver.solve(rhs);
		// Add boundaries to U
		u.col(k + 1)[0] = gL(time[k + 1]);
		u.col(k + 1)[N + 1] = gR(time[k + 1]);
}

    
    
    return std::make_pair(u, time);
}
