module Posts.Messages exposing (..)

import Posts.Models exposing (PostId, Post)

type Msg
    = ShowPosts
    | ShowPost PostId    