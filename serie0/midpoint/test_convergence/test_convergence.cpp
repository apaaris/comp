#include "midpoint.hpp" // To use our library
#include "writer.hpp" // This is the output function to write to file

// We store our results in a vector
#include <vector>

// On some platforms we need to add this in order
// to get M_PI defined
#define _USE_MATH_DEFINES

// for our usual math functions and constants
#include <math.h>

// For printing to the terminal
#include <iostream>

double f(double x) {
    return sin(M_PI * x);
}


int main(int, char**) {
// (write your solution here)
	double I_c,I_e,e;
	I_e = 0.4461596415796983;
	std::vector<int> N;
	std::vector<double> E;
	unsigned int n;
	for(unsigned int k = 4; k < 12; ++k){
		n = std::pow(2,k);
		I_c = midpoint_rule(0.2,1.3,n,f);
		e  = std::abs(I_c - I_e);
		N.push_back(n);
		E.push_back(e);
		std::cout << "Error: " << e << " N: " << n << std::endl;
	}
	writeToFile("E.txt", E);
	writeToFile("N.txt", N);
    return e;
}
