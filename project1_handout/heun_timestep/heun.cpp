#include <Eigen/Core>
#include <vector>
#include <iostream>
#include "writer.hpp"
#include <cmath>
/// Uses the Heun's method to compute u from time 0 to time T 
/// for the ODE $u'=e^{-2t}-2u$
///
/// @param[out] u at the end of the call (solution at all time steps)
/// @param[out] time contains the time levels
/// @param[in] u0 the initial data
/// @param[in] dt the step size
/// @param[in] T the final time up to which to compute the solution.
///

void Heun(std::vector<double> & u, std::vector<double> & time,
          const double & u0, double dt, double T) {
    const unsigned int nsteps = ceil(T/dt);
// (write your solution here)
    std::vector<double> time_an(nsteps + 1);
    std::vector<double> u_an(nsteps + 1);

    //Set the IC
    u_an.at(0) = u0;
    time_an.at(0) = 0;
    
    for(unsigned int i = 0; i < nsteps; i++){
	    double Y1;
	    double Y2;
    	    time_an.at(i+1) = time_an.at(i) + dt; //Forward one unit in time
	     
	    //Y1 = f(t(n), u(n))
	    //Y2 = f(t(n+1), u(n) + dt * Y1)
	    
	    Y1 = exp(-2 * time_an.at(i)) - 2 * u_an.at(i);
	    Y2 = exp(-2 * time_an.at(i+1)) - 2 * (u_an.at(i) + dt * Y1);
	    u_an.at(i+1) = u_an.at(i) + dt * (Y1 + Y2) / 2.0; 
	    //std::cout << "t: "<< time_an.at(i) << "  Y1: " << Y1 << "  Y2: " << Y2 << "  U_an: " << u_an.at(i) << std::endl;
    
    }

    u = u_an;
    time = time_an;

}


int main(int argc, char** argv) {

    double T = 10.0;

    double dt = 0.2;

    // To make some plotting easier, we take the dt parameter in as an optional
    // parameter.
    if (argc == 2) {
        dt = atof(argv[1]);
    }

    const double u0 = 0.;
    std::vector<double> time;
    std::vector<double> u;
    Heun(u,time,u0,dt,T);

    writeToFile("solution.txt", u);
    writeToFile("time.txt",time);

    return 0;
}
