class HomeController < ApplicationController
  def index
  	@tiles = Tile.all
  	@categories = Category.all
  end
end
