# 分単位で入力する
require "terminal-notifier"

def sec
  ARGV[0].to_i # * 60
end

(0..sec).each do |i|
  print "\r#{i}sec  "
  sleep 1
end

puts "Timer finish!"
TerminalNotifier.notify( 'Timer finish!', sound: 'Hero' )
