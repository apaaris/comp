#include "midpoint.hpp"

double midpoint_rule(double a, double b, int n, FunctionPointer f) {
// (write your solution here)

	double sum = 0.0;
	for(int i = 0; i < n; ++i){
	sum += f(a+(i+0.5)*(b-a)/n);
	}

return (b-a)/n*sum;
}
