r = gets.to_f

syu = 2 * r * Math::PI
area = r * r * Math::PI

puts [sprintf("%.8f", area), sprintf("%.8f", syu)].join(" ")