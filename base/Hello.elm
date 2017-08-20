import Html

init =
    ("Hello, World!", Cmd.none)

view model =
    toString model |> Html.text

main =
    Html.program
        { init = init
        , update = \msg model -> (model, Cmd.none)
        , subscriptions = \model -> Sub.none
        , view = view
        }
