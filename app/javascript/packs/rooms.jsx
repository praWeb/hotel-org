// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.


import React from 'react'
import ReactDOM from 'react-dom'
import CreateRoom from '../containers/create_room.js.jsx'
import ListRooms from '../containers/list_rooms.js.jsx'

const Rooms = props => (
    <section>
      <div><CreateRoom /></div>
      <p> "Rooms created so far:"</p>
      <div><ListRooms /></div>
    </section>
)

Rooms.defaultProps = {
  name: 'PraAn'
}

Rooms.propTypes = {
  name: React.PropTypes.string
}


document.addEventListener('DOMContentLoaded', () => {
    ReactDOM.render(
        <Rooms />,
        document.body.appendChild(document.createElement('div')),
    )
})
