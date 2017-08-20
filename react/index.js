import React from "react"
import { render } from "react-dom"
import { Provider, withElm } from "react-elm-state"
import Elm from "./Main"

const Counter = ({ count, onIncrease }) =>
  <div>
    <span>{count}</span>
    <button onClick={onIncrease}>+</button>
  </div>

const ConnectedCounter = withElm(["count", "onIncrease"])(Counter)

render(
  <Provider module={Elm.Main} flags={{ count: 0 }}>
    <ConnectedCounter />
  </Provider>,
  document.body.appendChild(document.createElement('div'))
)
