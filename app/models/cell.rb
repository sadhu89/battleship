class Cell
  include Mongoid::Document
  field :hit, type: Integer, default: 0 

  def hit?
    self.hit == 1
  end

  def miss?
    self.hit == -1
  end

  def non_visited? 
    self.hit == 0 
  end

  def mark_as_hit
    self.hit = 1
  end

  def mark_as_miss
    self.hit = -1
  end
end
