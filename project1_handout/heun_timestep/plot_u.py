from numpy import *
import matplotlib
import matplotlib.pyplot as plt

u = loadtxt('build/solution.txt')
t = loadtxt('build/time.txt')

plt.plot(t, u, label='$u(t)$')
plt.xlabel('$t$')
plt.ylabel('$u(t)$')
plt.legend(loc="best")
plt.show()
