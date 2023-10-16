class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @departure_dates = Flight.all.map { |f| [f.departure_time.to_date]}
    # The above isn't what I want to do right now. That's what I want to do after submitting the form.
    # What I want is to send the browser a simple date parameter. Month, day, year.
    # I want the browser to take that parameter and return all the Flight objects 
    # whose departure_time includes the date submitted by the form.
    # First, what I am trying to do is get a list of all the days when flights exist.
    # I can do this by going through the whole list of Flight objects.
    # Look at the departure_time of each one and convert it to a simple date.
    # Then return this array of dates to populate the drop-down.
    # Later I will have to figure out how to deal with using this date again
    # to find Flight objects with matching departure_time.
  end
end
