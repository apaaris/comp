#pragma once
#include <Eigen/Core>
#include <Eigen/Dense>
#include "grad_shape.hpp"
#include "coordinate_transform.hpp"
#include "integrate.hpp"
#include "shape.hpp"
#include "constant_function.hpp"

//----------------compMatrixBegin----------------
//! Evaluate the stiffness matrix on the triangle spanned by
//! the points (a, b, c).
//!
//! Here, the stiffness matrix A is a 3x3 matrix
//! 
//! $$A_{ij} = \int_{K} ( sigma(x,y) \nabla \lambda_i^K(x, y) \cdot  \nabla \lambda_j^K(x, y)\; + r \lambda_i^K(x,y)\lambda_j^K(x,y) )dV$$
//! 
//! where $K$ is the triangle spanned by (a, b, c).
//!
//! @param[out] stiffnessMatrix should be a 3x3 matrix
//!                        At the end, will contain the integrals above.
//!
//! @param[in] a the first corner of the triangle
//! @param[in] b the second corner of the triangle
//! @param[in] c the third corner of the triangle
//! @param[in] sigma the function sigma as in the exercise
//! @param[in] r the parameter r as in the exercise
template<class MatrixType, class Point>
void computeStiffnessMatrix(MatrixType& stiffnessMatrix,
                            const Point& a,
                            const Point& b,
                            const Point& c,
			    const std::function<double(double, double)>& sigma = constantFunction,
                            const double r=0)
{
    Eigen::Matrix2d coordinateTransform = makeCoordinateTransform(b - a, c - a); //Jk
    double volumeFactor = std::abs(coordinateTransform.determinant()); //det Jk - > dV
    
    Eigen::Matrix2d elementMap = coordinateTransform.inverse().transpose(); //Jk⁻¹t
	
    for(unsigned int i = 0; i < 3; i++) {
         for(unsigned int j = 0; j < 3; j++) {
             // Build 3x3 stiffness matrix out of integration of given formula
	     // Aij in the notes
             stiffnessMatrix(i, j)=  integrate([&](double xt, double yt) {
                 Eigen::Vector2d x = coordinateTransform * Eigen::Vector2d(xt, yt) + Eigen::Vector2d(a[0], a[1]);
                 
                 Eigen::Vector2d elementLambdaA = elementMap * gradientLambda(i, xt, yt);
                 Eigen::Vector2d elementLambdaB = elementMap * gradientLambda(j, xt, yt);
                 
                 double dotProduct = elementLambdaA.dot(elementLambdaB);
		 // Integrate the given function:
                // Sigma(x,y) nLi(x,y).nLj(x,y)*dV + r Li(x,y).Lj(x,y) * dV
                 return sigma(x[0],x[1]) * dotProduct * volumeFactor+ r * lambda(i, xt, yt) * lambda(j, xt, yt) * volumeFactor;
             });
	 }}}
//----------------compMatrixEnd----------------
