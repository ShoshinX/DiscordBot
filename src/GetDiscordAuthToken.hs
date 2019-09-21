{-# LANGUAGE OverloadedStrings #-}
module GetDiscordAuthToken where

import           Data.List.Split                ( splitOn )
import System.Directory

dataFile :: FilePath
dataFile = "/data/BotData.txt"

getDataFilePath :: IO FilePath
getDataFilePath = (++) <$> getCurrentDirectory <*> pure dataFile

getBotData :: IO Bot
getBotData = do
    filePath <- getDataFilePath
    makeBot . words <$> readFile filePath

printBotDetails :: IO()
printBotDetails = do 
    bot <- getBotData
    putStrLn (clientId bot)
    putStrLn (clientSecret bot)

data Bot = Bot { 
    clientId :: String,
    clientSecret :: String
    } 

makeBot :: [String] -> Bot
makeBot xs = Bot (getNum (xs !! 0)) (getNum (xs !! 1))

getNum :: String -> String 
getNum s = (splitOn ":" s) !! 1
