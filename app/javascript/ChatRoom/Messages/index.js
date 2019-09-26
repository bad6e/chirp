import React from 'react'
import PropTypes from 'prop-types'
import { isEmpty } from 'lodash'
import ListGroup from 'react-bootstrap/ListGroup'
import Image from 'react-bootstrap/Image'

import { byCreatedAt, formatTime } from '../../utils'

const Messages = ({ messages }) => {
  if (isEmpty(messages)) return <span />

  const sortMessages = () => {
    return messages.sort(byCreatedAt(messages))
  }

  const renderSortedMessages = () => {
    return sortMessages(messages).map(message => {
      return (
        <ListGroup.Item key={message.id}>
          <Image
            style={{ height: 30 }}
            className="mr-1"
            src={message.userProfileUrl}
            roundedCircle />
          <b>{message.name}</b>
          {formatTime(message.createdAt)}
          <br />
          <div className="mt-3">
            {message.content}
          </div>
        </ListGroup.Item>
      )
    })
  }

  return (
    <ListGroup>
      {renderSortedMessages()}
    </ListGroup>
  )
}

Messages.propTypes = { messages: PropTypes.array }
Messages.defaultProps = { messages: [] }

export default Messages
