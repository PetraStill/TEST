class LettersController < ApplicationController
	before_filter :find_letter, only: [:show, :destroy, :edit, :update]

	def index
		@letters = Letter.all
	end

	def new
		@letter = Letter.new
	end

	def create
		@letter = Letter.new(params[:letter])
		if @letter.save
			redirect_to letters_path
		else
			render :new
		end
	end

	def update
		if @letter.update_attributes(params[:letter])
			redirect_to letters_path
		else
			render :edit
		end
	end

	def destroy
		@letter.destroy
		redirect_to letters_path
	end
	
	private
		def find_letter
			@letter = Letter.find(params[:id])
		end
end
