module SendRequests where

import Network.HTTP.Simple

requestInit :: String
requestInit = "POST "

requestSkeleton :: String
requestSkeleton = "Kappa"