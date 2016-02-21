
class Timer
  def self.input_in_sec
    case ARGV[0].to_s
    when "-m"
      ARGV[1].to_i
    when "-s"
      ARGV[1].to_i * 60
    else
      ARGV[0].to_i * 60
    end
  end

  def wait( second )
    (0..second).each do |i|
      print "\r#{i}/#{second} sec  "
      sleep 1
    end

    notify_finish
  end

  def notify_finish
    puts "Timer finish!"
    TerminalNotifier.notify( 'Timer finish!', sound: 'Hero' )
  end

end
