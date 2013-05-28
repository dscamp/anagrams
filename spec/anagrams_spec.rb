# specs for anagrams kata
require_relative '../lib/anagrams'

describe "anagrams" do

  before(:each) do
    @word = "abc"
    @mixes = ['acb', 'bca', 'bac', 'cab', 'cba']
  end

  it "has a dictionary" do
    words = retrieve_dictionary
    words.length == 99171
  end

  it "has the right number of combinations for a word" do
    word_combos = mix_word(@word)
    word_combos.length.should eq(5)
  end

  it "finds all combinations of ordered letters for word" do
    word_combos = mix_word(@word)
    @mixes.each { |m| word_combos.include?(m).should eq(true) }
  end

  it "removes from the list anything not found in the dictionary" do
    word = "be"
    anagrams_for(word).should_not be(nil)
    
  end

end
