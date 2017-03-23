import React, {Component} from 'react'

class CreateRoom extends Component {
    render(){
        return (
            <div>
                <form>
                    <input type="text" placeholder="Room Number"/>
                    <input type="submit"/>
                </form>
            </div>
        )
    }
}

export default CreateRoom