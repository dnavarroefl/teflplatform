class TeachersController < ApplicationController

	def index
		@students = Student.all 
		@tutors = Tutor.all
		@teachers = Teacher.all
	end 
end
