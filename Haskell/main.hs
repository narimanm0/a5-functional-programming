main = do
    n <- readLn :: IO Int

    let lst = [1..n]

    let lst1 = filter even lst
    let lst2 = filter odd lst1
    let lst3 = filter (\x -> x `mod` 3 == 0) lst2

    print lst3
