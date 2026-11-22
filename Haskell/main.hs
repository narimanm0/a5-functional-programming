main = do
    n <- readLn :: IO Int

    let lst = [1..n]

    let lst1 = [x | (tmp, x) <- zip [1..] lst, tmp `mod` 2 /= 0]
    let lst2 = filter odd lst1
    let lst3 = filter (\x -> x `mod` 3 == 0) lst2

    print lst3
