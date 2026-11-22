main = do
    input <- getLine
    
    let n = read input::Int
    let lst = [1..n]

    let lst1 = [x | (tmp, x) <- zip [1..] lst, tmp `mod` 2 /= 0]
    let lst2 = [x | (tmp, x)  <- zip [1..] lst1, tmp `mod` 2 == 0]
    let lst3 = [x | (tmp, x) <- zip [1..] lst2, tmp `mod` 3 /= 0]

    print lst3
