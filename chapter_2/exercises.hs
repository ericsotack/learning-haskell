-- Exercises for Chapter 2

-- Exercise 3
-- Need to start methods as lowercase
-- Need to use back-ticks to do infix application of binary functions
-- Need spacing the same inside the same scope
-- Why doesn't "length xs" need to be parenthesized?
-- div a length xs ?
n = a `div` length xs
    where
        a = 10
        xs = [1,2,3,4,5]

-- Exercise 4
-- Need to include the params left of the equals
last xs = head (reverse xs)


-- Exercise 5
init1 xs = reverse (drop 1 (reverse xs))


init2 xs = take (length xs - 1) xs