import Elm from "./Hello"

const app = Elm.Main.fullscreen("Hello, World!")

setTimeout(() => app.ports.newState.send("Done!"), 3000)
