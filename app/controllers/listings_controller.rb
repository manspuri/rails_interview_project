class ListingsController < ApplicationController
	def index
		@listings = Listing.all
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
	end

private
	def listing_params
	end

end