# specs for anagrams kata
require_relative '../lib/anagrams'

describe "anagrams" do

  before(:each) do
    @word = "abc"
    @mixes = ['acb', 'bca', 'bac', 'cab', 'cba']
  end

  it "has a dictionary" do
    words = get_dictionary
    words.length == 99171
  end

  it "has the right number of combinations for a word" do
    word_combos = mix_word(@word)
    word_combos.length.should eq(5)
  end

  it "finds all combinations of ordered letters for word" do
    word_combos = mix_word(@word)
    puts "word combos: #{word_combos}"
    @mixes.each { |m| word_combos.include?(m).should eq(true) }
  end

end
