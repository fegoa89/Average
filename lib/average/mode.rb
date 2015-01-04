def mode(array)
  return if !valid_array?(array)
  array  = clean_array(array)
  result = repetition_hash(array)
  result[:hash_result].select { |key, value| value == result[:max_repetition] }.keys.collect { |float| float.to_i }
end

def repetition_hash(array)
  return if !valid_array?(array)
  array  = clean_array(array)
  result = array.inject({}) { |key, value| key[value] = array.count(value.to_f); key }
  { hash_result: result, max_repetition: result.values.max }
end

def unique_mode(array)
  # only for Ruby versions bigger than 1.8.7 -> http://apidock.com/ruby/v1_8_7_72/Enumerable/max_by
  return if !valid_array?(array)
  array  = clean_array(array)
  array.max_by { |x| array.count(x) }
end