#!/usr/bin/env ruby
require 'rubygems'
require 'chronic'
require 'chronic_duration'
require 'colorize'
t = Time.parse ARGV.join(" ")
secs = (t - Time.now).to_i
words = ChronicDuration.output(secs.abs, :format => :long)
text = "#{t.strftime('%A, %d %B, %Y at %I:%M %p (%z %Z)')} (#{words})"
puts (secs > 0) ? text.green : text.red
