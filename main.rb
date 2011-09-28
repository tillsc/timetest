#!/usr/bin/ruby

require 'timed_event'
require 'rower'
require 'event'

TIME_FACTOR = 10

events = Class.new(Array) {def <<(item) super; sort!; end}.new
events << TimedEvent.new(0, Event::Race)

while(true) 
  while (events.first.time < Time.now)
    e = events.shift
    e.event_class.new(e.data, events)
  end  
  sleep(1)
end