#!/usr/bin/ruby

require 'timed_event'
require 'rower'
require 'event'

TIME_FACTOR = 10
PROGRAM_START = Time.now

events = Class.new(Array) {def <<(item) super; sort!; end}.new
events << TimedEvent.new(Time.new, 0, Event::Race)

while(true) 
  while (events.first.scaled_t < Time.now)
    e = events.shift
    e.event_class.new(e.data, events, e.t)
  end  
  sleep(0.2)
end