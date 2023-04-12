
def decode_char(char)
  morse_code = { ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D"}
  if morse_code[char] != nil
    return morse_code[char]
  end
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