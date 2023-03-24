module Main exposing (..)

import Browser
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)

type alias Model =
    { isFlipped: Bool }

type Msg
    = Flip

main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }

init : Model
init =
    { isFlipped = True }

update : Msg -> Model -> Model
update msg model =
    case msg of
        Flip ->
            { model | isFlipped = not model.isFlipped }

label : Model -> String
label model =
    if model.isFlipped == True
        then "Question"
        else "Answer"

view : Model -> Html Msg
view model =
    div [class "md:container md:mx-auto px-4 py-4 flex justify-center items-center"] [
        div [
            class "h-80 min-h-fit w-full bg-cyan-200 border border-solid border-cyan-600 rounded-xl px-8 py-8 flex justify-center items-center",
            onClick Flip
        ] [
            text (label model)
        ]
    ]
