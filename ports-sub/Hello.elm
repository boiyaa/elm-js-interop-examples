port module Main exposing (..)

import Html

init : String -> ( String, Cmd msg )
init flags =
    (flags, Cmd.none)

port newText : (String -> msg) -> Sub msg

type Msg
    = ReceiveText String

subscriptions model =
    newText ReceiveText

update msg model =
    case msg of
        ReceiveText newModel ->
            (newModel, Cmd.none)

view model =
    Html.text model

main =
    Html.programWithFlags
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
