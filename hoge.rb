




def wait_1sec
  a = [ "-", "|", "/", "-", "|", "/" ]

  10.times do |i|
    print "\r"
    print a[i%a.size]

    sleep 0.1
  end
end

# wait_1sec


(0..10).each do |i|
  print "\r#{i}sec  "
  sleep 1
end
