{-# LANGUAGE OverloadedStrings #-}
module Server
    ( app
    )where
import Network.Wai
import Network.HTTP.Types
import Bot (getBotData,Bot)
import qualified Data.Text as T

app :: Application
app request respond = respond $ case T.unwords $ pathInfo request of 
    "Discord authorise" -> setupBot
    _ -> index

setupBot :: IO Bot
setupBot = getBotData

index :: Response
index = responseLBS
    status404
    [("Content-Type", "text/plain")]
    "404 - Not Found"