import React, {Component, Fragment} from 'react';
import { withStyles } from '@material-ui/core/styles';
import TextField from '@material-ui/core/TextField';
import Button from '@material-ui/core/Button';
import FormControl from '@material-ui/core/FormControl';
import InputLabel from '@material-ui/core/InputLabel';
import Select from '@material-ui/core/Select';
import MenuItem from '@material-ui/core/MenuItem';
import FormHelperText from '@material-ui/core/FormHelperText';
import Input from '@material-ui/core/Input';
import TransactionList from './TransactionList';

const styles = theme => ({
    root: {
        display: 'flex',
        flexWrap: 'wrap',
    },
    formControl: {
        margin: theme.spacing.unit,
        minWidth: 120,
    },
    selectEmpty: {
        marginTop: theme.spacing.unit * 2,
    },
});

class Transaction extends Component {
    render() {
        const { classes } = this.props;
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
                    <pre/>
                    <FormControl className={classes.formControl}>
                        <InputLabel htmlFor="currency-helper">Currency</InputLabel>
                        <Select
                            value={this.props.currency}
                            onChange={this.props.handleChange('currency')}
                            input={<Input name="currency" id="currency-helper" />}
                        >
                            <MenuItem value={'taiji'}>TAIJI</MenuItem>
                        </Select>
                        <FormHelperText>Select the currency you want to get transactions</FormHelperText>
                    </FormControl>
                </form>
                <Button color="primary" variant="contained" onClick={this.props.getTransaction}>
                    Transaction
                </Button>
                <TransactionList address={this.props.address} transactions={this.props.transactions} />
            </Fragment>
        )
    }
}

export default withStyles(styles)(Transaction);