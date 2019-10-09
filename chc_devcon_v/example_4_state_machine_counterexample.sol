pragma solidity >=0.5.0;
pragma experimental SMTChecker;

contract StateMachine {
	uint x;

	function f() public {
		if (x == 0)
			x = 1;
	}

	function g() public {
		if (x == 1)
			x = 2;
	}

	function invariant() public {
		assert(x <= 1);
	}
}
