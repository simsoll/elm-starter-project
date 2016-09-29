module Posts.Update exposing (..)

import Navigation
import Posts.Messages exposing (Msg(..))
import Posts.Models exposing (Post, PostId)

update : Msg -> List Post -> ( List Post, Cmd Msg )
update message posts =
    case message of
        ShowPosts ->
            ( posts, Navigation.newUrl "posts" )

        ShowPost id ->
            ( posts, Navigation.newUrl ("post/" ++ (toString id)) )