{-# LANGUAGE OverloadedStrings #-}
module Bot(
    getBotData
) where

import System.Directory
import           System.IO                      ( IOMode(ReadMode)
                                                , hGetLine
                                                , withFile
                                                )
import           Data.List.Split                ( splitOn )

dataFilePath :: IO FilePath
dataFilePath = (++) <$> getCurrentDirectory <*> pure "/data/BotData.txt"

getBotData :: IO Bot
getBotData = do
    filePath <- dataFilePath
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