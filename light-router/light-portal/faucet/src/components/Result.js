import React, {Component} from 'react';
class Result extends Component {
    render() {
        if(this.props.currencyMap) {
            return (<div><pre>{JSON.stringify(this.props.currencyMap, null, 2) }</pre></div>)
        } else {
            return (<div></div>)
        }
    }
}

export default Result;