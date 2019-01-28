module Main where

fizzBuzz :: Int -> String
fizzBuzz x
    | (multipleBy 3 && multipleBy 5) = "FizzBuzz"
    | multipleBy 3 = "Fizz"
    | multipleBy 5 = "Buzz"
    | otherwise = show x
    where multipleBy y = ((mod x y) == 0)

main :: IO ()
main = do
    mapM_ putStrLn (map fizzBuzz [1..100])
