# cerner_2^5_2019

start = 20*19           # automatically a multiple of 19 and 20
current = start
divisor = 18            # start checking at 18 because the number we're using will always be a multiple of 19 and 20

while True:
  if divisor == 10:     # anything 10 and below is already covered if 11-20 are divisors
    print(current)
    break
  elif current % divisor == 0:
    divisor -= 1
  else:
    current += start    # the current number isn't the solution, so add on another 19*20 and start again
    divisor = 18