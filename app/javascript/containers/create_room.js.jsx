import React, {Component} from 'react'

class CreateRoom extends Component {
    constructor() {
        super()
        this.handleSubmit = this.handleSubmit.bind(this)
    }
    handleSubmit() {
        console.log(this.refs.number.value)

        fetch('/api/v1/rooms',{
            method: 'POST',
            headers: {"Content-Type": "application/vnd.api+json", "Accept":"application/vnd.api+json"},
            body: JSON.stringify({ data: {type: 'rooms', attributes: {number: this.refs.number.value}} })
        })
        .then(resp=>resp.json())
        .then(json=>{
            this.setState({rooms:json.data})
        })
    }
    render(){
        return (
            <div>
                <input type="text" ref="number" placeholder="Room Number"/>
                <input type="text" ref="maintainence_required" placeholder="Maintanence"/>
                <input type="text" ref="occupancy_status" placeholder="Occupancy"/>
                <button onClick={this.handleSubmit}> Submit </button>
            </div>
        )
    }
}

export default CreateRoom