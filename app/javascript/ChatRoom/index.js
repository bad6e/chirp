import React from 'react'
import Col from 'react-bootstrap/Col'
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'

import ActionCable from 'actioncable'
import { API_ROOT, API_WEB_SOCKETS_ROOT, CHANNEL_ID } from '../constants'
import Messages from './Messages'
import NewMessageForm from './Form'

class ChatRoom extends React.Component {
  state = {
    messages: [],
    chatRoom: {},
  }

  componentDidMount = () => {
    const { chatRoomId } = this.props

    fetch(`${API_ROOT}/chat_rooms/${chatRoomId}`)
      .then(res => res.json())
      .then(data => this.setState(
        {
          chatRoom: data.chatRoom,
          messages: data.messages,
        }
      ))

    this.cable = ActionCable.createConsumer(API_WEB_SOCKETS_ROOT)
    this.cable.subscriptions.create({ channel: CHANNEL_ID, chat_room_id: chatRoomId }, {
      initialized: () => {
        console.log(`Initialized and connected to ${CHANNEL_ID}`)
      },
      received: (message) => {
        this.handleReceivedMessage(message)
      },
    })
  }

  componentDidUpdate() {
    this.scrollToBottom()
  }

  handleReceivedMessage = (message) => {
    const { messages } = this.state
    this.setState({ messages: [...messages, message] })
  }

  scrollToBottom = () => {
    this.messagesEnd.scrollIntoView({ behavior: 'smooth' })
  }

  render = () => {
    const { messages, chatRoom: { title } } = this.state
    const { chatRoomId, currentUser } = this.props

    return (
      <Container className="mt-5">
        <Row>
          <Col>
            <h2>
              Chat Room:
              {' '}
              {title}
            </h2>
            <h5>
              Logged in as
              {' '}
              {currentUser.name}
            </h5>
            <hr />
          </Col>
        </Row>
        <Row className="mt-3">
          <Col md={12}>
            <Messages messages={messages} />
            <NewMessageForm
              chatRoomId={chatRoomId}
              currentUser={currentUser}
            />
            <div style={{ float: 'left', clear: 'both' }}
              ref={(el) => { this.messagesEnd = el }} />
          </Col>
        </Row>
      </Container>
    )
  }
}

export default ChatRoom
