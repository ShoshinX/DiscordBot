{-# LANGUAGE OverloadedStrings #-}
module Main where
import Server (app)
import Network.Wai.Handler.Warp (run)
main :: IO ()
main = do
    putStrLn $ "http://localhost:8080/"
    run 8080 app

