import Html

init : String -> ( String, Cmd msg )
init flags =
    (flags, Cmd.none)

view model =
    toString model |> Html.text

main =
    Html.programWithFlags
        { init = init
        , update = \msg model -> (model, Cmd.none)
        , subscriptions = \model -> Sub.none
        , view = view
        }
