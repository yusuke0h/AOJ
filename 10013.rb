while line = gets do
  h, w = line.to_s.split.map { |e| e.to_i }
  break if [h, w] == [0,0]

  h.times do |i|
    w.times do |j|
      if i == 0 || i == h-1
        print "#"
      else
        if j == 0 || j == w-1
          print "#"
        else
          print "."
        end
      end
    end
    puts ""
  end
  puts ""
end