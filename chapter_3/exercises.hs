-- No code exercises in this chapter.

-- Exercise 1
a1 :: [Char]
a1 = ['a', 'b', 'c']

b1 :: (Char, Char, Char)
b1 = ('a', 'b', 'c')

c1 :: [(Bool, Char)]
c1 = [(False, '0'), (True, '1')]

d1 :: ([Bool], [Char])
d1 = ([False, True], ['0', '1'])

e1 :: [[a] -> [a]]
e1 = [tail, init, reverse]

-- Exercise 2
bools :: [Bool]
bools = [True, False]

nums :: [[Int]]
nums = [[1], [2,3]]

add ::  Int -> Int -> Int -> Int
add a b c = a + b + c

copy :: a -> (a, a)
copy a = (a, a)

apply :: (a -> b) -> a -> b
apply f x = f x

-- Exercise 3 and 4
second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> b -> (a, b)
pair x y = (x, y)

double :: Num a => a -> a
double a = a*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)

-- Exercise 5
{-
    It is not feasible for function types to be instances of the eq class, because there would
    need to be some way to prove that the two functions always return the same input for the same
    output. This would either require some kind of mathematical proof, or calculating the outputs
    for all inputs for both functions.

    It is feasible for something to be a member of the Eq class when they either have a set value,
    or are simple enough to only produce values for a finite domain of inputs.
-}
