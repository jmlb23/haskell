repeatMyVersion :: Int -> [Int]
repeatMyVersion number = cycle [number] 

subSeq :: Int -> Int -> [a] -> [a]
subSeq fromIndex toIndex list 
                              | fromIndex == toIndex = [list !! fromIndex]
			      | fromIndex < toIndex = fstElement : restOfElements
                              | otherwise = list
                              where fstElement = list !! fromIndex
                                    restOfElements = (subSeq (fromIndex + 1) toIndex list)
inFirstHalf list element
                 | isEven = isPresentEven                  
                 | otherwise = isPresent
		where isEven = ((length list) `mod` 2 == 0)
                      isPresentEven = elem element (fst (splitAt ((length list) - 1) list))
                      isPresent = elem element (fst (splitAt (length list) list))

