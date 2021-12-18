#pragma once
#include <Eigen/Core>
#include "load_vector.hpp"

//----------------AssembleVectorBegin----------------
//! Assemble the load vector into the full right hand side
//! for the linear system
//!
//! @param[out] F will at the end contain the RHS values for each vertex.
//! @param[in] vertices a list of triangle vertices
//! @param[in] triangles a list of triangles
//! @param[in] f the RHS function f.
void assembleLoadVector(Eigen::VectorXd& F,
                           const Eigen::MatrixXd& vertices,
                           const Eigen::MatrixXi& triangles,
                           const std::function<double(double, double)>& f)
{
     const int numberOfElements = triangles.rows();

     F.resize(vertices.rows());
     F.setZero();
// (write your solution here)
for(int i = 0; i < numberOfElements; ++i){
// Get vertices
const auto& a = vertices.row(triangles(i,0));
const auto& b = vertices.row(triangles(i,1));
const auto& c = vertices.row(triangles(i,2));
// Build and compute load vector for triangle
Eigen::Vector3d F_k;
computeLoadVector(F_k, a, b, c, f);
// Push components to the main load vector
for(int j = 0; j < 3; ++j){
F(triangles(i,j)) += F_k(j);
}
}
}
//----------------AssembleVectorEnd----------------
