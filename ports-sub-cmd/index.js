import Elm from "./Hello"

const app = Elm.Main.fullscreen("Yes!")

app.ports.onStateChange.subscribe(state =>
  setTimeout(() => app.ports.newState.send(state + " Yes!"), 1000)
)
