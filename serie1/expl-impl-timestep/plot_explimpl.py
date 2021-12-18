from numpy import loadtxt, exp, sqrt, sin, cos
import pylab as plt

time_expl=loadtxt("build/time_expl.txt");
pos_expl=loadtxt("build/position_expl.txt");
v_expl=loadtxt("build/velocity_expl.txt");
en_expl=loadtxt("build/energy_expl.txt");
time_impl=loadtxt("build/time_impl.txt");
pos_impl=loadtxt("build/position_impl.txt");
v_impl=loadtxt("build/velocity_impl.txt");
en_impl=loadtxt("build/energy_impl.txt");

zeta=0.2;
freq = sqrt(1-zeta**2);
exact_pos = exp(-zeta*time_impl) * (zeta/freq*sin(freq*time_impl)+cos(freq*time_impl));

plt.plot(time_expl,pos_expl,'b', label='explicit')
plt.plot(time_impl,pos_impl,'r', label='implicit')
plt.plot(time_impl,exact_pos,'g', label='exact')
plt.title('Position')
plt.legend()
plt.xlabel('t')
plt.ylabel('x(t)')
plt.show()

plt.plot(time_expl,v_expl, label='explicit')
plt.plot(time_impl,v_impl,'r', label='implicit')
plt.title('Velocity')
plt.legend()
plt.xlabel('t')
plt.ylabel('v(t)')
plt.show()

plt.plot(time_expl,en_expl, label='explicit')
plt.plot(time_impl,en_impl,'r', label='implicit')
plt.title('Kinetic energy')
plt.legend()
plt.xlabel('t')
plt.ylabel('E(t)')
plt.show()
