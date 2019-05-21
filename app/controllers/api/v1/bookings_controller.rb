class Api::V1::BookingsController < ApplicationController
  skip_before_action :authorized

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    @booking = Booking.find_by(params[:id])
    render json: @booking
  end

  def create
    @booking = Booking.create(booking_params)
    byebug
    if @booking.valid?
      render json: @booking
    else
      render json: { error: 'Failed to create booking'}, status: :not_accepted
    end
  end

  private

  def booking_params
    body_params = params.permit(:service_id, :date, :time)
    current_user_params = {client_id: current_user.id}
    body_params.merge!(current_user_params)
  end
end
