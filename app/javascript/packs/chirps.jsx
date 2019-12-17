import React from 'react'
import ReactDOM from 'react-dom'
import Chirps from '../Chirps'

function App() {
  return (
    <>
      <Chirps />
    </>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  )
})
