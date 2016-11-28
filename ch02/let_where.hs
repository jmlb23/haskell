operacionComplexa x y = suma + resta
 --para definir varios where ten que estar una debaixo do outro
 where suma = x + y
       resta = x - y 

--co let facemos o mesmo que co where pero o principio e depois indicamos co in donde as usamos
opercionComplexaDous x y = let suma = x + y
                               resta = x - y
                           --ten que estar correctamente identado
                           in
                            suma + resta 
