module Posts.Edit exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, value, href)
import Html.Events exposing (onClick)
import Players.Models exposing (..)
import Players.Messages exposing (..)


view : Player -> Html Msg
view model =
    div []
        [ form model ]


-- nav : Player -> Html Msg
-- nav model =
--     div [ class "clearfix mb2 white bg-black p1" ]
--         [ listBtn ]


form : Player -> Html Msg
form player =
    div [ class "m3" ]
        [ 
            h1 [] [ text post.author ]
        ]

listBtn : Html Msg
listBtn =
    button
        [ class "btn regular"
        , onClick ShowPlayers
        ]
        [ i [ class "fa fa-chevron-left mr1" ] [], text "List" ]        