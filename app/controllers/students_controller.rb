class StudentsController < ApplicationController
	
	def home
		@students = Student.all
		@tutors = Tutor.all
		@posts = Post.order("created_at DESC").limit(3)
		@comments = Comment.all
		@answers = Answer.all
	end 

	def index
		@students = Student.all 
		@tutors = Tutor.all	
	end 

	def show
		@student = Student.find(params[:id])
		@tutor = Tutor.find(params[:id])
	end 

	def create 
		@student = Student.new student_params
		@student.save
		redirect_to 'students_path'
	end 

	def edit
		@student = Student.find(params[:id])
	end 

	def update
		@student = Student.find(params[:id])
		@student.update(student_params)
		redirect_to student_path(@student)
	end 

	def contact
		@students = Student.all
		@tutors = Tutor.all
		@comments = Comment.all
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
