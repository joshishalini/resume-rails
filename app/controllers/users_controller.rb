class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			render "new"
		else
			p "========#{@user.errors.full_messages}==========="
		end	
	end

	def edit
		@user = User.find(user_params)
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			if @user.step == 4
				redirect_to user_path(@user)
			else
				render "new"
			end
		else
			p "========#{@user.errors.full_messages}==========="
		end
	end

	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :phone, :obj, :father, :mother, :gender, :hobbies, :strenght, :step, educations_attributes: [ :per, :year, :education ,:user_id] , experiences_attributes: [:comp_name, :designation, :from, :to, :user_id], projects_attributes:[:title, :des, :user_id])
		end
end
