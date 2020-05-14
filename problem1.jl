#=
problem1:
- Julia version: 1.4.1
- Author: jamesprince
- Date: 2020-05-12
=#

sum(filter(a -> a % 3 == 0 || a % 5 == 0, x))
