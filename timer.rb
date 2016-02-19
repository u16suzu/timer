
class Timer
  def self.input_in_sec
    ARGV[0].to_i # * 60
  end

  def wait( second )
    (0..second).each do |i|
      print "\r#{i} sec  "
      sleep 1
    end

    notify_finish
  end

  def notify_finish
    puts "Timer finish!"
    TerminalNotifier.notify( 'Timer finish!', sound: 'Hero' )
  end

end
