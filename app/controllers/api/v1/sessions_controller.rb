class Api::V1::SessionsController < ApplicationController
  def index

    @sessions = Session.all
    render json: @sessions
  end

  def create
    @session = Session.new(session_params)
    # session = Session.all.find{|i| i.id === @session.sessionId}
    # @session.session_id = session
    if @session.save

      render json: @session
    else
      render json: {errors: @session.errors.full_messages}
    end
  end

  def update
    @session = Session.find(params[:id])
    @session.rating = params[:rating]
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
  end

  private
  def session_params
    params.require(:session).permit(:start_time, :end_time, :instructor_id )
  end
end
