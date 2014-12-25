def median(array)
  if !array.empty?
    get_median(array)
  else
    nil
  end
end

def get_median(array)
  array.sort!
  if array.length.even?
    mean(middle_items_to_average(array))
  else
    array[ array.length / 2.to_f ]
  end
end

def middle_item(array)
  array.size / 2
end

def middle_items_to_average(array)
  array[middle_item(array) -1 .. middle_item(array)]
end