
import React from 'react'
import ReactDOM from 'react-dom'
import ChatRoom from '../ChatRoom'

const App = (props) => {
  const { chatRoomId, currentUser } = props

  return (
    <>
      <ChatRoom
        chatRoomId={chatRoomId}
        currentUser={currentUser}
      />
    </>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('chat-room-base')
  const chatRoomId = JSON.parse(node.getAttribute('data-chat-room-id'))
  const currentUser = JSON.parse(node.getAttribute('data-current-user'))

  ReactDOM.render(
    <App
      currentUser={currentUser}
      chatRoomId={chatRoomId} />,
    document.body.appendChild(document.createElement('div')),
  )
})
