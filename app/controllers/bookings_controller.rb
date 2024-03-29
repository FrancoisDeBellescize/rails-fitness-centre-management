class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :routing_admin, except: [:new, :create, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @classe = Classe.find(params[:classe_id]) if(params.has_key?(:classe_id))
  end

  def edit
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to page_path(id: 3), method:"GET", action: "show",  notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to @booking.classe, notice: 'Booking was successfully destroyed.'
  end

  private
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:name, :phone, :email, :membership_id, :classe_id, :number)
  end
end
