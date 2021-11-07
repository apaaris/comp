#include "writer.hpp"
#include <Eigen/Core>
#include <Eigen/LU>
#include <vector>
#include <iostream>
#include <chrono>
#include "coronaoutbreak.hpp"
#include "dirksolver.hpp"
#include <assert.h>

//----------------mainBegin----------------
int main(int argc, char** argv) {

    double T = 101;
    CoronaOutbreak outbreak(0,0,0,0,0,0.03,0.02,0,0);
    std::vector<double> u0(5);
    u0[0] = 500;
    u0[1] = 0;
    u0[2] = 0;
    u0[3] = 0;
    u0[4] = 0;
    
    // Compute the exact solution for the parameters above
    std::vector<double> exact = outbreak.computeExactNoCorona(T, u0[0]);

    // Initialize solver object for the parameters above
    DIRKSolver dirkSolver(outbreak);

    int minExp = 0;
    int maxExp = 8;
    int countExponents = maxExp - minExp + 1;
    std::vector<double> numbers(countExponents);
    std::vector<double> walltimes(countExponents);
    std::vector<double> errors(countExponents);

	// (write your solution here)
    std::vector<std::vector<double>> u(5);
    
    for(unsigned int i = 0; i < countExponents; ++i){
    
    	auto start = std::chrono::high_resolution_clock::now();

    	double n = 200 * pow(2,i);

    	if (argc > 1){
    		n = int(atof(argv[1]));
    	}
    
    	for(int k = 0; k < u.size(); ++k){
    		u.at(k).resize(n + 1, 0);
    		u.at(k).at(0) = u0.at(k);
    	}
    	std::vector<double> time(n+1, 0);
    	dirkSolver.solve(u, time, T, n);
    	for(unsigned int j = 0; j < u.size(); ++j){
    		errors.at(i) += abs(u.at(j).back() - exact.at(j));
    	}
    	numbers.at(i) = n;
    	auto end = std::chrono::high_resolution_clock::now();
    	std::chrono::duration<double> diff  = end - start;
    	walltimes.at(i) = diff.count();
	}

    writeToFile("numbers.txt", numbers);
    writeToFile("errors.txt", errors);
    writeToFile("walltimes.txt", walltimes);

}
//----------------mainEnd----------------
