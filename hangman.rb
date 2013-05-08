require_relative './hangman_lib'

set_up
greeting
secret_word=get_word
while lives_left?(@lives)
 # while, weil eine linie zurück kommt im floatchart
 show_progress(secret_word) 
 puts "Rate einen Buchstaben!"
 guess = guess_letter(gets)
  letter_has_already_been_guessed =item_in_list?(guess, @already_guessed_letters)
  @already_guessed_letters << guess
  if letter_has_already_been_guessed 
    puts "You already guessed that letter. Try another one."
  elsif letter_in_word(guess, secret_word)
    puts "letter in word"
    if word_finished
      win (secret_word)
    end
  else 
    loose_a_live
  end
end
loose
