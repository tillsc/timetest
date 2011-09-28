module Event
  class SplitTime < Base
    
    def initialize(data, event_queue)
      rower = data
      puts "#{rower.measuring_point}M,#{rower.rfid},#{timestamp}"
      if rower.next_measuring_point
        event_queue << TimedEvent.new(Rower.default_time, Event::SplitTime, rower)
      end  
    end
    
    def self.sigma_t
      10
    end  
    
    @@race_number = 0
      
  end
end