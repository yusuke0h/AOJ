all_cards = Hash.new { |hash, key| hash[key] = [] }

["S", "H", "C", "D"].each do |pat|
  1.upto(13) do |num|
    all_cards[pat] << num
  end
end

card_num = gets.to_i

cards = Hash.new { |hash, key| hash[key] = [] }
card_num.times do
  pat, num = gets.split
  cards[pat] << num.to_i
end
# p cards

lost_cards = Hash.new { |hash, key| hash[key] = [] }
cards.each do |pat, nums|
  next if nums.size == 13
  lost_cards[pat] = (all_cards[pat] - cards[pat]).sort
end
# p lost_cards

["S", "H", "C", "D"].each do |pat|
  lost_cards[pat].each do |num|
    puts [pat, num].join(" ")
  end
end

