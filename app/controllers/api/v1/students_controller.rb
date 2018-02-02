class Api::V1::StudentsController < ApplicationController
  def index

    @students = Student.all
    render json: @students
  end

  def create
    @student = Student.new(student_params)
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

  private
  def student_params
    params.require(:student).permit(:name, :username, :location, :rating, :level, :picture)
  end
end
