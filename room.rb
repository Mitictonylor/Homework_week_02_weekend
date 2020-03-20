class Room

  attr_reader :name, :seats, :fee, :playlist, :guest_list, :till

  def initialize(name, seats, fee)
    @name = name
    @seats = seats
    @fee = fee
    @playlist = []
    @guest_list = []
    @till = 0.0
  end
def available_seat?()
  return true if @seats > @guest_list.length
  return false if @seats <= @guest_list.length
end

  def check_in(guest,room)
    if available_seat?() == true
      @guest_list.push(guest)
      @till += @fee
      guest.pay(room)
    end

    def check_out(guest)
      @guest_list.delete(guest)
    end
    
  end












end
