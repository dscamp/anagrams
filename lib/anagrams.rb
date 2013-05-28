#! /usr/bin/env ruby

# anagrams kata from Dave Thomas at codekata.pragprog.com

require 'pathname'

def anagrams_for(word)
  words = retrieve_dictionary
  perms = mix_word(word)
  anagrams = []
  perms.each { |perm| anagrams << perm if words.include?(perm + "\n") }
  anagrams
end

def mix_word(word)
  mixes = []
  letters = word.split("")
  letters.permutation { |word|  mixes << word.join }
  mixes.delete(word)
  mixes
end

def retrieve_dictionary
  pn = Pathname.new("/usr/share/dict/words")
  pn.readlines
end







if __FILE__ == $0
  puts "mixing words"
  word = "sort"
  dict = retrieve_dictionary

  puts "dict is: #{dict.class}"
  puts "100th dict word is #{dict[99]}"
  puts "dict word is: #{dict[0].class}"
  if dict.include?(word + "\n")
    puts "word is real"
  else
    puts "word not real"
  end

end
