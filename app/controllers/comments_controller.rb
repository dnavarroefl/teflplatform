class CommentsController < ApplicationController

	def index
		@posts = Post.all
		@comments = Comment.all
		@tutors = Tutor.all 
		@students = Student.all
	end 

	def show
		@comment = Comment.find(params[:id])
	end 

	def new
		@comment = Comment.new
	end 

	def edit
		@comment = Comment.find(params[:id])
	end 

	def create
		@post = Post.find(params[:id])
     	@comment = @post.comments.create(comment_params)
     	redirect_to post_path(@post)
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
