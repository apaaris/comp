int main() {
double T = 10.0;
std::vector<double> dt(8);
std::vector<double> error(8);
const double u0 = 0.;
for(int i=0; i<8; i++) {
dt[i]=std::pow(0.5,i);
std::vector<double> time;
std::vector<double> u;
SSPRK3(u,time,u0,dt[i],T);
double uex = T*std::exp(-2.*T);
error[i]=std::abs(u.back()-uex);
}
writeToFile("dt.txt", dt);
writeToFile("error.txt", error);
return 0;
}
