class Api::V1::BookingsController < ApplicationController
  skip_before_action :authorized

  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    render json: @booking
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.valid?
      render json: @booking
    else
      render json: { error: 'Failed to create booking'}, status: :not_accepted
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    # @token = encode_token(user: @user)
    # render json: { user: UserSerializer.new(@user), jwt: @token}
    render json: @booking
  end

  def destroy
    @booking = Booking.find_by(booking_params)
    @booking.destroy

  end

  private

  def booking_params
    params.permit(:service_id, :date, :time, :client_id, :service_provider_id)
  end
end
