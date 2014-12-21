n = gets.to_i
nums = gets.to_s.split.map { |e| e.to_i }
rnums = []

n.times do |i|
  i += 1
 rnums << nums[n-i]
end

puts rnums.join(" ")