import numpy
import pylab
errors = numpy.loadtxt('build/E.txt')
numberOfIntervals = numpy.loadtxt('build/N.txt')

pylab.loglog(numberOfIntervals, errors, '-*')
pylab.title('Error plot for ex. 0.1d)')
pylab.xlabel('n')
pylab.ylabel('|I(f)-I_n(f)|')
pylab.grid('on')
pylab.show()
