main = do
    input <- getLine

    let n = read input :: Int
    let lst = [1..n]

    let loop lst =
            if length lst <= 1 then lst else
                let lst1 = [x | (tmp, x) <- zip [1..] lst, tmp `mod` 2 /= 0]
                in if length lst1 <= 1 then lst1 else
                    let lst2 = [x | (tmp, x) <- zip [1..] lst1, tmp `mod` 2 == 0]
                    in if length lst2 <= 1 then lst2 else
                        let lst3 = [x | (tmp, x) <- zip [1..] lst2, tmp `mod` 3 /= 0]
                        in loop lst3

    print(head(loop lst))
