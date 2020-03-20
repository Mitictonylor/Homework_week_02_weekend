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

def pay_room(room)
  @money -= room.fee
end






end
