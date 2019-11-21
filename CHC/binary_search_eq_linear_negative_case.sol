pragma experimental SMTChecker;

contract C {
	function bsearch(uint _n, uint[] memory _a, uint _elem) public returns (uint) {
		require(_n > 0);

		// Assume that the array is sorted
		uint i = 1;
		while (i < _n)
			require(_a[i] >= _a[i - 1]);

		// Binary search
		uint bIndex = _n;
		uint left = 0;
		uint right = _n;
		while (left < right) {
			uint m = (left + right) / 2;
			if (_a[m] == _elem) {
				bIndex = m;
				left = right;
			} else if (_a[m] > _elem) {
				right = m;
			} else {
				left = m;
			}
		}
		// If _elem was found, index should be in bIndex

		// Linear search
		uint lIndex = 0;
		bool found = false;
		while (!found && lIndex < _n) {
			if (_a[lIndex] == _elem) {
				found = true;
			} else {
				++lIndex;
			}
		}
		// If _elem was found, index should be in lIndex

		// Result should be the same.
		if (!found)
			assert(lIndex == bIndex);

		return bIndex;
	}
}
