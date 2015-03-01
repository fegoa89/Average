def get_mean(array)
  return if not valid_array?(array)
  array = clean_array(array)
  array.inject(0) { |sum, x| sum += x } / array.size.to_f
end