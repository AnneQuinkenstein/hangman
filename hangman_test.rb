require 'minitest/autorun'
# require nimmt code von einem dokument und gibt es einem anderen
require_relative './hangman_lib'

describe "letter_in_word" do
 it "says true if the letter is in the word" do
  letter_in_word("apple","a").must_equal(true)
  letter_in_word("apple","b").must_equal(false)
 end
end

describe "guess_letter" do
 it "tests if letter is usable" do
  guess_letter("a").must_equal("a")
  guess_letter("B").must_equal("b")
  guess_letter("ABskj").must_equal("a")
  guess_letter("y\n").must_equal("y")
  #guess_letter("123").must_give_error
  #guess_letter("#")
 end
end
