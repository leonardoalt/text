pragma solidity >=0.5.0;
pragma experimental SMTChecker;

contract Loop {
	function f(uint x) public pure {
		uint y = 0;
		while (y < x)
			++y;
		assert(y == x);
	}
}
