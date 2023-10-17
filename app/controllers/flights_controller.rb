class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @departure_dates = Flight.all.map { |f| [f.departure_time.to_date]}


    @flights_prelim = Flight.where(departure_airport_id: params[:departure_airport_id])
                     .and(Flight.where(arrival_airport_id: params[:arrival_airport_id]))

    @flights = []

    @flights_prelim.each do |flight|
      if flight.departure_time_to_date == Date.parse(params[:date])
        @flights << flight
      end
    end

  end

  private

  def search_params
    search_params = params.require(:flight).permit(:departure_airport_id, :arrival_airport_id, :number_of_passengers, :date)
  end
end
