inputs = []

while line = gets do
  break if line.split.map { |e| e.to_i } == [0,0]
  inputs << line.split.map { |e| e.to_i }
end

inputs.each do |input|
  if input.first > input.last
    puts input.last.to_s + " " + input.first.to_s
  else
    puts input.first.to_s + " " + input.last.to_s
  end
end