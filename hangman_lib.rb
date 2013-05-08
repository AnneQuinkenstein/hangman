def set_up
@lives=10
@already_guessed_letters=[]
@wrong_letters=[]
@letter=[]
@progress=[]
end

def greeting
puts "Hi! Welcome to animal hangman! Guess an animal in German!"
puts
end

def get_word 
secret_word=File.readlines("./words").shuffle.first.strip
end

def lives_left? (lives)
 lives > 0
end

def update_progress (secret_word)
 @progress=""
 secret_word.chars.each do |letter|
  # chars: give me every letter + each ist ein loop do + dazu einen varible in der röhre (irgendein name)
  # vergleichen von geratenem buchstaben mit wortbuchstaben
  if  @already_guessed_letters.include?(letter)
   @progress = @progress + letter
  else
   @progress = @progress + "_"
  end
 end
 puts
end

def show_progress (secret_word)
  update_progress(secret_word)
  puts @progress
end

def guess_letter (guessed_letter)
 guessed_letter.strip.downcase
end

def letter_in_word (word, letter)
  word.include?(letter)
end

def word_finished
  update_progress
  @progress == @secret_word
end

def item_in_list?(letter, letters_already_guessed)
    letters_already_guessed.include?(letter)
    # wieso kommt hier kein @ vor letters_already... 
    # wieso kommt das überhaupt nochmal? ist doch schon progress
end

def win (secret_word)
puts "#{secret_word}-You won!"
puts
puts
exit
end 

def loose_a_live
@lives =@lives-1
puts "You loose a live! #{@lives} left"
puts
end

def loose (secret_word)
puts "Das Wort waere #{secret_word} gewesen." 
puts
puts "Gebe >>ruby hangman.rb<< ein um nochmal zu spielen!"
puts
end



