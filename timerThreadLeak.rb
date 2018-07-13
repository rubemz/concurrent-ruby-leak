require 'bundler/setup'
require 'concurrent'
require 'rbtrace'
require 'objspace'

ObjectSpace.trace_object_allocations_start

task = Concurrent::TimerTask.new(execution_interval: 1, timeout_interval: 0.5) do
  puts "Going to Sleep #{Time.now}"
  sleep 20
end

task.execute

loop do
  sleeping = Thread.list.count do |t|
    t.status == "sleep"
  end

  puts "total threads #{Thread.list.count}, sleeping #{sleeping}"

  sleep 1
end
