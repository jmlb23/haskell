ifEvenInc n = if even n
              then n + 1
              else n

ifEvenDouble n = if even n
                 then n * 2
                 else n

ifEvenSquare n = if even n
                 then n ^ 2
                 else n                 

--podemos abstraer o concepto e usar unha funcion como parametro

ifEven myFunction n = if even n
                      then myFunction n
                      else n

main = do
 print (ifEven (\x -> x + 1) 20)
 --nos ambitos locales para definir algo temos que usar let
 let quiz = \x -> x ^ 3
 print (ifEven quiz 20)
