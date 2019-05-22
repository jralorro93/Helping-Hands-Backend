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
    # byebug
    @booking = Booking.create(booking_params)
    if @booking.valid?
      render json: @booking
    else
      render json: { error: 'Failed to create booking'}, status: :not_accepted
    end
  end

  private

  def booking_params
    body_params = params.permit(:service_id, :date, :time, :client_id)
  end
end
