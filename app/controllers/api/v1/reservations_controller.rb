class Api::V1::ReservationsController < ApplicationController
  def index

    @reservations = Reservation.all
    render json: @reservations
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # reservation = Reservation.all.find{|i| i.id === @reservation.reservationId}
    # @reservation.reservation_id = reservation
    if @reservation.save

      render json: @reservation
    else
      render json: {errors: @reservation.errors.full_messages}
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.rating = params[:rating]
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:student_id, :session_id)
  end
end
