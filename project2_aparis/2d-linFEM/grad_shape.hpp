#pragma once
#include <Eigen/Core>
#include <iostream>


//! The gradient of the shape function (on the reference element)
//! 
//! We have three shape functions
//!
//! @param i integer between 0 and 2 (inclusive). Decides which shape function to return.
//! @param x x coordinate in the reference element.
//! @param y y coordinate in the reference element.
inline Eigen::Vector2d gradientLambda(const int i, double x, double y) {
// (write your solution here)
	//Selects shape function depending on i
	switch(i){
		case 0:
			return Eigen::Vector2d(-1,-1); 

		case 1:	
			return Eigen::Vector2d(1,0);
		case 2:
			return Eigen::Vector2d(0,1);
		default:
			return Eigen::Vector2d(0,0);
	}
}
