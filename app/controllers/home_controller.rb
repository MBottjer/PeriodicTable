class HomeController < ApplicationController
  def index
  	@tiles = Tile.all
  end
end
