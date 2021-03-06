port module Main exposing (..)

import Html

port newState : (String -> msg) -> Sub msg

type Msg
    = ReceiveNewModel String

subscriptions model =
    newState ReceiveNewModel

update msg model =
    case msg of
        ReceiveNewModel newModel ->
            (newModel, Cmd.none)

init : String -> ( String, Cmd msg )
init flags =
    (flags, Cmd.none)

view model =
    Html.text model

main =
    Html.programWithFlags
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }
