class Ship
  include Mongoid::Document
  has_many :cells
end
