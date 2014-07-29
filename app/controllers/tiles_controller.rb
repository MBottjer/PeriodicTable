class TilesController < ApplicationController

	def new
	end

	def create
		render plain: params[:tile].inspect
	end
end
