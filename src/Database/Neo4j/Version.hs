{-# LANGUAGE OverloadedStrings  #-}

module Database.Neo4j.Version where

import Data.Version

import Database.Neo4j.Http
import Database.Neo4j.Types

getDatabaseVersion :: Neo4j Neo4jVersion
getDatabaseVersion = Neo4j $ \conn -> httpRetrieveSure conn "/db/data"
