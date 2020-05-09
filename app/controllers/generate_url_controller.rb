class GenerateUrlController < ApplicationController

	def index
	end

	def create
		@url = Url.find_or_create_by(original: params[:url])
	end

	def show
		@url = Url.find_by_shorten(params[:shorten_url])
		if @url
			VisitHistory.create_analysis(request.location.ip,request.location.country,@url)
			redirect_to @url.original
		end
	end
end
