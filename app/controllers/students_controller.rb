class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    #byebug
    if params.keys.include?("student")
      @student = Student.new
      @student.first_name = params[:student][:first_name]
      @student.last_name = params[:student][:last_name]
      @student.save
    else
      @student = Student.new
      @student.first_name = params[:first_name]
      @student.last_name = params[:last_name]
      @student.save
    end
    redirect_to @student
    
  end

end
