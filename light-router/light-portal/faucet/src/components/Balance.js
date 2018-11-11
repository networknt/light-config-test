import React, {Component, Fragment} from 'react';
import TextField from '@material-ui/core/TextField';
import Button from '@material-ui/core/Button';
import Result from './Result';

class Balance extends Component {


    render() {
        return (
            <Fragment>
                <form>
                    <TextField
                        label="Address"
                        value={this.props.address}
                        onChange={this.props.handleChange('address')}
                        margin="normal"
                        style={{width: 370}}
                    />
                </form>
                <Button color="primary" variant="contained" onClick={this.props.getBalance}>
                    Balance
                </Button>
                <Result currencyMap={this.props.currencyMap} />
            </Fragment>
        )
    }
}

export default Balance;