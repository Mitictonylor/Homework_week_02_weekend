require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../song')
require_relative('../room')
require_relative('../bar')

class TestRoom < Minitest::Test
  def setup
    @room1 = Room.new("Room 1", 2, 3.0,)
    @song1 = Song.new("acdc","Thunderstorm")
    @song2 = Song.new("guns_n_roses", "November rain")
    @song3 = Song.new("bon jovi", "it's my life")
    @favourite_songs = [@song1, @song2, @song3]
    @guest = Guest.new("Antonio",@favourite_songs, 23.5, 32)
    @song4 = Song.new("acdc", "welcome to the jungle")
    @song5 = Song.new("shakira", "Hips don't lie")
    @favourite_songs2 = [@song1, @song4, @song5]
    @guest1 = Guest.new("Angelo", @favourite_songs2, 12.4,16)
    @drink1 = Bar.new(:beer, 3.5, 3.5)
    @drink2 = Bar.new(:wine, 22.5, 13.5)
    @drink3 = Bar.new(:water, 1.5, 0)
    @drink4 = Bar.new(:soda, 3.5, 0)
    @drink5 = Bar.new(:liquor, 3.0 ,5 )


  end
def test_is_any_seat_available_in_room()
  assert_equal(true, @room1.available_seat?())
end

  def test_check_in_guess()
    @room1.check_in(@guest,@room1)
    assert_equal(1, @room1.guest_list.length())
    assert_equal(3.0, @room1.till())
    assert_equal(20.5, @guest.money())
  end

  def test_check_in_guess_full_room()
    @room1.check_in(@guest,@room1)
    @room1.check_in(@guest,@room1)
    @room1.check_in(@guest,@room1)
    assert_equal(2, @room1.guest_list.length())
    assert_equal(6.0, @room1.till())
    assert_equal(17.5, @guest.money())
  end

def test_check_out()
  @room1.check_in(@guest,@room1)
  @room1.check_in(@guest1,@room1)
  @room1.check_out(@guest)
  assert_equal(1, @room1.guest_list.length())
  assert_equal(6.0, @room1.till())
  assert_equal(20.5, @guest.money())
  assert_equal(9.4, @guest1.money())
end

def test_add_songs()
  @room1.add_song(@song1)
  assert_equal(1,@room1.playlist.length())
end





end
