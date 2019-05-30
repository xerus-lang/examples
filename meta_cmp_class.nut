// Implementing _cmp on a class or table is a bit daft, really, because it's the
// *algorithm*, rather than the type that needs the sort order. Usually. I guess.

class Comparable {
    _x = null;
    _y = null;

    constructor(x, y) {
        _x = x;
        _y = y;
    }

    // TODO: Actually implement _cmp
}

local x = Comparable(0, 1);
local y = Comparable(1, 0);

// Without the _cmp metamethod, there *is* an ordering. I don't know what it is, yet.
print(x <=> y);
