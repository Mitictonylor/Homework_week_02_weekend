require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../song')
require_relative('../room')
require_relative('../bar')

class TestBar < Minitest::Test
  def setup()
    @song1 = Song.new("acdc","Thunderstorm")
    @song2 = Song.new("guns_n_roses", "November rain")
    @song3 = Song.new("bon jovi", "it's my life")
    @favourite_songs = [@song1, @song2, @song3]
    @song4 = Song.new("shakira", "hips don't lie")
    @guest = Guest.new("Antonio",@favourite_songs, 23.5, 32)
    @room1 = Room.new("Room 1", 2, 3.0,)
    @song4 = Song.new("acdc", "welcome to the jungle")
    @song5 = Song.new("shakira", "Hips don't lie")
    @favourite_songs2 = [@song1, @song4, @song5]
    @guest2 = Guest.new("Angelo", @favourite_songs2, 12.4,16)
    @drink1 = Bar.new(:beer, 3.5, 3.5)
    @drink2 = Bar.new(:wine, 22.5, 13.5)
    @drink3 = Bar.new(:water, 1.5, 0.0)
    @drink4 = Bar.new(:soda, 3.5, 0.0)
    @drink5 = Bar.new(:liquor, 3.0 ,5.0 )

  end


  def test_drink_suitable_for_under_18()
    assert_equal(true,@drink3.drink_alchool_free?)
  end
  def test_drink_not_suitable_for_under_18()
    assert_equal(false,@drink1.drink_alchool_free?)
  end
end
