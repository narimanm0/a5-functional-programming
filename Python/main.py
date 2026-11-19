n = int(input())

lst = []

for i in range(1, n+1):
    lst.append(i)

while len(lst) > 1:
    # round 1
    lst = lst[::2]
    if len(lst) <= 1: break

    # round 2
    lst = lst[1::2]
    if len(lst) <= 1: break

    # round 3
    lst = [i for i in lst if i % 3 == 0]
    if len(lst) <= 1: break


print(*lst)
