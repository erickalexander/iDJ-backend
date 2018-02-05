class Api::V1::AuthController < ApplicationController

  def create
    student = Student.find_by(username: params[:username])
    instructor = Instructor.find_by(username: params[:username])
    # byebug

    if student && student.authenticate(params[:password])
      # student.store('token1', issue_token({id:student.id}))

      # render json: student
      render json: {student: student, token: issue_token(student)}
    elsif instructor && instructor.authenticate(params[:password])
      # instructor.store('token1', issue_token({id:instructor.id}))

      # render json: instructor
      render json: {instructor: instructor, token: issue_token(instructor)}

    else
      render json: {error: 'user is invalid'}, status: 401
    end
  end

  def show #get request to grab user that corresponds to token
    data = JSON.parse(request.headers['Authorization'])
    token = data['token']
    type = data['type']
    student = Student.find_by(id: token, user_type: type)
    instructor = Instructor.find_by(id: token, user_type: type)
    if student
      render json: student
    elsif instructor
      render json: instructor
    else
      render json: {error: 'user is invalid'},  status: 401
    end
  end
end
