def valid_array?(array)
  # Valid if:
  # - the class of the parameter 'array' respond to Array
  # - the parameter 'Array' is not null or empty.
  # - The array given contains Integers, Floats, and Strings that could be turned to a valid digit.
  ( array.is_a?(Array) && !array.nil? && !array.empty? && array_contain_digits?(array) )
end

def array_contain_digits?(array)
  # Go through all elements
  result = true
  array.each do |array_element|
    if not value_can_be_handled?(array_element)
      result = false
    end
  end
  result
end

def value_can_be_handled?(element)
  # Check if the elements of the array 'look like numbers'.
  element.is_a?(Integer) || element.is_a?(Float) || looks_like_a_digit?(element)
end


def looks_like_a_digit?(digit)
  if digit.is_a?(String) && digit !~ /^\s*[+-]?((\d+_?)*\d+(\.(\d+_?)*\d+)?|\.(\d+_?)*\d+)(\s*|([eE][+-]?(\d+_?)*\d+)\s*)$/
    # is _not_ a string that could be turned to a digit
    false
  else
    # is a string that could be a digit
    true
  end
end

def clean_array(array)
  array.each_with_index do |val, index|
    if val.is_a?(String)
      val.include?('.') ? (array[index] = val.to_f) : (array[index] = val.to_i)
    end
  end
  array
end