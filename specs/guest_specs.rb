require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guest')
require_relative('../song')
require_relative('../room')
require_relative('../bar')

class TestGuest < Minitest::Test

def setup()
  @song1 = Song.new("acdc","Thunderstorm")
  @song2 = Song.new("guns_n_roses", "November rain")
  @song3 = Song.new("bon jovi", "it's my life")
  @favourite_songs = [@song1, @song2, @song3]
  @guest = Guest.new("Antonio",@favourite_songs, 23.5, 32)
end


end
