getRequestUrl host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

getHostRequestBuilder host = (\apiKey resource id ->
                               getRequestUrl host apiKey resource id)

exampleBuilder = getHostRequestBuilder "http://localhost"

genApiRequestBuilder hostBuilder apiKey = (\resource id ->
                                           hostBuilder apiKey resource id)

getResourceRequestBuilder resource = (\host apiKey id ->
                                       getRequestUrl host apiKey resource id )
exampleResourceBuilder = getResourceRequestBuilder "cousa"
genApiRequestBuilderResource resourceBuilder apiKey = (\host id ->
                                                        resourceBuilder host apiKey id) 
