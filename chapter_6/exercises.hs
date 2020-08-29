-- Exercise 7
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) | x <= y = x : merge xs (y:ys)
                    | otherwise = y : merge (x:xs) ys

-- Exercise 8
msort :: Ord a =>  [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge (msort first) (msort second) 
    where 
        (first, second) = halve xs

halve :: [a] -> ([a], [a])
halve [] = ([], [])
halve [x] = ([x], [])
halve (x:y:zs) = (x:first, y:second)
    where 
        (first, second) = halve zs