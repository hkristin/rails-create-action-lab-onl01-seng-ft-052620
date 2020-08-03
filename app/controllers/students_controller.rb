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
    @student.title = params[:name]
    @student.description = params[:description]
    @student.save
    redirect to show(@student)
  end

end
