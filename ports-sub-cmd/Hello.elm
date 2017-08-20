port module Main exposing (..)

import Html

port onStateChange : String -> Cmd msg

port newState : (String -> msg) -> Sub msg

type Msg
    = ReceiveNewModel String

subscriptions model =
    newState ReceiveNewModel

update msg model =
    case msg of
        ReceiveNewModel newModel ->
            (newModel, onStateChange newModel)

init : String -> ( String, Cmd msg )
init flags =
    (flags, onStateChange flags)

view model =
    Html.text model

main =
    Html.programWithFlags
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
