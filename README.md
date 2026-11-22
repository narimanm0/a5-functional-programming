# What is left?

I solved the problem using lists in Python and Haskell. Idea is starting with all numbers from 1 to n and repeatedly apply 3 elimination operations till one number remains.

### Python

I used a list and a `while` loop to repeat the operations

1. removing elements at even positions using `lst[::2]`
2. removing elements at odd position using `lst[1::2]`
3. going through remaining list and keep only elements whose positions are not divisible by 3

After each operation, I check whether 1 element remains or not.

### Haskell

I followed same idea using Haskell lists and list comprehensions. I used `zip []` to keep track of elements positions and filter elements according to each operation. 
Since Haskell doesn't use a traditional `while` loop, I used a recursive `loop` inside `main` to repeat process until 1 element remains.

## Results

- Haskell: 88%
- Python: 95%
