
def decode_char(char)
  morse_code = { 
    ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E", "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J", "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O", ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T", "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y", "--.." => "Z", ".----" => "1", "..---" => "2", "...--" => "3", "....-" => "4", "....." => "5", "-...." => "6", "--..." => "7", "---.." => "8", "----." => "9", "-----" => "0"
  }
  if morse_code[char] != nil
    return morse_code[char]
  end
  return null
end

def decode (st) 
  arr = st.split("   ")
  str = ""
  arr.each { |item|
    words = item.split(" ")
    wd = ""
    words.each { |char|
      wd << decode_char(char)
    }
    str << " "
    str << wd
  }
  return str
end

puts decode("-- -.--   -. .- -- .")

puts decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
