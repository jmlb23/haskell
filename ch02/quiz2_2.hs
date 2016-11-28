doubleDouble x = do 
 let func = (\y -> y  * 2) 
 (func x) * 2

main = do
 print (doubleDouble 5)


