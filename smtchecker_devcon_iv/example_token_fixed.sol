pragma solidity >0.4.25;
pragma experimental SMTChecker;

contract Token
{
	mapping (address => uint) balance;

	constructor () public {
		balance[msg.sender] = 10000;
	}

	function transfer(address _to, uint _amount) public {
		require(balance[msg.sender] >= _amount);
		require(_to != msg.sender);
		uint balanceFrom = balance[msg.sender];
		uint balanceTo = balance[_to];
		balance[msg.sender] = balance[msg.sender] - _amount;
		balance[_to] = balance[_to] + _amount;
		assert(balanceFrom + balanceTo == balance[msg.sender] + balance[_to]);
	}
}
