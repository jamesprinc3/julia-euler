
using Pkg
Pkg.add("Lazy")
using Lazy

fibs = @lazy 0:1:(fibs + tail(fibs));

fibsUnder4Mil = takewhile(x -> x < 4000000, fibs)
evenFibsUnder4Mil = filter(x -> x % 2 == 0,  fibsUnder4Mil)
result = sum(evenFibsUnder4Mil)
