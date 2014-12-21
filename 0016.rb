include Math

# [east, north]
point = [0.0, 0.0]
index = 0
now_angle = 0

while line = gets do
  index += 1
  forward, next_angle = line.to_s.split(",").map { |e| e.to_f }
  if [forward, next_angle] == [0,0]
    point.each{|e| puts e.truncate}
    break
  end

  if index == 1
    east = point.first
    north = point.last + forward
  else
    east = point.first + (forward * Math.sin(now_angle * Math::PI / 180.0))
    north = point.last + (forward * Math.cos(now_angle * Math::PI / 180.0))
  end
  point = [east, north]

  now_angle = now_angle + next_angle

end