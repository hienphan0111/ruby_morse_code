
def decode_char(char)
  morse_code = { ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D"}
  if morse_code[char] != nil
    return morse_code[char]
  end
end
