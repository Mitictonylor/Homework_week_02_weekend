require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../song')
require_relative('../room')


class TestSong < Minitest::Test
  def setup
    @song1 = Song.new("acdc","Thunderstorm")
    @song2 = Song.new("guns_n_roses", "November rain")
  end







end
