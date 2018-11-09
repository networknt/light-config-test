import React, {Component} from 'react';
import {BrowserRouter, Switch, Route} from 'react-router-dom';
import Home from './components/Home';
import Balance from './components/Balance';
import Faucet from './components/Faucet';
import ResponsiveDrawer from './components/ResponsiveDrawer';

class App extends Component {

    state = {
        address: '',
        amount: '',
        currency: 'taiji',
        unit: 'TAIJI',
        currencyMap: undefined
    };

    handleChange = name => event => {
        //console.log(name, event.target.value);
        this.setState({
            [name]: event.target.value,
        });
    };

    getBalance = async (e) => {
        e.preventDefault();
        //console.log('address', this.state.address);
        const api_call = await fetch(`/faucet/${this.state.address}`);
        const data = await api_call.json();
        //console.log(data);
        if (data) {
            this.setState({
                currencyMap: data
            });
        } else {
            this.setState({
                currencyMap: undefined
            });
        }
    };

    postFaucet = async (e) => {
        e.preventDefault();
        const settings = {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                amount: this.state.amount,
                currency: this.state.currency,
                unit: this.state.unit
            })
        };

        const api_call = await fetch(`/faucet/${this.state.address}`, settings)
        const data = await api_call.json();
        if (data) {
            this.setState({
                currencyMap: data
            });
        } else {
            this.setState({
                currencyMap: undefined
            });
        }
    };

    render() {
        return (
            <BrowserRouter>
                <ResponsiveDrawer>
                    <Switch>
                        <Route exact path="/" component={Home} />
                        <Route path="/balance" render = {
                            props => <Balance {...props}
                                              getBalance={this.getBalance}
                                              handleChange={this.handleChange}
                                              address={this.state.address}
                                              currencyMap={this.state.currencyMap}/>} />
                        <Route path="/faucet" render = {
                            props => <Faucet {...props}
                                              postFaucet={this.postFaucet}
                                              handleChange={this.handleChange}
                                              address={this.state.address}
                                              amount={this.state.amount}
                                              currency={this.state.currency}
                                              unit={this.state.unit}
                                              currencyMap={this.state.currencyMap}/>} />
                    </Switch>
                </ResponsiveDrawer>
            </BrowserRouter>
        );
    }
}

export default App;
