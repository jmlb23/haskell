--reverse implementada

myReverse :: [a] -> [a]

myReverse [] = []
myReverse xs = last xs : myReverse (init xs)

--fibo


