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
    lst1 = [] # will store numbers that divided by 3
    tmp=0

    for i in lst:
        if tmp % 3 != 0:
            lst1.append(i)
        tmp += 1

    lst = lst1


print(*lst)
