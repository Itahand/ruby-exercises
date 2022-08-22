def caesar_cipher(string, shift = 1)

  # Create alphabet in lower case
  alphabet  = Array('a'..'z')

  # Creates a Hash with the alphabet array merged with an array that has shifted its letters
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  # This hash will look something like --> {"a" => "c", "b" => "d"}

  # Create alphabet in upper case
  alphabet = Array('A'..'Z')
  caps     = Hash[alphabet.zip(alphabet.rotate(shift))]

  # Return a new hash that includes upper and lower case alphabet.
  encrypter = non_caps.merge(caps)

  # Iterate through the input string and fetch the corresponding letter from the encrypter hash.
  string.chars.map { |c| encrypter.fetch(c, c)}
end

p caesar_cipher("A", 2).join