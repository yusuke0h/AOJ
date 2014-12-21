while line = gets do
  h, w = line.to_s.split.map { |e| e.to_i }
  break if [h, w] == [0,0]

  h.times do |i|
    w.times do |j|
      print "#"
    end
    puts ""
  end
  puts ""
end