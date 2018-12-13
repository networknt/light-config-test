import React, {Component} from 'react';
import {withStyles} from "@material-ui/core";

const styles = theme => ({
    root: {
        display: 'flex',
        flexWrap: 'wrap',
    },
    pre: {
        'white-space': 'pre-wrap',
    },
});

class Home extends Component {
    render() {
        const { classes } = this.props;
        return (
            <div>
                <pre className={classes.pre}>
                    This is the faucet for the testnet. Please first create a wallet by following the <a href="https://doc.taiji.io/getting-started/" rel="noreferrer noopener" target="_blank">getting started guide</a> and come here to populate up to 1000 TAIJI coins per day.
                </pre>
                <pre className={classes.pre}>
                    For quick start, you can start with the <a href="https://demo.taiji.io" rel="noreferrer noopener" target="_blank">demo site</a> for testnet. It is not recommended to use a centralized web site for mainnet and you should setup your client on your local computer or your own virtual machine on the cloud.
                </pre>
                <pre className={classes.pre}>
                    To learn more about the Taiji Blockchain, please visit <a href="https://doc.taiji.io/" rel="noreferrer noopener" target="_blank">doc.taiji.io</a>, <a href="https://github.com/networknt/taiji-blockchain" rel="noreferrer noopener" target="_blank">taiji-blockchain</a> and <a href="https://github.com/taiji-chain" rel="noreferrer noopener" target="_blank">taiji-chain organization</a>.
                </pre>
                <pre className={classes.pre}>
                    If you have questions or want to discuss the features, please visit <a href="https://gitter.im/networknt/taiji-blockchain" rel="noreferrer noopener" target="_blank">gitter room</a> or <a href="https://www.reddit.com/r/TaijiChain/" rel="noreferrer noopener" target="_blank">TaijiChain Reddit</a>.
                </pre>
            </div>
        )
    }
}

export default withStyles(styles)(Home);