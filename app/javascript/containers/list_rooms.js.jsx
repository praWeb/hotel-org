import React, {Component} from 'react'
import RoomRow from "../containers/room_row.js.jsx"

class ListRooms extends Component {
    render() {
        return (
            <ul>
                <RoomRow number="101" />
            </ul>
        )
    }
}

export default ListRooms