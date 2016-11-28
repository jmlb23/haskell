main :: IO()

--funcion que recolle o nome do receptor
toPart recipient = "Dear " ++ recipient ++ ",\n"

--funcion que recolle o titulo
bodyPart title = "Thanks for selling " ++ title ++ ".\n"

--funcion que recolle o destinatario
fromPart  author = "Thanks, \n" ++ author

--funcion que compon o string do mail
createEmail recipient title author = (toPart recipient) ++ (bodyPart title) ++ (fromPart author)

main = do
 print "Who is the email for"
 recipient <- getLine
 print "What is on the title"
 title <- getLine
 print "Who is the author"
 author <- getLine
 print (createEmail recipient title author)
