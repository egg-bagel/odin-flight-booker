class BookingsController < ApplicationController
  def new
    # This action receives two parameters from the flight select form:
    # the flight id and the number of passengers. 
    # I want this action to render a form for a new booking
    # which displays the chosen date, airports, flight id, and 
    # a set of fields to enter personal information for each passenger.
    # I will need to create a new blank Passenger object in the controller (here) for each passenger
    # and then use #fields_for in the view to set up the sub-forms.
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id].to_i)
    # How do I do the following two things:
    # 1) Create x number of passengers here, where x = params[:number_of_passengers],
    # 2) Create x subforms in the view, each of which is connected to one of these new passenger objects
    number_of_passengers = params[:number_of_passengers].to_i
    
    number_of_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(:id => @booking.id)
    else
      render new_booking_path, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    booking_params = params.require(:booking).permit(:flight_id, :number_of_passengers, :passengers_attributes => [:name, :email])
  end
end
