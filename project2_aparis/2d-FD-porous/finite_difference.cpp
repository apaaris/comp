#include <Eigen/Sparse>
#include <iostream>
#include "writer.hpp"
#include <cmath>
#include <Eigen/SparseCholesky>
#include <stdexcept>
#include <iostream>

//! Sparse Matrix type. Makes using this type easier.
typedef Eigen::SparseMatrix<double> SparseMatrix;

//! Used for filling the sparse matrix.
typedef Eigen::Triplet<double> Triplet;


//! Vector type
typedef Eigen::VectorXd Vector;


//! Our function pointer, typedef'd to make it easier to use
typedef double(*FunctionPointer)(double, double);

//----------------poissonBegin----------------
//! Create the Poisson matrix for 2D finite difference.
//! @param[out] A will be the Poisson matrix (as in the exercise)
//! @param[in] N number of elements in the x-direction
void createPorousMediaMatrix2D(SparseMatrix& A, FunctionPointer sigma, int N, double dx) {
    std::vector<Triplet> triplets;
    A.resize(N*N, N*N);
    triplets.reserve(5*N*N-4*N);

    // Fill up triples
    for(unsigned int j = 0; j < N; j++){
    for(unsigned int i = 0; i < N; i++){
    // Indices start at 1, so the first x in the loop is (0 + 1)*dx
    double x = (i + 1)*dx;
    double y = (j + 1)*dx;
    
    // coordinates of the diagonal for each repetition
    int d = j * N + i;
    
    //k -> sum of sigmas, diagonal for the matrix which are the diagonal of A
    //realised I could have grouped dx without repeating the multiplication
    double k = sigma(x+dx*0.5,y) + sigma(x-dx*0.5,y) + sigma(x,y+dx*0.5) + sigma(x,y-dx*0.5); 
    
    // push k to the diagonal of B
    triplets.push_back(Triplet(d, d, k));
        
    	// push sigma to the "outer diagonals" of B 
	//
	// Special conditions:
	//  i !=0:  sigma,i-1/2,j goes left (diagonal of B)
	//  i !=N-1: sigma,i+1/2,j goes right (diagonal B)
   	
    	if (i != 0){
	triplets.push_back(Triplet(d, d-1, -sigma(x - dx * 0.5, y)));
	} 
	if (i != N-1){
	triplets.push_back(Triplet(d, d+1, -sigma(x + dx * 0.5, y)));
	} 
        
	// push sigma to "C" 
	//
	// Special conditions:
	//  j > 0: sigma,i,j-1/ (matrix C)
	//  j < N-1: sigma,i,j+1/2 (matrix C)
	
	if (j > 0){
	triplets.push_back(Triplet(d, d-N, -sigma(x, y - dx * 0.5)));
	} 
   	if (j < N - 1){
	triplets.push_back(Triplet(d, d+N, -sigma(x, y + dx * 0.5)));
	} 
    }
    }

// (write your solution here)
    // Build matrix A from B and C
    A.setFromTriplets(triplets.begin(), triplets.end());
}
//----------------poissonEnd----------------

//----------------RHSBegin----------------
//! Create the Right hand side for the 2D finite difference
//! @param[out] rhs will at the end contain the right hand side
//! @param[in] f the right hand side function f
//! @param[in] N the number of points in the x direction
//! @param[in] dx the cell width
void createRHS(Vector& rhs, FunctionPointer f, int N, double dx) {
    rhs.resize(N * N);

    for (int i = 0; i < N; ++i) {
        for (int j = 0; j < N; ++j) {
	    // Index from diagonal has to start at 1 not 0
            double x = (i + 1) * dx;
            double y = (j + 1) * dx;
	    // Build vector F
	    // Very similar to series 3 but 2D
	    rhs[j * N + i] = dx * dx * f(x, y);
        }
    }
}
//----------------RHSEnd----------------


//----------------solveBegin----------------
//! Solve the Poisson equation in 2D
//! @param[in] f the function pointer to f
//! @param[in] N the number of points to use (in x direction)
//!
//! @returns the approximate solution u
Vector poissonSolve(FunctionPointer f, FunctionPointer sigma, int N) {
    Vector u;
    double dx = 1.0 / (N + 1);

    // Compute A, rhs and u
// (write your solution here)
	SparseMatrix A;
	// Build matrix A
	createPorousMediaMatrix2D(A, sigma, N, dx);
	Vector rhs;
	// Build vector F
	createRHS(rhs, f, N, dx);
	// Solve like in series 3
	Eigen::SparseLU<SparseMatrix> solver;
	solver.compute(A);
	//Leave space for boundaries all around the matrix
	u.resize((N+2) * (N+2));
	u.setZero();
	Vector innerU = solver.solve(rhs);
	for(int i = 1; i <= N; ++i){
	for(int j = 1; j <= N; ++j){
	// u "real" = uSolved (with boundaries around)
	u[i * (N+2) + j] = innerU[(i - 1) * N + j - 1];
	}
	}
    return u;
}
//----------------solveEnd----------------


//! Gives the Right hand side F at the point x, y
double F(double x, double y) {
  return 4*M_PI*M_PI*sin(2*M_PI*x)*sin(2*M_PI*y)*(4*cos(2*M_PI*x)*cos(2*M_PI*y)+M_PI);
}

//----------------convergenceBegin----------------
//! Gives the exact solution at the point x,y
double exactSolution(double x, double y) {
return sin(2*M_PI*x)*sin(2*M_PI*y);
}



void convergeStudy(FunctionPointer F, FunctionPointer sigma) {
    const int startK = 3;
    const int endK = 9;


    Vector errors(endK - startK);
    Vector resolutions(errors.size());
    for (int k = startK; k < endK; ++k) {
        const int N = 1 << k; // 2^k

// (write your solution here)
       Vector u;
       // Get vector with solutions
        u = poissonSolve(F, sigma, N);
        double maxError = 0;
        double dx = 1.0 / (N + 1);

        for (unsigned int j = 0; j < N + 1; ++j) {
            for (unsigned int i = 0; i < N + 1; ++i) {
                double x = i * dx;
                double y = j * dx;
		// We take the value of u which we calculated and includes
		// approximations and truncation errors and we want to look
		// how far are we from the exact solution
                double error = std::abs(u[j*(N+2)+i] - exactSolution(x, y));
                maxError = std::max(error, maxError);
            }
        }
        errors[k - startK] = maxError;
        resolutions[k - startK] = N;	
    }

    writeToFile("errors.txt", errors);
    writeToFile("resolutions.txt", resolutions);
}
//----------------convergenceEnd----------------

int main(int, char**) {
    auto sigmaCos = [](double x, double y) {
      return M_PI/2.+cos(2*M_PI*x)*cos(2*M_PI*y);
    };

    auto sigmaConstant = [](double x, double y) {
        return 1.0;
    };
    auto u = poissonSolve(F, sigmaCos, 500);
    writeToFile("u_fd.txt", u);

    convergeStudy(F, sigmaCos);
}




