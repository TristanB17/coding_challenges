def who_is_next(names, r)
  r.times { push_back(names).flatten! } 
  names.first
end

def push_back(array)
  name = array.slice!(0)
  array << Array.new(2, name)
end
