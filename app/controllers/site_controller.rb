require "httparty"

class SiteController < ApplicationController

include HTTParty
 
	def index
	 	@response = HTTParty.get('http://api.nytimes.com/svc/topstories/v1/national.json?api-key=b7d44ad17cc1da6bd24cdfc172b20a81:5:72707211')
	 	
	 	respond_to do |format|
	 		format.html{render :index}
	 		format.json{render json: @response}
	 	end
	end
end
