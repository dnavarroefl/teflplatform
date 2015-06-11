class AnswersController < ApplicationController

	def home
		@answers = Answer.all
		@students = Student.all
	end 

	def index
		@answers = Answer.all
		@students = Student.all
	end 
end
