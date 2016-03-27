class Grid
  include Mongoid::Document
  field :size, type: Integer, default:10
  field :user, type: Integer
  field :cells, type: Array
  has_many :ship

  def populate
    self.cells=[]
    size.times do
      row = []
      size.times do
        row<<Cell.create.id
      end  
      self.cells<<row 
    end
    self.cells
  end
end
