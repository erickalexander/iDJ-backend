class Api::V1::SessionsController < ApplicationController
  def index

    @sessions = Session.all
    render json: @sessions
  end

  def create
    start_time = "#{params["start_time"]["date"]} #{Time.strptime(params["start_time"]["start_time"], "%I:%M %p").strftime("%H:%M")} -0500"
    end_time = "#{params["start_time"]["date"]} #{Time.strptime(params["start_time"]["end_time"], "%I:%M %p").strftime("%H:%M")} -0500"
    @session = Session.new(instructor_id: params["instructor_id"], start_time: start_time,end_time: end_time)
    # session = Session.all.find{|i| i.id === @session.sessionId}
    # @session.session_id = session
    if @session.save
      render json: @session
    else
      render json: {errors: @session.errors.full_messages}
    end
  end

  def update
    #adds student to session to make it active
    @session = Session.find(params[:id])
    if @session.status == 'inactive'
      @session.student_id = params[:student_id]
      @session.status = 'active'
      @session.save
    else
      @session.completed_status = params[:completed_status]
      @session.save
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
  end

  private
  def session_params
    params.require(:session).permit(:date, :start_time, :end_time, :instructor_id, :student_id )
  end
end
