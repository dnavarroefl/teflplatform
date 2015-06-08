class StudentsController < ApplicationController
	def home
		@students = Student.all
		@tutors = Tutor.all
		@posts = Post.all
		@comments = Comment.all
	end 

	def index
		@students = Student.all 
		@tutors = Tutor.all
	end 

	def show
		@student = Student.find params[:id]
		@tutor = Tutor.find params[:id]
	end 

	def create 
		@student = Student.new student_params
		@student.save
		redirect_to 'students_path'
	end 

	def contact
		@students = Student.all
		@tutors = Tutor.all
	end 

	def media
		@students = Student.all
		@tutors = Tutor.all
	end 

	def tools
		@students = Student.all
		@tutors = Tutor.all
	end 

	def games
	 	@students = Student.all
	 	@tutors = Tutor.all
	end

	def get_all_info
		username = "Novohispano" 
		user = Duolingo::User.new(username) 
		user.get_all_info 
	end 

	def posts
		@students = Student.all
		@tutors = Tutor.all
	end 

	def comments
		@comments = Comment.all
	end 
 
	def student_params
		params.require(:student).permit(:name, :email, :age, :level, :progress, :score, :comment)
	end
end
