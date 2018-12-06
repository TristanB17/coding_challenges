
def list_squared(range_start, range_end)
  desired_range = get_range(range_start, range_end)
  desired_range.reduce([]) do |array, number|
    sum_of_divisors_squared = check_sum_of_each(number)
    if is_square?(sum_of_divisors_squared)
    end
  end
end

def get_range(range_start, range_end)
  (range_start..range_end).to_a
end

def check_sum_of_each(number)
  range = (1..number).to_a
  result = range.reduce([]) do |array, num|
    if (number % num).zero?
      array << num
    end
    array
  end
  result.map { |divisor| divisor ** 2 }.sum
end

def is_square?(number)
  (Math.sqrt(number) % 1).zero?
end

#   Divisors of 42 are : 1, 2, 3, 6, 7, 14, 21, 42. These divisors squared are: 1, 4, 9, 36, 49, 196, 441, 1764. The sum of the squared divisors is 2500 which is 50 * 50, a square!
#
# Given two integers m, n (1 <= m <= n) we want to find all integers between m and n whose sum of squared divisors is itself a square. 42 is such a number.
#
# The result will be an array of arrays or of tuples (in C an array of Pair) or a string, each subarray having two elements, first the number whose squared divisors is a square and then the sum of the squared divisors.
