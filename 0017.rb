def table alpha
  if alpha == "."
    return "."
  else
    h = {
      "a": "b",
      "b": "c",
      "c": "d",
      "d": "e",
      "e": "f",
      "f": "g",
      "g": "h",
      "h": "i",
      "i": "j",
      "j": "k",
      "k": "l",
      "l": "m",
      "m": "n",
      "n": "o",
      "o": "p",
      "p": "q",
      "q": "r",
      "r": "s",
      "s": "t",
      "t": "u",
      "u": "v",
      "v": "w",
      "w": "x",
      "x": "y",
      "y": "z",
      "z": "a"
    }
    return h[alpha.to_sym]
  end
end

def decode term, key
  key.times{ term = term.chars.map { |e| table(e) }.join }
  term
end

hints_words = Hash.new(false)
 %w(the this that).each{|e| hints_words[e] = true }

while line = gets do
  correct_key = nil
  terms = line.strip.split.map(&:to_s)
  hint_terms = terms.select{|e| e.size == 3 || e.size == 4}
  0.upto(25) do |key|
    hint_terms.each do |term|
      decoded_term = decode term, key
      correct_key = key if hints_words[decoded_term]
    end
    if correct_key
      puts terms.map{ |term| decode term, correct_key }.join(" ")
      break
    end
  end
end