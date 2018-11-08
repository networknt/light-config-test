import React, {Component} from 'react';
import {BrowserRouter, Switch, Route} from 'react-router-dom';
import Home from './components/Home';
import Balance from './components/Balance';
import Faucet from './components/Faucet';
import ResponsiveDrawer from './components/ResponsiveDrawer';

class App extends Component {

    render() {
        return (
            <BrowserRouter>
                <ResponsiveDrawer>
                    <Switch>
                        <Route exact path="/" component={Home} />
                        <Route path="/balance" component={Balance} />
                        <Route path="/faucet" component={Faucet} />
                    </Switch>
                </ResponsiveDrawer>
            </BrowserRouter>
        );
    }
}

export default App;
