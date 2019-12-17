import React from 'react'
import Col from 'react-bootstrap/Col'
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import ListGroup from 'react-bootstrap/ListGroup'

import { API_ROOT } from '../constants'

class Chirps extends React.Component {
  state = { chirps: [] }

  componentDidMount = () => {
    fetch(`${API_ROOT}/chirps`)
      .then(res => res.json())
      .then(data => this.setState({ chirps: data.chirps }))
  }

  render() {
    const { chirps } = this.state

    return (
      <Container className="mt-5">
        <Row>
          <Col md={12}>
            <h1>Chirps</h1>
            <hr />
            <ListGroup>
              {chirps.map((chirp) => {
                return (
                  <ListGroup.Item>
                    {chirp.id}
                    {' '}
                    --
                    {' '}
                    {chirp.text}
                  </ListGroup.Item>
                )
              })}
            </ListGroup>
          </Col>
        </Row>
      </Container>
    )
  }
}

export default Chirps
