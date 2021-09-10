file = File.read("p059_cipher.txt")

digs_chr = file.split(",").map(&:to_i)

lowercase_alph = (97..122).to_a

lowercase_alph.map do |a|
	lowercase_alph.map do |b|
		lowercase_alph.map do |c|
			str = ''
			arr = [a, b, c].cycle
				arr.each_with_index do |let, index|
					break if index > digs_chr.size - 1
					str += (digs_chr[index] ^ let).chr
				end
				if str.include?(' a ') && str.include?(' the ')
					p str
					p str.chars.map(&:ord).sum 
					p "#{a.chr}#{b.chr}#{c.chr}"
				end
			end
		end

end
