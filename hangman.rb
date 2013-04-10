require_relative './hangman_lib'

set_up(lives, letters_already_guessed)
greeting
secret_word = get_word
while lives_left?(lives)
 # while, weil eine linie zurück kommt im floatchart
 show_progress(secret_word, letters_already_guessed)
 puts "Rate einen Buchstaben!"
 input gets
 guessed_letter = guess_letter(input)
 letters_already_guessed = letters_already_guessed << guessed_letter
 if letter_in_word(secret_word, @letters_already_guessed.last)
  if word_finished(secret_word, letters_already_guessed)
	win(secret_word)
  end
 else
 loose_a_live(lives)
 end
end
loose(secret_word)
