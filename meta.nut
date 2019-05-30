class C {

}

local c = C();
//c.x = "Hello";  // the index 'x' does not exist

class MapWithDefault {
    _default = null;
    _members = {};

    constructor(def) {
        _default = def;
    }

    function _set(idx, val) {
        // Note that we can trigger index not found by throw null.
        _members[idx] <- val;    
    }

    // Note: documentation's wrong (idx, val)
    function _get(idx) {
        // This throws a native stack overflow if I do 'print' in here.
        //print(idx);
        // ... other metamethods don't seem to trigger that.
        if (idx in _members) {
            return _members[idx];
        }
        else {
            return _default;
        }
    }
}

local m = MapWithDefault("Who dis?");

//m.x <- "Hello"; // class instances do not support the new slot operator
m.x = "Hello";
// without the '_get' metamethod, we get: the index 'x' does not exist
print(m.x);
// For some reason, this is returning "Hello".
print(m.y);
