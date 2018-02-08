pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/token/ERC20Basic.sol';
import 'zeppelin-solidity/contracts/totken/PausableToken.sol';

contract SawTokenICO is PausableToken {
    using SafeMath for uint256;

    string public name = "SAW Token";
    string public symbol = "SAW";
    uint256 public decimals = 18;

    uint256 public totalSupply = 1000000 * (10 ** decimals);

    address public fundsWallet;

    function SawTokenICO(address _fundsWallet) {
        fundsWallet = _fundsWallet;

        // initally assign all tokens to the fundsWallet
        balances[fundsWallet] = totalSupply;
        Transfer(0x0, fundsWallet, totalSupply);
    }
}