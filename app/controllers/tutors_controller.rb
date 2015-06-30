class TutorsController < ApplicationController
	def home
		@tutors = Tutor.all
		@students = Student.all
		@posts = Post.all
		@comments = Comment.all
		@answers = Answer.all
	end 

	def index
		@tutors = Tutor.all 
		@students = Student.all
		@posts = Post.all
		@comments = Comment.all
		@answers = Answer.all
	end 

	def show
		@tutor = Tutor.find params[:id]
		@student = Student.find params[:id]
		@post = Post.find params[:id]
		@comment = Comment.find params [:id]
	end 

	def contact
		@tutors = Tutor.all
		@students = Student.all
		@posts = Post.all
		@comments = Comment.all
	end 

	def comments
		@comments = Comment.all
	end 
end
