port module Main exposing (..)

import Json.Decode exposing (Value)

port count : Int -> Cmd msg

port onIncrease : (Value -> msg) -> Sub msg

type Msg
    = Increase

subscriptions model =
    onIncrease <| always Increase

update msg model =
    case msg of
        Increase ->
            let
                newCount =
                    model.count + 1
            in
                ( { model | count = newCount }, count newCount )

type alias Model =
    { count : Int }

init : Model -> ( Model, Cmd Msg )
init flags =
    ( flags, Cmd.none )

main =
    Platform.programWithFlags
        { init = init
        , update = update
        , subscriptions = subscriptions
        }
