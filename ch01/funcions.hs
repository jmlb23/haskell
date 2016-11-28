inc :: Int -> Int
double :: Int -> Int 
square :: Int -> Int

game :: Int -> Int


inc x = x + 1

double x = doblar
 where doblar = x + x
square x = operacion
 where operacion = x * x

game number = if number `mod` 2 == 0 then
 number - 2
 else 3 * number + 1
-- o main esperase que devolva un IO() 
main = do
 print (inc 5)
 print (double 5)
 print (square 5)
 print (game 5)
