module Posts.Models exposing (..)


type alias PostId =
    Int


type alias Post =
    { 
        id : PostId,
        author : String,
        categories: List String,
        contentUrl : String
    }


new : Post
new =
    { 
        id = 0,
        author = "",
        categories = [""],
        contentUrl = ""
    }