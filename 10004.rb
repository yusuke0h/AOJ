

def swap a,b
  return b,a
end

ar = gets.split.map(&:to_i)

if ar[0] > ar[1]
  ar[0], ar[1] = swap(ar[0], ar[1])
end

if ar[1] > ar[2]
  ar[1], ar[2] = swap(ar[1], ar[2])
end

if ar[0] > ar[1]
  ar[0], ar[1] = swap(ar[0], ar[1])
end

ar.each_with_index do |e, i|
  if ar.size == i+1
    puts e
  else
    print e ," "
  end
end



