require 'average/mean'
require 'average/median'
class Array
  def mean
    get_mean(self)
  end

  def mode
    get_mode(self)
  end

  def median
    get_median(self)
  end
end