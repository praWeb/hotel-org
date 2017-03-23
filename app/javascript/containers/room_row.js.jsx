import React, {Component} from 'react'

class RoomRow extends Component {
    render() {
        return (
            <li>
                {this.props.number}
            </li>
        )
    }
}

export default RoomRow