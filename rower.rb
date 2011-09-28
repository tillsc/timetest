class Rower

  attr_reader :rfid, :measuring_point

  MEASURING_DISTANCE = 500

  def initialize
    @rfid = rand(100000000)
    @measuring_point = 0
    puts "INIT,#{@rfid}"
    next_measuring_point
  end 
  
  def next_measuring_point
    @measuring_point += MEASURING_DISTANCE
    @measuring_point < 2000     
  end 
  
  def self.default_time
    1.4 * MEASURING_DISTANCE/500 * 60
  end  

end
