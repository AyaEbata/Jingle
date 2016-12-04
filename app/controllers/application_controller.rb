class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	rescue_from Exception, with: :render_500

	def render_500
		render template: "errors/error_500", status: 500, layout: 'application'
		
	end
end
