#pragma once
#include <Eigen/Core>
#include <Eigen/Sparse>
#include <vector>

#include "stiffness_matrix.hpp"

//! Sparse Matrix type. Makes using this type easier.
typedef Eigen::SparseMatrix<double> SparseMatrix;

//! Used for filling the sparse matrix.
typedef Eigen::Triplet<double> Triplet;

//----------------AssembleMatrixBegin----------------
//! Assemble the stiffness matrix
//! for the linear system
//!
//! @param[out] A will at the end contain the Galerkin matrix
//! @param[in] vertices a list of triangle vertices
//! @param[in] triangles a list of triangles
//! @param[in] sigma the function sigma as in the exercise
//! @param[in] r the parameter r as in the exercise
template<class Matrix>
void assembleStiffnessMatrix(Matrix& A, const Eigen::MatrixXd& vertices,
			     const Eigen::MatrixXi& triangles,
			     const std::function<double(double, double)>& sigma = constantFunction,
			     double r=0)
{
    
    const int numberOfElements = triangles.rows();
    A.resize(vertices.rows(), vertices.rows());
    
    std::vector<Triplet> triplets;

    triplets.reserve(numberOfElements * 3 * 3);
// (write your solution here)
    for(int i = 0; i < numberOfElements; i++){
    // Get indices of vertinces
    const auto& a = vertices.row(triangles(i,0));
    const auto& b = vertices.row(triangles(i,1));
    const auto& c = vertices.row(triangles(i,2));
    
    //Build the 3x3 stiffness matrix
    Eigen::Matrix3d A_k;
    computeStiffnessMatrix(A_k, a, b, c, sigma, r);
    for (int j = 0; j < 3; j++){
    for (int k = 0; k < 3; k++){
    // Pushback the triange vertices and the stiffness matrix to the main matrix (vector)
    triplets.push_back(Triplet(triangles(i,j), triangles(i,k), A_k(j,k)));
    }
    }
    
    }
    // Build matrix from vector
    A.setFromTriplets(triplets.begin(), triplets.end());
}
//----------------AssembleMatrixEnd----------------
