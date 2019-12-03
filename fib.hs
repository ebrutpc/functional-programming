fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = if n>2
        then fib (n-1) + fib (n-2)
        else 1

--fib 0 = 1
--fib 1 = 1
