class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student =  Student.new
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save
    redirect to new_student_path(@student)
  end

end
