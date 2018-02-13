class Api::V1::StudentsController < ApplicationController
  def index

    @students = Student.all
    render json: @students, include: 'sessions.instructor'
  end

  def create
    @student = Student.new(username: params[:username], password: params[:password],name: params[:name], location: params[:location], level: params[:level], user_type: params[:user_type], picture: params[:picture])
    # student = Student.all.find{|i| i.id === @student.studentId}
    # @student.student_id = student
    if @student.save

      render json: @student
    else
      render json: {errors: @student.errors.full_messages}
    end
  end

  def update
    @student = Student.find(params[:id])
    @student.rating = params[:rating]
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
  end

  # private
  # def student_params
  #   params.require(:student).permit(:name, :username, :password, :location, :level, :picture, :user_type)
  # end
end
