class CountriesController < ApplicationController

	def new
		@country=Country.new
	end

	def show
		@country=Country.find(params[:id])
	end

	def index
		@country=Country.all
	end

	def create
		@country=Country.new(country_params)

		if @country.save
			redirect_to @country

		else
			render 'new'
	end
end


	private

	def country_params
		params.require(:country).permit(:name)
	end
end
