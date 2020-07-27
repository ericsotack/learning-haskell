-- Exercise 1
halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve xs = (take a xs, drop a xs)
    where
        a = (length xs) `div` 2


-- Exercise 2a: head and tail
thirda :: [a] -> a
thirda xs = head (tail (tail xs))

-- Exercise 2b: !! (array access)
thirdb :: [a] -> a
thirdb xs = xs !! 2

-- Exercise 2c: pattern matching
thirdc :: [a] -> a
thirdc (a:b:c:xs) = c


-- Exercise 3a: conditional
safetaila xs = if null xs then [] else tail xs

-- Exercise 3b: guarded equations
safetailb xs | null xs      = []
             | otherwise    = tail xs

-- Exercise 3c: pattern matching
safetailc [] = []
safetailc (_s:xs) = xs


-- Exercise 4: 4 different || (substituted for orX for the sake of clarity)
or1 :: Bool -> Bool -> Bool
True `or1` True     = True
True `or1` False    = True
False `or1` True    = True
False `or1` False   = False

or2 :: Bool -> Bool -> Bool
False `or2` False   = False
_ `or2` _           = True

or3 :: Bool -> Bool -> Bool
False `or3` b   = b
True `or3` _    = True

or4 :: Bool -> Bool -> Bool
b `or4` c | b == c      = b
          | otherwise   = True

-- Exercise 5: Formalizing the expression appearing in the book literally
and1 :: Bool -> Bool -> Bool
(and1) b c = if b then (if c then True else False) else (if c then False else False)

-- Exercise 6: Formalizing the expression appearing in the book literally again
and2 :: Bool -> Bool -> Bool
(and2) b c = if b then c else False

-- Exercise 7
-- NOTE: Don't need to declare params when assigning a function to a variable
mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x*y*z))

-- Exercise 8
-- Consider each digit as a separate number
-- Moving left, double every other number from the second last
-- subtract 9 from each number that is greater than 9
-- Add all of the resulting numbers together
-- if the total is divisible by 10, then the card number is valid
luhnDouble :: Int -> Int
luhnDouble n | (n + n) > 9  = (n + n) - 9
             | otherwise    = n + n

luhn :: Int -> Int -> Int -> Int -> Bool
luhn w x y z = (((luhnDouble w) + x + (luhnDouble y) + z) `mod` 10) == 0