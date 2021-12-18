#include <iostream>
#include <Eigen/Dense>
#include "writer.hpp"
#include <Eigen/LU>

int main(int argc, char **argv){

  // Declare Eigen vector type for doubles
  using vector_t =  Eigen::VectorXd ;
  
  // Initialize Eigen vector containing body weight in Kg(X)
  vector_t X(15);
  X << 2 , 2.2 , 2.4 , 2.2 , 2.6 , 2.2 , 2.4 , 2.4 , 2.5 , 2.7 , 2.6 , 2.2 ,
       2.5 , 2.5 , 2.5 ;

  // Initialize Eigen vector containing heart weight in g (Y)
  vector_t Y(15);
  Y << 6.5 , 7.2 , 7.3 , 7.6 , 7.7 , 7.9 , 7.9 , 7.9 , 7.9 , 8.0 , 8.3, 8.5 ,
       8.6 , 8.8 , 8.8;

  // TODO: Initialize Eigen Matrix A
  Eigen::MatrixXd A(15,2);
  Eigen::VectorXd Ones(15);
  Ones.fill(1);
	A << Ones, X;
  // Create LHS = A'*A
  Eigen::MatrixXd LHS = A.transpose()*A;
  // TODO: Create RHS = A'*Y
	vector_t RHS = A.transpose()*Y;
  	Eigen::Vector2d sol;
  // TODO: Solve system and output coefficients b_0 and b_1
// (write your solution here)
	sol = LHS.lu().solve(RHS);
	
  // Convert the Eigen::Vector2d to std::vector for use with writer
  std::vector<double> sol_vec(sol.data(), sol.data() + sol.size());
  writeToFile("coeffs_regression.txt", sol_vec);
  return 0;
}
