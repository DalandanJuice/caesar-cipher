def caesar_cipher string, shift_number
  letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  string = string.split('')
  new_string = ''
  string.each do |s|
    if(letters.include?(s.upcase))
      i = 0
      while (i < letters.length)
        if(s == letters[i])
          total_shift = shift_number + i
          if(total_shift > letters.length - 1)
            total_shift = decrease_shift total_shift
          end
          new_string += letters[total_shift]
        elsif(s == letters[i].downcase)
          total_shift = shift_number + i
          if(i + shift_number > letters.length - 1)
            total_shift = decrease_shift total_shift
          end
          new_string += letters[total_shift].downcase
        end
       i = i + 1
      end
    else
      new_string += s
    end
  end
  new_string
end
def decrease_shift number
  while(number > 25)
    number = number - 25
  end
number
end
puts ' '
caesar_cipher "What a string!", 5
