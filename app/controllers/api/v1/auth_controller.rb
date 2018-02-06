class Api::V1::AuthController < ApplicationController

  def create
    student = Student.find_by(username: params[:username])
    instructor = Instructor.find_by(username: params[:username])
    # byebug

    if student && student.authenticate(params[:password])
      # student.store('token1', issue_token({id:student.id}))

      # render json: student

      render json: {student: StudentSerializer.new(student), token: issue_token(student)}
    elsif instructor && instructor.authenticate(params[:password])
      # instructor.store('token1', issue_token({id:instructor.id}))

      # render json: instructor
      # byebug
      render json: {instructor: InstructorSerializer.new(instructor),  token: issue_token(instructor)}

    else
      render json: {error: 'user is invalid'}, status: 401
    end
  end

  def show #get request to grab user that corresponds to token
    data = JSON.parse(request.headers['Authorization'])
    t = data['token']
    decoded_token = JWT.decode(t, ENV['secret'], true, {:algorithm => 'HS256'} )
    # byebug
    id = decoded_token.first['id']

    type = data['type']
    student = Student.find_by(id: id, user_type: type)
    instructor = Instructor.find_by(id: id, user_type: type)
    if student
      render json: student
    elsif instructor
      render json: instructor
    else
      render json: {error: 'user is invalid'},  status: 401
    end
  end
end
