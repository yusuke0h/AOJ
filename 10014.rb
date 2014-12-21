def even? num
  if num % 2 == 0
    return true
  else
    return false
  end
end

while line = gets do
  h, w = line.to_s.split.map { |e| e.to_i }
  break if [h, w] == [0,0]

  h.times do |i|
    i = i+1
    w.times do |j|
      j = j+1
      point_sum = i + j
      if point_sum.even?
        print "#"
      else
        print "."
      end
    end
    puts ""
  end
  puts ""
end