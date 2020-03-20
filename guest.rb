class Guest
attr_reader :name, :favourite_songs, :money, :age

  def initialize(name, favourite_songs, money, age)
    @name = name
    @favourite_songs = favourite_songs
    @money = money
    @age = age

  end

end
