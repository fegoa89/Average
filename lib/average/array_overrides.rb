require 'average/mean'
require 'average/median'
class Array
  def get_mean
    mean(self)
  end

  def get_mode
    mode(self)
  end

  def get_median
    median(self)
  end
end