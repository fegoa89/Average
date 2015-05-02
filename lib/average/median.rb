def get_median(array)
  return if not valid_array?(array)
  calculate_median(clean_array(array))
end

def calculate_median(array)
  array.sort!
  if array.length.even?
    get_mean( middle_items_to_average(array) )
  else
    array[ array.length / 2.to_f ]
  end
end

def middle_item(array)
  array.size / 2
end

def middle_items_to_average(array)
  array[ middle_item(array) -1 .. middle_item(array) ]
end