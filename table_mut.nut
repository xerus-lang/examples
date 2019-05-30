// TODO: Are tables cloned or mutable via references?
local t = {};
local u = t;

// The variable is a reference to the table, so modifying via one variable modifies the
// same table.
t.x <- 42;
print(u.x);

u.y <- 123;
print(t.y);
