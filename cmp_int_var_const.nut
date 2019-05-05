local x = 42;
local y = 43;

// Doesn't appear to support constants _in_ the instruction;
// the 50 is loaded to a register.
local h = x < 50;
local i = x > 50;
local j = x == 50;
local k = x != 50;
local l = x <= 50;
local m = x >= 50;
local n = x <=> 50;
