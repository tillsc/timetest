module Event
  class Base
  
    def self.sigma_t
      0
    end  
  
    def timestamp(t)
      t.strftime("%H:%M:%S.#{t.usec}")
    end  
  
  end
end    