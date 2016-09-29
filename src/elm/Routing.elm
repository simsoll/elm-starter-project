module Routing exposing (..)

import String
import Navigation
import UrlParser exposing (..)
import Posts.Models exposing (PostId)


type Route
    = HomeRoute
    | About
    | PostsRoute
    | PostRoute PostId
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ 
            format HomeRoute (s ""),
            format About (s "about"),
            format PostsRoute (s "posts"),
            format PostRoute (s "post" </> int)
        ]


hashParser : Navigation.Location -> Result String Route
hashParser location =
    location.hash
        |> String.dropLeft 1
        |> parse identity matchers


parser : Navigation.Parser (Result String Route)
parser =
    Navigation.makeParser hashParser


routeFromResult : Result String Route -> Route
routeFromResult result =
    case result of
        Ok route ->
            route

        Err string ->
            NotFoundRoute