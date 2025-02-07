require './lib/renter'
require './lib/dock'

class Dock
    attr_reader :name,
                :max_rental_time,
                :rental_log

  def initialize(name, max_rental_time)
    @name            = name
    @max_rental_time = max_rental_time
    @rental_log      = {}

  end

  def rent(boat, renter)
    @rental_log[boat] = renter
  end



  def charge(boat)
    if boat.amount >= @max_rental_time
       boat.amount
     end
  end
end
