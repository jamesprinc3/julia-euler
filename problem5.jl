
maxN = 20

function primeFactors(n)
    println(n)
    pfs = []
    d = 2
    while n != 1
        if n % d == 0
            n = n/d
            append!(pfs, d)
        else
            d += 1
        end
    end
    pfs
end

r = range(1, maxN, step=1)
pfs = map(x -> primeFactors(x), r)
# TODO: this is very ugly, fix it!
# Function chaing would be useful, but here is a 6 year long discussion about it:
#   https://github.com/JuliaLang/julia/issues/5571
maximalPfs = map(x -> x^maximum(map(y -> length(filter(z -> z == x, y)), pfs)), r)
# uniquePfs = Set(pfs)

prod(maximalPfs)
