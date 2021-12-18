#include "create_poisson_matrix.hpp"

//! Used for filling the sparse matrix.
using Triplet = Eigen::Triplet<double>;

//! Create the 1D Poisson matrix
//! @param[in] N the number of interior points
//! @param[in] a the coefficient function a
//!
//! @returns the Poisson matrix.
SparseMatrix createPoissonMatrix(int N,
    const std::function<double(double)>& a) {
    
    const double h = 1./(N+1);
    SparseMatrix A;
    
    A.resize(N, N);
    std::vector<Triplet> triplets;
    // Place for boundaries
    triplets.reserve(N + 2 * N - 2);
    for (int i = 0; i < N; ++i) {
        const double xi = (i+1)*h;
	// Assign value of a(x) to the matrix depending on location
	// Diagonal: 2*a(x)
        triplets.push_back(Triplet(i, i, 2.*a(xi)));
	// if not at beginning push -a(x) left to the diagonal
        if (i > 0) {
            triplets.push_back(Triplet(i, i-1, -a(xi)));
        }
	// if not at end push -a(x) right to the diagonal
        if (i<N-1) {
            triplets.push_back(Triplet(i, i+1, -a(xi)));
        }
    }
    // Build matrix A
    A.setFromTriplets(triplets.begin(), triplets.end());
    // Divide A for h²
    A*=1.0/(h*h);
    return A;
}
