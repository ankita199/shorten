class StatsController < ApplicationController

	def index
		@urls = Url.includes(:visit_histories)
	end
end
