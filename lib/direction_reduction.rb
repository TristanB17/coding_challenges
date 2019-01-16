def dictionary
  {
    'NORTH' => 'SOUTH',
    'SOUTH' => 'NORTH',
    'EAST' => 'WEST',
    'WEST' => 'EAST'
  }
end

def remove_conflicting_directions(array)
  array.length.times do |index|
    if dictionary[array[index]] == array[index + 1]
      array.slice!(index, 2)
      return remove_conflicting_directions(array)
    end
  end
  return array
end
