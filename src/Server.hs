{-# LANGUAGE OverloadedStrings #-}
module Server
    ( app
    )where
import Network.Wai
import Network.HTTP.Types
import Bot (getBotData)

app :: Application
app request respond = do
    putStrLn "I've done some IO here"
    respond $ responseLBS
        status200
        [("Content-Type", "text/plain")]
        "Hello, Web!"
