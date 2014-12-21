a, b = gets.split(" ").map { |e| e.to_i }
puts [a/b, a%b, sprintf("%.8f", a.to_f/b.to_f)].join(" ")