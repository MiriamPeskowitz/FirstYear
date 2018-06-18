class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
helper_method :current_user
#do I want these? 
# before_action :login_required, except [:new, :create, :home]#any exceptions? 
# before_action :authorize

	def logged_in?
	  !!current_user
	end 

	def login_required
	  if !logged_in
		redirect_to login_path, :notice => "Please login."
   	  end 
	end 

	def current_user
	  @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]

	end 
	
	def authorize # to use a before filter 
	  redirect_to '/login' unless current_user, :notice => "Something went wrong."
	end 	

end

