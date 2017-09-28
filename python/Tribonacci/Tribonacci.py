def tribonacci(a, n):
    if(n == 0):
        return []
    if(n == 1):
        return [a[0]]
    else:
        for i in range(1, n - 2):
            a.append(sumLast3(a))
        return a

def sumLast3(ary):
    l = last3(ary)
    acc = 0
    for i in l:
        acc = acc + i
    return acc

def last3(a):
    size = len(a)
    l = []
    for i in range(size - 3, size):
            l.append(a[i])
    return l
