class Api::V1::ServicesController < ApplicationController
  skip_before_action :authorized

  def index
    @services = Service.all
    render json: @services
  end

  def show
    @service = Service.find(params[:id])
    render json: @service
  end

  def create
    @service = Service.create(serivce_params)
    if @service.valid?
      render json: @service
    else
      render json: { error: 'Failed to create service'}, status: :not_accepted
    end
  end

  def update
    @service = User.find(params[:id])
    @service.update(service_params)
    render json: @service
  end

  # def destroy
  #   @
  #
  # end

  private

  def service_params
    params.permit(:job, :description, :availability, :service_provider_id)
  end

end
