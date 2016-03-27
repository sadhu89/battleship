class GamesController < ApplicationController

  def index
  end

  def initialize
    Grid.all.delete
    grid = Grid.new(user: 1)
    grid.populate
    grid.save!
    grid2 = Grid.new(user: 2)
    grid2.populate
    grid2.save!
  end

  def show
    user = params[:id].to_i
    own_grid = Grid.find_by(user:user)
    if user==1
      enemy=2
    else
      enemy=1
    end
    enemy_grid = Grid.find_by(user:enemy)
    @cells = own_grid.cells
    @enemy_cells = enemy_grid.cells
  end

  def update

  end
end
