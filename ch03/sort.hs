import Data.List -- sentenza para importar modulos

--tuple
--as tuplas como en python ou scala son inmutables e poden conter tipos diferentes
author = ("Will" , "Kurt")
names = [("Ian", "Curtis"),
         ("manuel", "manquiña"),
         ("robert", "de Niro")]
main = do
 print (fst author) --a diferencia de scala temos a funcion fst snd etc para aceder os elementos
 print (sort names)
 print (sortBy (\x y -> if (snd x) > (snd y) 
               then GT 
               else 
                if (snd x) > (snd y) 
                then LT 
                else EQ) names )
