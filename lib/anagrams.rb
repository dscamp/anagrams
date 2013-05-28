#! /usr/bin/env ruby

# anagrams kata from Dave Thomas at codekata.pragprog.com

require 'pathname'


def mix_word(word)
  mixes = []
  letters = word.split("")
  letters.permutation { |word|  mixes << word.join }
  mixes.delete(word)
  mixes
end

def get_dictionary
  pn = Pathname.new("/usr/share/dict/words")
  words = pn.readlines
end







if __FILE__ == $0
  puts "mixing words"
  word = "abc"
  words = mix_word(word)

  puts "the words are"
  words.each { |w| puts w }
end
