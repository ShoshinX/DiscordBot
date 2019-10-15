{-# LANGUAGE OverloadedStrings #-}
module GetDiscordAuthToken
(
    getDiscordAuthToken
) where
import Bot(getBotData,clientId)
import qualified Data.ByteString.Lazy.Char8 as L8
import Network.HTTP.Simple
-- get authorization grant
grantUrl :: String
grantUrl = "https://discordapp.com/api/oauth2/authorize"

getDiscordAuthToken :: IO ()
getDiscordAuthToken = do 
    myBot <- getBotData
    url <- pure $ mconcat [grantUrl
        , "?response_type=code&client_id=", clientId myBot 
        , "&redirect_uri=http://zaimhibban.com/"
        , "&scope=identify%20bot"
        , "&prompt=none"
        ]
    request <- parseRequest url
    response <- httpLBS request
    L8.putStrLn $ getResponseBody response
    putStrLn url
-- get token