class ApplicationController < ActionController::Base
	include DeviseWhitelist
	include SetSource

	before_action :set_source

	def set_source
		session[:source] = params[:q] if params[:q]
	end

end
