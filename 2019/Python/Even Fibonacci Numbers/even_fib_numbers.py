# cerner_2^5_2019

fib_numbers = [1, 2]
finished = False
while not finished:
  next_num = fib_numbers[-1] + fib_numbers[-2]
  if next_num > 4000000:
    finished = True
  else:
    fib_numbers.append(next_num)

sum = 0
for num in fib_numbers:
  if num % 2 == 0:
    sum += num

print(sum)