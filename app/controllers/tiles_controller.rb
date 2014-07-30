class TilesController < ApplicationController

	def new
	end

	def create
		@tile = Tile.new(article_params)

		@tile.save
		redirect_to '/'
	end

	def show
		@tile = Tile.find(params[:id])
	end

	private
		def article_params
			params.require(:tile).permit(:element, :description, :is_html5, :category_id)
		end
end
