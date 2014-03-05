class UsersController < ApplicationController
	before_filter :find_user, only: [:show, :destroy, :edit, :update]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to users_path
		else
			render :new
		end
	end

	def update
		if @user.update_attributes(params[:user])
			redirect_to users_path
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		redirect_to users_path
	end
	
	private
		def find_user
			@user = User.find(params[:id])
		end
end
