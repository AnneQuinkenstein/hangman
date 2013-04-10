def set_up(lives, letters_already_guessed)
 lives = 15
 letters_already_guessed = []
end

def greeting
puts "Hi! Welcome to animal hangman! Guess an animal in German!"
puts
end

def get_word 
File.readlines("./words").shuffle.first.strip
end

def lives_left?(lives)
 lives > 0
end

def show_progress (secret_word, letters_already_guessed)
 secret_word.chars.each do |letter|
  # chars: give me every letter + each ist ein loop do + dazu einen varible in der röhre (irgendein name)
  # vergleichen von geratenem buchstaben mit wortbuchstaben
  if  letters_already_guessed.include?(letter)
   print letter
  else
   print "_ "
  end
 end
 puts
end

def guess_letter (guessed_letter)
 guessed_letter.strip.downcase
 guessed_letter.downcase
 guessed_letter.
end

def letter_in_word (word, letter)
  word.include?(letter)
end

def word_finished (secret_word, letters_already_guessed)
# wenn nicht geratene Buchstaben include? antwortbuchstaben, dann falsch, sonst richtig
  secret_word.chars.all? { |letter| letters_already_guessed.include?(letter)}
end

def win (secret_word)
puts "#{secret_word}-You won!"
puts
puts
exit
end 

def loose_a_live (lives)
lives = lives-1
puts "You loose a live! #{lives} left"
puts
end

def loose (secret_word)
puts "Das Wort waere #{secret_word} gewesen." 
puts
puts "Gebe >>ruby hangman.rb<< ein um nochmal zu spielen!"
puts
end



