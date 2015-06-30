class AnswersController < ApplicationController

	def home
		@answers = Answer.order("created_at DESC").limit(3)
		@students = Student.all
	end 

	def index
		@answers = Answer.order("created_at DESC").limit(3)
		@tutors = Tutor.all 
		@students = Student.all
	end 

	def show
		@answer = Answer.find(params[:id])
	end 

	def new
		@answer = Answer.new
	end 

	def edit
		@answer = Answer.find(params[:id])
	end 

	def create
		@answer = Answer.new(answer_params)
     	@answer.save
     	redirect_to answer_path(@answer)
	end 

	def update
		@answer = Answer.find(params[:id])
	  	@answer.update(answer_params)
	  	redirect_to answer_path(@answer)
	end 

	def answer_params
		params.require(:answer).permit(:title, :name, :text)
	end 
end

