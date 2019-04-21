# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n) where n is size of input
# Space complexity: O(1)
def fibonacci_non_recursion(n)
  # n i step nth fibonacci number in series
  # if n = 5
  # 0 1 1 2 3
  # set first_num = 0
  # set second_num = 1
  # set count of number to be 3
  # until the count is greater than the input n
  # new number is equal to first_num + second_num
  # reassign first_num and second_num

  if n.class != Integer || n < 0
    raise ArgumentError, "Your input #{n} is not an non-negative integer!"
  end

  first_num = 0
  second_num = 1
  fibonacci_num = 0
  count = 2

  if n == 0
    return fibonacci_num
  elsif n == 1
    return fibonacci_num + 1
  else
    until count > n
      fibonacci_num = first_num + second_num
      first_num = second_num
      second_num = fibonacci_num
      count += 1
    end
  end
  return fibonacci_num
end

def fibonacci(n)
  if n.class != Integer || n < 0
    raise ArgumentError, "Your input #{n} is not an non-negative integer!"
  end

  if n < 2
    return n
  else
    return fibonacci(n - 1) + fibonacci(n - 2)
  end
end
