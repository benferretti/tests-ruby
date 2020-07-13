def translate(string)
  vowels = [ "a" , "e" , "i" , "o" , "u"]
  alphabet = ("a" .. "z").to_a
  consonants = alphabet - vowels
  string  = string.split.map! do |w|
    if vowels.include?(w[0])
      w + 'ay'
    elsif w [0..1] == "qu" 
      w[2..-1] + "quay"
    elsif w[0..2] == "thr"
      w [3..-1]+"thray"
    elsif w[0..2]== "sch"
      w[3..-1]+"schay"
    elsif (consonants.include?(w[0]) && consonants.include?(w[1]) && consonants.include?(w[2])) || w[1..2] == "qu"
      w [3..-1] + w [0..2]+ 'ay'
    elsif consonants.include?(w[0]) && consonants.include?(w[1])
      w [2..-1] + w [0..1]+ 'ay'
    else consonants.include?(w[0])
      w[ 1..-1] + w[0..0] + 'ay' 
    end
  end
  return string.join(" ")
end