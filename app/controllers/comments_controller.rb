class CommentsController < ApplicationController

	def index
		@comments = Comment.all
		@tutors = Tutor.all 
		@students = Student.all
	end 

	def show
		@comment = Comment.find(params[:id])
		@comments = Comment.find(params[:id])
	end 

	def new
		@comment = Comment.new
	end 

	def create
		@comment = Comment.new(comment_params)
     	@comment.save
     	redirect_to comment_path(@comment)
	end 

	def update
		@comment = Comment.find(params[:id])
	  	@comment.update(comment_params)
	  	redirect_to comment_path(@comment)
	end 

	def comment_params
		params.require(:comment).permit(:title, :name, :text)
	end 
end
