module Posts.List exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import Posts.Messages exposing (..)
import Posts.Models exposing (Post)


view : List Post -> Html Msg
view posts =
    div []
        [ 
            list posts
        ]


-- nav : List Player -> Html Msg
-- nav players =
--     div [ class "clearfix mb2 white bg-black" ]
--         [ div [ class "left p2" ] [ text "Players" ] ]


list : List Post -> Html Msg
list posts =
    div [ class "p2" ]
        [ table []
            [ thead []
                [ tr []
                    [ 
                        th [] [ text "Id" ],
                        th [] [ text "Author" ]
                    ]
                ]
            , tbody [] (List.map postRow posts)
            ]
        ]


postRow : Post -> Html Msg
postRow post =
    tr []
        [ 
            td [] [ text (toString post.id) ],
            td [] [ text post.author ]
        ]

showBtn : Post -> Html Msg
showBtn post =
    button
        [ class "btn regular"
        , onClick (ShowPost post.id)
        ]
        [ i [ class "fa fa-pencil mr1" ] [], text "Show" ]        