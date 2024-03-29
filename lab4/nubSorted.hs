-- deletes multiple occurrences of values from a list.
-- based on nub function

nubSorted :: Eq a => [a] -> [a]
nubSorted a
 | a == [] = []
 | length a == 1 = a
 | head a == head (tail a) = nubSorted (tail a)
 | otherwise = head a : nubSorted (tail a)
