# frozen_string_literal: true

class Bar
  attr_reader :type, :price, :alchool_level
  def initialize(type, price, alchool_level)
    @type = type
    @price = price
    @alchool_level = alchool_level
  end

def drink_alchool_free?()
   if @alchool_level == 0.0
     return true
   else
     return false
   end
end




end
