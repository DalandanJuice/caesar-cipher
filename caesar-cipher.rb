def caesar_cipher string, shift_number
  letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  string = string.split('')
  new_string = ''
  string.each do |s|
    if(letters.include?(s.upcase))
      i = 0
      while (i < letters.length)
        if(s == letters[i])
          index = shift_index i,shift_number
          new_string += letters[index]
        elsif(s == letters[i].downcase)
          index = shift_index i,shift_number
          new_string += letters[index].downcase
        end
       i = i + 1
      end

    else
      new_string += s
    end
  end
  new_string
end

def shift_index index, shift_number
  total_shift = index + shift_number
  while total_shift >= 26
    total_shift = total_shift - 26
  end
  total_shift
end


