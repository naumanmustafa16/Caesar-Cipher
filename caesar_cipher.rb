def caeser_cipher(string,shift)
  
  small_abc = ('a'..'z').to_a
  large_abc = ('A'..'Z').to_a

# case conversion
# first we will convert string to array for manipulation
# Conversion will be done on the basis if the character is 1) a small letter
# 2) is or not a punctuation mark 
# Same steps are repeated to convert for large alphabets

to_small_array_from_my_string = [].push(
    string.split('').map do |value|
      if small_abc.include?(value)
        small_abc.index(value)
      else
        value
      end
    end
  ).flatten
# p to_small_array_from_my_string

to_small_string_from_array = [].push(
  to_small_array_from_my_string.map do |value|
    if value.is_a? Integer
      if value + shift > 25
        index = (value + shift - 26)
        small_abc[index]
      else
        small_abc[value + shift]
      end
    else
      value
    end
  end
).flatten
small_converted = to_small_string_from_array.join('')

to_large_array_from_my_string = [].push(
  small_converted.split('').map do |value|
    if large_abc.include?(value)
      large_abc.index(value)
    else
      value
    end
  end
).flatten
# p to_large_array_from_my_string

to_large_string_from_array = [].push(
  to_large_array_from_my_string.map do |value|
    if value.is_a? Integer
      if value + shift > 25
        index = (value + shift - 26)
        large_abc[index]
      else
        large_abc[value + shift]
      end
    else
      value
    end
  end
).flatten
p to_large_string_from_array.join('')
end

caeser_cipher("I am your friend!",2)