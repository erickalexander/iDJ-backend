class Api::V1::RatingsController < ApplicationController
  def index

    @ratings = Rating.all
    render json: @ratings
  end

  def create
    @rating = Rating.new(rating_params)
    # rating = Rating.all.find{|i| i.id === @rating.ratingId}
    # @rating.rating_id = rating
    if @rating.save
      render json: @rating
    else
      render json: {errors: @rating.errors.full_messages}
    end
  end

  def update
    #adds student to rating to make it active
    @rating = Rating.find(params[:id])
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
  end

  private
  def rating_params
    params.require(:rating).permit(:student_id, :session_id )
  end
end
