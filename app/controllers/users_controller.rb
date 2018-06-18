class UsersController < ApplicationController

	#create user.new and user.create, for signup, along with user params 

	def new
		@user = User.new
	end 

	def show 
	  if logged_in? 
	  	@user = User.find(params[:id])
	  else
	  	redirect_to '/'
	  end 
	end 

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:success] = "Welcome."
			redirect_to user_path(@user)
		else
			render :new
		end 
	end 

	private
	def user_params
	params.require(:user).permit(:first_name, :last_name, :email, :loved_ones_name, :date_of_loved_ones_death, :admin)
	#can add other preferences later, like permissions for friends. 
	end

end 

