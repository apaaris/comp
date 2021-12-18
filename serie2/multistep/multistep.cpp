#include <writer.hpp>
#include <Eigen/Core>
#include <Eigen/LU>
#include <vector>
#include <iostream>
#include <cmath>

///
/// Computes N iterations of Adam-Bashforth 2
/// @param[out] y will contain the values of y (not y'!) at
///             the end. should have length N+1
/// @param[out] time will contain the times at the end, should have length N+1
/// @param[in] T the end time
/// @param[in] N the number of iterations to perform
/// @param[in] y0 the initial y value y(0)
/// @param[in] dydt0 the initial value y'(0)
///
//----------------AB2Begin----------------
void adamBashforth2(std::vector<double>& y, std::vector<double>& time,
    double T, int N, double y0, double dydt0) {
    const double dt = T / N;
    // First compute u_1 using FE
    // Compute Adam-Bashforth for u_2, u_3, ...

// (write your solution here)
}
//----------------AB2End----------------

double exactSolution(double t) {
// (write your solution here)
return 0; //remove when implemented
}

int main(int, char**) {
    double T = 1;

    std::vector<double> errors;
    std::vector<double> resolutions;
    double error = 0;
    for (int k = 5; k <= 12; ++k) {
        int N = 1 << k;
        std::vector<double> y(N + 1);
        std::vector<double> time(N + 1, 0);

        double y0 = 1;
        double dydt0 = 2;

        adamBashforth2(y, time, T, N, y0, dydt0);

	// Compute error
// (write your solution here)
        errors.push_back(error);
        resolutions.push_back(N);

        if (k == 12) {
            writeToFile("y.txt", y);
            writeToFile("time.txt", time);
        }
    }
    writeToFile("errors_ab2.txt", errors);
    writeToFile("resolutions.txt", resolutions);
}




