// You *can* implement the _newslot (and _delslot?) metamethods on classes as well as tables.
class D {
    function _newslot(key, value) {
        print("newslot");
    }

    function _delslot(key) {
        print("delslot");
    }
}

local d = D();

// Ordinarily: "class instances do not support the new slot operator"
// ...but with _newslot, it works.
d.x <- "Hello";

// can't delete an expression
//delete(d.x);
delete d.x;

// ...which, I guess, means you can't delete calculated slot names?
delete d["x"];
// ...oh, you can ^^; also vv
local k = "x";
delete d[k];
