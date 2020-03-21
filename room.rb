


class Room

  attr_reader :name, :seats, :price, :playlist, :guest_list, :till

  def initialize(name, seats, price)
    @name = name
    @seats = seats
    @price = price
    @playlist = []
    @guest_list = []
    @till = 0.0
  end

  def available_seat?()
    return true if @seats > @guest_list.length
    return false if @seats <= @guest_list.length
  end

  def check_in(guest,room)
    if available_seat?() == true && guest.check_money_are_enough?(room) == true
      @guest_list.push(guest)
      @till += @price
      guest.pay(room)
    end
  end

  def check_out(guest)
    @guest_list.delete(guest)
  end

  def add_song(song)
    @playlist.push(song)
  end

  def buy_drink(drink, guest)
      if (drink.drink_alchool_free?() == true && guest.check_money_are_enough?(drink) ==true) || (drink.drink_alchool_free?()==false && guest.age() ==true && guest.check_money_are_enough?(drink) == true)
        guest.pay(drink)
        @till += drink.price
      end
  end


  def play_fav_song(guest)
    if (@playlist & guest.favourite_songs).empty?()
      else
        guest.fav_song()
    end
  end





end
