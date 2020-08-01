import Data.Char

-- Exercise 1
e1 :: Integer
e1 = sum [x^2 | x <- [1..100]]

-- Exercise 2
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(a, b) | a <- [0..x], b <- [0..y]]

-- Exercise 3
square :: Int -> [(Int, Int)]
square n = [(a, b) | a <- [0..n], b <- [0..n], a /= b]

-- Exercise 4
-- Note: The [a..b] function is inclusive on both sides
replicate :: Int -> a -> [a]
replicate n v = [v | _ <- [1..n]]

-- Exercise 5
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], c^2 == a^2 + b^2, c <= n]

-- Exercise 6
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- Includes p*2 because p is the last factor in factors p
perfects :: Int -> [Int]
perfects n = [p | p <- [1..n], (sum (factors p)) == p*2]

--  Exercise 7 re-expressing the below as two comprehensions with a generator each (solution found on github)
e7_1 :: [(Integer, Integer)]
e7_1 = [(x, y) | x <- [1,2], y <- [3,4]]

e7_2 :: [(Integer, Integer)]
e7_2 = concat [[(x, y) | y <- [3,4]] | x <- [1,2]]

-- Exercise 8
original_positions :: Eq a => a -> [a] -> [Int]
original_positions x xs = [i | (x', i) <- zip xs [0..], x == x']

find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x [(a, b) | (a, b) <- zip xs [0..]]

-- Exercise 9
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct as bs = sum [a*b | (a, b) <- zip as bs]

-- Exercise 10
let2intLower :: Char -> Int
let2intLower c = ord c - ord 'a'

int2letLower :: Int -> Char
int2letLower n = chr (ord 'a' + n)

let2intUpper :: Char -> Int
let2intUpper c = ord c - ord 'A'

int2letUpper :: Int -> Char
int2letUpper n = chr (ord 'A' + n)

shift :: Int -> Char -> Char
shift n c   | isLower c = int2letLower ((let2intLower c + n) `mod` 26)
            | isUpper c = int2letUpper ((let2intUpper c + n) `mod` 26)
            | otherwise = c

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]