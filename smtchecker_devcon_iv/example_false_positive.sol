pragma solidity >0.4.25;
pragma experimental SMTChecker;

contract IFace
{
    function f() external;
}

contract C
{
    IFace externalContract;
	uint sum;
	uint count;

	function () external payable {
		require(msg.value > 0);
		require(sum + msg.value <= 1000000);
		sum = sum + msg.value;
		count = count + 1;
	}

    function average() public returns (uint avg) {
		require(count > 0);
        externalContract.f();
		avg = sum / count;
		assert(avg > 0);
		return avg;
    }
}
