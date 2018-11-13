import React, {Component} from 'react';
class Home extends Component {
    render() {
        return (
            <div>
                <pre>
                    This is the faucet for the testnet. Please first create an address by following the <a href="https://doc.taiji.io/getting-started/">getting started guide</a> and come here to populate up to 1000 TAIJI coins per day.
                </pre>
                <pre>
                    To learn more about the Taiji Blockchain, please visit <a href="https://doc.taiji.io/">doc.taiji.io</a>, <a href="https://github.com/networknt/taiji-blockchain">taiji-blockchain</a> and <a href="https://github.com/taiji-chain">taiji-chain organization</a>.
                </pre>
                <pre>
                    If you have questions or want to discuss the features, please visit <a href="https://gitter.im/networknt/taiji-blockchain">gitter room</a> or <a href="https://www.reddit.com/r/TaijiChain/">TaijiChain Reddit</a>.
                </pre>
            </div>
        )
    }
}

export default Home;