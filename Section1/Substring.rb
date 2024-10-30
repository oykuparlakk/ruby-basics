dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(word, dictionary)
  word_downcase = word.downcase
  counts = Hash.new(0) 

  dictionary.each do |substring|
    occurrences = word_downcase.scan(substring.downcase).length
    counts[substring] += occurrences if occurrences > 0
  end

  counts
end


substrings("below", dictionary)
