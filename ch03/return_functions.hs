addressLetter name location = nameText ++ " - " ++ location
 where nameText = (fst name) ++ " " ++ (snd name)

-- valemonos de que as cadeas son comparadas caracter a caracter
sfOffice name = if nameText < "L"
 then nameText ++ " - PO Box 1010 - San Francisco, CA, 94109"
 else nameText ++ " - PO Box 1010 - San Francisco, CA, 94109"
 where nameText = (fst name) ++ " " ++ (snd name)

nyOffice name = nameText  ++ " : PO Box 1010 - New York, NY, 10013"
 where nameText = (fst name) ++ " " ++ (snd name)

renoOffice name = nameText ++ " - PO Box - Reno, NV, 89523"
 where nameText = (snd name)

--funcion que fai a labor de factoria
--o case é parecido o match de scala
getLocalFunctions location = case location of 
 "ny" -> nyOffice --aqui non a chamamos so pasamos a funcion en si para ser usada, é como se fose unha referencia a funcion
                  --que depois podemos usar coma a mesma funcion igual que os delgates de c#
                  --ou simplemente é do tipo funcion que toma x valor e retorna x valor
                  --tament esta relacionado coa aplicacion parcial de scala
                  --podemos pasar un parametro e outro non e reciviremos unha funcion cun parametro aplicado
                  --e outro por aplicar
 "sf" -> sfOffice
 "reno" -> renoOffice
 _ -> (\name -> (fst name) ++ " " ++ (snd name)) -- no caso de no haber coincidencias usamos un ward

--addressLetterFactory name location = (getLocalFunctions location) name 
addressLetterFactory name location = funcionFactory name --usamos a funcion recivida 
 where funcionFactory = (getLocalFunctions location) -- pasamos un parametro a unha funcion que devolvera unha funcion ou outra


