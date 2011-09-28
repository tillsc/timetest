class TimedEvent
  
  attr_reader :time, :event_class, :data
  
  def initialize(delta_t, event_class, data = nil)
    @event_class = event_class
    @time = Time.now + (delta_t + (rand(event_class.sigma_t * 2.0) - event_class.sigma_t)) / TIME_FACTOR
    @data = data
  end
  
  def <=>(other)
    self.time <=> other.time
  end  
  
end