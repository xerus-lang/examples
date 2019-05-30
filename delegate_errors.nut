// Delegates MUST be tables. This doesn't work.
class Comparison {
    function _cmp(x, y) {
        print("cmp");
    }
}

local c = Comparison();
// You *can't* attach metamethods to classes via delegates.
//x.setdelegate(c);   // the index 'setdelegate' does not exist

// You can attach delegates to tables (and to userdata). But: delegates *must* be tables.
// parameter 1 has an invalid type 'instance' ; expected: 'null|table'
local t = {};
//t.setdelegate(c);


// TODO: Are delegates allowed to hold state? I assume so.
// Doing so could allow evil things.
