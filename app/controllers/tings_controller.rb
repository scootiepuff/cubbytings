class TingsController < ApplicationController
	def index
		@tings = Ting.all		
	end
end
