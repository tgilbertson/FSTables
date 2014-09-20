class PassingsController < ApplicationController

	def index
		@passings = Passing.all
	end
end