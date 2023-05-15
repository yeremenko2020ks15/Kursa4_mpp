class PrVolume < ApplicationRecord
  def to_s
    self.volume
  end
end
