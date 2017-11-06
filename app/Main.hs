{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
module Main where

import Yesod

data GraphApp = GraphApp

mkYesod "GraphApp" [parseRoutes|
  / HomeR GET
|]

instance Yesod GraphApp

getHomeR :: Handler Html
getHomeR = defaultLayout [whamlet|
  <h1> Hello Graphs!
  |]

main :: IO ()
main = warp 3000 GraphApp
