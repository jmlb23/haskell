--imaxinemonos que queremos recrear a funcion map

myMap :: (a->b) -> [a] -> [b]

myMap func lista
               | null lista = [] --caso base
               | otherwise = (func elemento_cabeza) : myMap func elementos_cola--caso co que iteramos
               where 
               elemento_cabeza = head lista
               elementos_cola = tail lista

myFilter :: (a -> Bool) -> [a] -> [a]

{- ollo que colle a primeira condicion que se cumpla coidado o orde dos casos importa
 -}
myFilter predicateFunction list
                                | null list = []
                                | predicateFunction cabeza = cabeza : myFilter (predicateFunction) cola
                                | not (predicateFunction cabeza) = myFilter (predicateFunction) cola
                                where
                                cabeza = head list
                                cola = tail list


myFold funcReduce elementoNeutro lista
                                        | null lista = elementoNeutro
                                        | otherwise =  myFold (funcReduce) (funcReduce elemento1 elementoNeutro) cola
                                        where
                                        elemento1 = head lista
                                        cola = tail lista 


myFoldR funcReduce elementoNeutro lista
                                        | null lista = elementoNeutro
                                        | otherwise =  myFoldR (funcReduce) (funcReduce elementoUltimo elementoNeutro) cabeza
                                        where
                                        elementoUltimo = last lista
                                        cabeza = init lista 

