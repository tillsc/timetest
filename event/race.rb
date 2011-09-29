module Event
  class Race < Base
    
    def initialize(data, event_queue, t)
      @@race_number+=1
      puts "RACE,#{@@race_number},#{timestamp(t)}"
      (rand(5) + 2).times do
        event_queue << TimedEvent.new(t, Rower.default_time, Event::SplitTime, Rower.new)
      end
      event_queue << TimedEvent.new(t, 3 * 60, Event::Race)
    end
    
    def self.sigma_t
      100
    end  
    
    @@race_number = 0
      
  end
end