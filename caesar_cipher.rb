def caesar_cipher(phrase, offset)
  string_array = []
  ciphered = []
  phrase.each_byte { |c| string_array.push c }
  for c in string_array
    if (65..90).include?(c)
      c + offset >= 91 ? ciphered.push((c + offset - 26).chr) : ciphered.push((c + offset).chr)
    elsif (97..122).include?(c)
      c + offset >= 123 ? ciphered.push((c + offset - 26).chr) : ciphered.push((c + offset).chr)
    else
      ciphered.push(c.chr)
    end
  end
  ciphered.join
end
