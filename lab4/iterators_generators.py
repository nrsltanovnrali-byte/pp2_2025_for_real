# квадраттарды шығаратын генератор (1-задание)
def generate_squares(n):
    for i in range(1, n + 1):
        yield i * i

for square in generate_squares(5):
    print(square, end=" ")
print("\n")

# жұп сандарды шығару генератормен (2-задание)
def even_numbers(n):
    for i in range(0, n + 1):
        if i % 2 == 0:
            yield i

n = int(input("n енгіз: "))
print(",".join(str(i) for i in even_numbers(n)))
print("\n")

# 3 және 4-ке бөлінетін сандар (3-задание)
def divisible_by_3_and_4(n):
    for i in range(n + 1):
        if i % 3 == 0 and i % 4 == 0:
            yield i

n = int(input("n енгіз: "))
for num in divisible_by_3_and_4(n):
    print(num, end=" ")
print("\n")

# a-дан b-ге дейін квадрат шығаратын генератор (4-задание)
def squares(a, b):
    for i in range(a, b + 1):
        yield i ** 2

a = int(input("a енгіз: "))
b = int(input("b енгіз: "))
for s in squares(a, b):
    print(s, end=" ")
print("\n")

# n-нен 0-ге дейін санау (5-задание)
def countdown(n):
    while n >= 0:
        yield n
        n -= 1

n = int(input("n енгіз: "))
for num in countdown(n):
    print(num, end=" ")
print("\n")
