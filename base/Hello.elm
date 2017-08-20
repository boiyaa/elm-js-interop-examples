import Html

init =
    ("Hello, World!", Cmd.none)

view model =
    Html.text model

main =
    Html.program
        { init = init
        , update = \msg model -> (model, Cmd.none)
        , subscriptions = \model -> Sub.none
        , view = view
        }
