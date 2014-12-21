inputs = []

while line = gets do
  break if line.to_i == 0
  inputs << line
end

inputs.each_with_index do |input, index|
  index = index + 1
  puts "Case " + index.to_s + ": " + input.to_s
end