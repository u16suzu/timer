# 分単位で入力する
require "terminal-notifier"

sleep ARGV[0].to_i # * 60
puts "Timer finish!"
TerminalNotifier.notify( 'Timer finish!' )
