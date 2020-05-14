
largest3digitNumber = 999
numbersUpTo999 = range(1, 999, step=1)

cart = Base.product(numbersUpTo999, numbersUpTo999)
products = map((x,y) -> x*y, cart)
palindromes = filter(x -> string(x) == reverse(string(x)), products)

max(palindromes)
