-- length
mylength :: [a] -> Int

mylength [] = 0
mylength [_] = 1
mylength xs = 1 + length (init xs)

-- take

mTake :: Int -> [a] -> [a]
mTake _ [] = []
mTake 0 _ = []
mTake y x = (head x) : (mTake (y - 1) (tail x))

--cycle 


myCycle xs = xs ++ (myCycle xs)

--ver que se non optimizamos a recursividade
--acaba en stack overflow

--ackerman function
{-If m = 0, then return n + 1
 -
 - If n = 0, then A(m-1,1)
 -
 - If both m != 0 and n !=0 then A(m-1,A(m,n-1))
 -}
ackerman 0 n = n + 1
ackerman m 0 = ackerman (m-1) 1
ackerman m n = ackerman (m-1) (ackerman m (n-1))

--collatz conjeture
collatz :: Int -> Int
collatz n
        | n == 1 = 1
        | even n = 1 + collatz (n `div` 2)
        | otherwise = 1 + collatz (n * 3 + 1)
