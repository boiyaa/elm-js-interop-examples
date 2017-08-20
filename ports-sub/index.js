import Elm from "./Hello"

const app = Elm.Main.fullscreen("Hello, World!")

setTimeout(() => app.ports.newText.send("Done!"), 3000)
