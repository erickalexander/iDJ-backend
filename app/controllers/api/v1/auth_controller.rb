class Api::V1::AuthController < ApplicationController

  def create
    student = Student.find_by(username: params[:username])
    instructor = Instructor.find_by(username: params[:username])
    # byebug
    if student && student.authenticate(params[:password])
      render json: student
    elsif instructor && instructor.authenticate(params[:password])
      render json: instructor
    else
      render json: {error: 'user is invalid', status: 401}
    end
  end
end
