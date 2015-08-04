module Mode
  def get_mode(array)
    if valid_array?(array)
      result = repetition_hash( clean_array(array) )
      if build_hash_result(result).count > 1
        # It contains more than one mode
        build_hash_result(result).keys.collect { |float| float.to_i }
      else
        # It contains only one mode
        build_hash_result(result).keys.first
      end
    end
  end

  def repetition_hash(array)
    { hash_result: build_repetition_result(array), max_repetition: build_repetition_result(array).values.max }
  end

  def build_hash_result(result)
    result[:hash_result].select { |key, value| value == result[:max_repetition] }
  end

  def build_repetition_result(array)
     array.inject({}) { |key, value| key[value] = array.count(value.to_f); key }
  end

  def get_unique_mode(array)
    # only for Ruby versions bigger than 1.8.7 -> http://apidock.com/ruby/v1_8_7_72/Enumerable/max_by
    if valid_array?(array)
      clean_array(array).max_by { |x| clean_array(array).count(x) }
    end
  end
end