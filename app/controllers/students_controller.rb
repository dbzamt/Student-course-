class StudentsController < ApplicationController
def show
		@student=Student.find(params[:id])
	end

	
def create
	Student.create(student_params)
	redirect_to(root_path)	
	
	end

def edit
	@student = Student.find(params[:id])

	
end	

def update
	 @post = Student.find(params[:id])
	if @post.update_attributes(student_params)
		redirect_to student_path(@post)
	end 
end

def destroy
	Student.destroy(params[:id])
	redirect_to(root_path)
end
private

	def student_params
		params.require(:student).permit(:Name,:DOB,:Phone_No,:email,:course)
	end	
end
