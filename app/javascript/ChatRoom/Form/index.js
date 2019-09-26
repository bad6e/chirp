import React from 'react'
import Button from 'react-bootstrap/Button'
import Form from 'react-bootstrap/Form'

import { API_ROOT, HEADERS } from '../../constants'

class NewMessageForm extends React.Component {
  state = { content: '' }

  handleOnChange = (e) => {
    const { target: { value } } = e
    this.setState({ content: value })
  }

  handleOnSubmit = (e) => {
    e.preventDefault()

    const { chatRoomId, currentUser: { id: userId } } = this.props
    const { content } = this.state

    const body = {
      content,
      chatRoomId,
      userId,
    }

    fetch(`${API_ROOT}/messages`, {
      method: 'POST',
      headers: HEADERS,
      body: JSON.stringify(body),
    })

    this.setState({ content: '' })
  }

  render = () => {
    const { content } = this.state

    return (
      <Form className="my-5" onSubmit={this.handleOnSubmit}>
        <Form.Group controlId="formNewMessage">
          <Form.Label>New Message</Form.Label>
          <Form.Control
            onChange={this.handleOnChange}
            placeholder="Type message here"
            type="text"
            value={content}
            />
        </Form.Group>
        <Button variant="primary" type="submit">
          Submit
        </Button>
      </Form>
    )
  }
}

export default NewMessageForm
