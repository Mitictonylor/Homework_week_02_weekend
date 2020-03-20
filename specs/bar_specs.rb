require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bar')
require_relative('../room')

class TestBar < Minitest::Test
  def setup()
    @drink1 = Bar.new(:beer, 3.5, 3.5)
    @drink2 = Bar.new(:wine, 22.5, 13.5)
    @drink3 = Bar.new(:water, 1.5, 0)
    @drink4 = Bar.new(:soda, 3.5, 0)
    @drink5 = Bar.new(:liquor, 3.0 ,5 )

  end


end
