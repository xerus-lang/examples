Comparer <- {
    // _cmp takes one parameter: 'other'; 'this' refers to, er, this.
    _cmp = function(other) {
        local d1 = (this.x * this.x) + (this.y * this.y);
        local d2 = (other.x * other.x) + (other.y * other.y);
        // "_cmp must return an integer"
        // TODO: returning null, table, float (accidentally)?
        return d1 - d2;
    }
};

// attempt to call 'table'
//local cm = Comparer();
//print(cm);

local t = { x = 1, y = 2 };
local u = { x = 3, y = 7 };
t.setdelegate(Comparer);
u.setdelegate(Comparer);

// Note that the <=> operator directly returns the result of _cmp; it doesn't normalise it
// to -1,0,1
print(t <=> u);
