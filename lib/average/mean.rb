def mean(array)
  array.inject(0) { |sum, x| sum += x } / array.size.to_f
end