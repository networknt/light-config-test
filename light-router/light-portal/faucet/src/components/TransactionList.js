import React, {Component} from 'react';
import moment from 'moment';
import { withStyles } from '@material-ui/core/styles';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import Paper from '@material-ui/core/Paper';

const styles = theme => ({
    root: {
        width: '100%',
        marginTop: theme.spacing.unit * 3,
        overflowX: 'auto',
    },
    table: {
        minWidth: 700,
    },
});

class TransactionList extends Component {
    render() {
        const { classes } = this.props;

        if(this.props.transactions) {
            return (
                <div>
                    <Paper className={classes.root}>
                        <Table className={classes.table}>
                            <TableHead>
                                <TableRow>
                                    <TableCell numeric>TxId</TableCell>
                                    <TableCell>Time</TableCell>
                                    <TableCell>ToAddress</TableCell>
                                    <TableCell numeric>Amount in SHELL</TableCell>
                                    <TableCell>Data</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {this.props.transactions.map(row => {
                                    return (
                                        <TableRow key={row.id}>
                                            <TableCell component="th" scope="row">
                                                {row.id}
                                            </TableCell>
                                            <TableCell>{moment.utc(row.time).format()}</TableCell>
                                            <TableCell>{row.toAddress}</TableCell>
                                            <TableCell numeric>{this.props.address === row.toAddress? '+' + row.value : '-' + row.value}</TableCell>
                                            <TableCell>{row.data}</TableCell>
                                        </TableRow>
                                    );
                                })}
                            </TableBody>
                        </Table>
                    </Paper>
                </div>)
        } else {
            return (<div>Invalid Address or Currency!</div>)
        }
    }
}

export default withStyles(styles)(TransactionList);