class Api::V1::InstructorsController < ApplicationController
  def index

    @instructors = Instructor.all
    render json: @instructors
  end

  def create
    @instructor = Instructor.new(username: params[:username], password: params[:password],name: params[:name], location: params[:location], level: params[:level], user_type: params[:user_type], picture: params[:picture], rate: params[:rate])
    # instructor = Instructor.all.find{|i| i.id === @instructor.instructorId}
    # @instructor.instructor_id = instructor
    if @instructor.save

      render json: @instructor
    else
      render json: {errors: @instructor.errors.full_messages}
    end
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.rating = params[:rating]
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
  end

  # private
  # def instructor_params
  #   params.require(:instructor).permit(:name, :username, :password, :location, :rate, :level, :picture, :user_type)
  # end
end
