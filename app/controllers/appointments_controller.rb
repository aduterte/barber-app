class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.all
    render json: barbers_reviews.to_json
  end

  def show
    appointment = Appointment.find(params[:id])
    render json: barber
  end

  def update
    appointment = Appointment.find(params[:id])
    appointment.update(date: params["date"])
    render json: appointment.to_json
  end

  def create
    appointment = Appointment.create(date: params["date"], barber_id: params["barber_id"], client_id: params['client_id'])
    render json: appointment.to_json 
  end

  def destroy
    appointment = Appointment.find(params[:id])
    review.destroy
  end

end