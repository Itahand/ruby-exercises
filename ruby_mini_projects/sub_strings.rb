dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(strings, dictionary)

  # Iterate through the dictionary array
  dictionary.map { |word|
    # Evaluate if the current word is in the input strings
    puts word if strings[word]
    # Add the word to a Hash and increase its value by 1
  }

end

sub_strings("below", dictionary)