# given the name of a directory
#1. list the normal files in that directory
#2. for each subdirctory: 
 #1. list the normal files in that directory
 #2. for each subdirectory: 
  #...
  
#USAGE: ruby list_directory.rb /home/anne/Dokumente
# directory.rb ist ein Programm-Argument (wie Methoden-Argument def ..)
#ARGV Argument Variable, V heißt Nummer von Variablen egal 
# Variable haben eine Wert und ändern sich, ARGV ist konstant und changes never

Dir[ARGV.first + "/*"].each do |file_or_dir|
if File.directory?(file_or_dir)
puts "adsfjkl"
# Dir[ARGV.first + "/*"]
else
puts "#{file_or_dir}"
end
end

# puts "Listing #{[ARGV.first]}"
#if File.directory?(["/*"]) 
#puts Dir[ARGV.first + "/*"]
#else 
#ruby list_directory.rb .
#end



