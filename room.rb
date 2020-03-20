class Room

  attr_reader :name, :seats, :fee, :playlist, :guests, :till

  def initialize(name, seats, fee)
    @name = name
    @seats = seats
    @fee = fee
    @playlist = []
    @guests = []
    @till = 0.0
  end

end
