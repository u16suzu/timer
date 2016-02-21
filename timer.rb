
# Timer class :
# This class do measurement of time.
# Notify when finish.
class Timer
  def self.input_in_sec
    case ARGV[0].to_s
    when '-m'
      ARGV[1].to_i * 60
    when '-s'
      ARGV[1].to_i
    else
      ARGV[0].to_i * 60
    end
  end

  def wait(second)
    (0..second).each do |i|
      print "\r #{current_s(i)} / #{total_s(second)}"
      sleep 1
    end

    notify_finish
  end

  def current_s(i)
    "#{i/60}min #{i%60}sec"
  end

  def total_s(i)
    "(#{i/60}min #{i%60}sec)"
  end

  def notify_finish
    puts 'Timer finish!'
    TerminalNotifier.notify('Timer finish!', sound: 'Hero')
  end
end
