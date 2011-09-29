class TimedEvent
  
  attr_reader :t, :scaled_t, :event_class, :data
  
  def initialize(t, delta_t, event_class, data = nil)
    @event_class = event_class
    delta_t =  delta_t + (rand(event_class.sigma_t * 2000000)/1000000.0 - event_class.sigma_t)
    @t = t + delta_t 
    @scaled_t = Time.now + delta_t / TIME_FACTOR
    @data = data
  end
  
  def <=>(other)
    self.t <=> other.t
  end  
  
end