class Guest
attr_reader :name, :favourite_songs, :money, :age

  def initialize(name, favourite_songs, money, age)
    @name = name
    @favourite_songs = favourite_songs
    @money = money
    @age = age

  end

def check_favourite_songs_size()
  return @favourite_songs.size()
end

def add_favourite_song(song)
  @favourite_songs.push(song)
end

def pay(room)
  @money -= room.price
end

def fav_song()
  return "Whoo!!"
end

def age?()
  return true if @age >=18
  return false if @age <18
end

def check_money_are_enough?(item)#drink or room
if @money >= item.price
  return true
else
  return false
end
end





end
