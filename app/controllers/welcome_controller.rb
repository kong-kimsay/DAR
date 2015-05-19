class WelcomeController < ApplicationController
	layout 'application'

  def index
  	@title = 'ក្តាពត៌មាន'
  	@subtitle = 'ពត៌មានថ្មី​ៗប្រចាំនាយកដ្ឋានអាមេរិក'
	end
end
