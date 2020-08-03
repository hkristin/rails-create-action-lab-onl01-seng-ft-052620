class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student =  Student.new
  end

  def create
    @student.title = params[:title]
    @student.description = params[:description]
    @student.save
    redirect to show(@student)
  end

end
