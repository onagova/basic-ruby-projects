UPPER_CASE_A_ORD = 'A'.ord
UPPER_CASE_Z_ORD = 'Z'.ord
LOWER_CASE_A_ORD = 'a'.ord
LOWER_CASE_Z_ORD = 'z'.ord
ALPHABET_COUNT = UPPER_CASE_Z_ORD - UPPER_CASE_A_ORD + 1

def caesar_cipher(string, shift_factor)
  chars = string.split('')
  shifted_chars = chars.map { |char| shift_char(char, shift_factor) }
  shifted_chars.join('')
end

def shift_char(char, shift_factor)
  if is_upper_case?(char)
    base_delta = char.ord - UPPER_CASE_A_ORD
    shifted_delta = (base_delta + shift_factor) % ALPHABET_COUNT
    (UPPER_CASE_A_ORD + shifted_delta).chr
  elsif is_lower_case?(char)
    base_delta = char.ord - LOWER_CASE_A_ORD
    shifted_delta = (base_delta + shift_factor) % ALPHABET_COUNT
    (LOWER_CASE_A_ORD + shifted_delta).chr
  else
    char
  end
end

def is_upper_case?(char)
  char.ord.between?(UPPER_CASE_A_ORD, UPPER_CASE_Z_ORD)
end

def is_lower_case?(char)
  char.ord.between?(LOWER_CASE_A_ORD, LOWER_CASE_Z_ORD)
end

# loop do
#   print "Shifting Text: "
#   shifting_text = gets.chomp
#   print "Shift Factor: "
#   shift_factor = gets.chomp.to_i

#   puts "=> #{caesar_cipher(shifting_text, shift_factor)}"

#   print "Continue? [Y/n] "
#   continue_response = gets.chomp
#   break unless continue_response.downcase == 'y'
# end
