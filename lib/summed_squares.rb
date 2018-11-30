def list_squared(range_start, range_end)
  desired_range = (range_start..range_end).to_a
end

def list_achieved(range_start, range_end)
  desired_range = (range_start..range_end).to_a
end

def check_sum_of_each(number)
  range = (1..number).to_a
  range.reduce([]) do |array, num|
    if (number % num).integer?
      array << num
    end
    array.map { |divisor| divisor * 2 }
  end.sum
end

def is_square?(number)
  (Math.sqrt(number) % 1).zero?
end
