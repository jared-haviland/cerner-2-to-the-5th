# cerner_2^5_2019

def is_palindrome(str):
  start_index = 0
  end_index = len(str) - 1
  while (start_index <= end_index):
    if(str[start_index] != str[end_index]):
      return False
    else:
      start_index += 1
      end_index -= 1
  return True

largest_palindrome = 0
for num1 in range(999, 0, -1):
  for num2 in range (999, 0, -1):
    product = num1 * num2
    if product < largest_palindrome:
      break
    elif is_palindrome(str(product)):
      if product > largest_palindrome:
        largest_palindrome = product

print(largest_palindrome)