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

  it "finds all combinations of ordered letters for word" do
    word_combos = mix_word(@word)
    @mixes.each { |m| word_combos.include?(m).should eq(true) }
  end

  it "returns 0 if no anagrams found in the dictionary" do
    word = "be"
    anagrams = anagrams_for(word)
    puts "anagrams are #{anagrams}"
    anagrams.length.should be(0)    
  end

  it "returns 2 anagrams ('rots' and 'tors') for 'sort'" do
    word = 'sort'
    anagrams = anagrams_for(word)
    anagrams.include?('rots').should be(true)
    anagrams.include?('tors').should be(true)
  end

  it "returns 'pinkish' when 'kinship' is the word" do
    word = 'kinship'
    anagrams = anagrams_for(word)
    anagrams.include?('pinkish').should be(true)
  end


end
