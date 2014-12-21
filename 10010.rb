while line = gets
  a, op, b = line.split(" ")
  a = a.to_i
  b = b.to_i

  case op
  when "+"
    puts a + b
  when "-"
    puts a - b
  when "*"
    puts a * b
  when "/"
    puts (a.to_f / b.to_f).floor
  when "?"
    break
  end
end