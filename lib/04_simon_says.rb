def echo(a)
	p a
end

def shout(a)
	a.split('').map(&:capitalize).join('')
end

def repeat(a, n=2)
	((a+" ")* n).strip
end

def start_of_word(a, b)
	a[0...- (a.length - b)]
end

def first_word(a)
	a.split[0]
end

def titleize (a)
	littlewords = %w{a an the and but or for nor of}
  	a.split.each_with_index.map{|x, i| littlewords.include?(x) && i > 0 ? x : x.capitalize }.join(" ")
end
