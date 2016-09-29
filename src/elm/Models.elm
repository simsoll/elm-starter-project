module Models exposing (..)

import Players.Models exposing (Player)
import Routing


type alias Model =
    { 
        blogs : List Blog,
        route : Routing.Route
    }


initialModel : Routing.Route -> Model
initialModel route =
    { 
        blogs = [],
        route = route
    }