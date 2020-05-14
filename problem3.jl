
n = 600851475143;
d = 2;
largestPrimeFactor = 0;

while n != 1
    if n % d == 0
        global n = n / d
        largestPrimeFactor = d
        println(largestPrimeFactor)
    else
        if d == 2
            global d += 1
        else
            global d += 2
        end
    end
end

# largestPrimeFactor
