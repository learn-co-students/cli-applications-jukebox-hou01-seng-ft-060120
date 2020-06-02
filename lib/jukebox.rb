def help
	puts	"I accept the following commands:"
	puts	"- help : displays this help message"
	puts	"- list : displays a list of songs you can play"
	puts	"- play : lets you choose a song to play"
	puts	"- exit : exits this program"
	
end

def list(songs)
	songs.each_with_index do |song, index|
		indexplusone = index + 1
    puts "#{index+1}. #{song}"
  end
end



def play(songs)
	puts "Please enter a song name or number:"
  song_name = gets.strip()
  song_number = song_name.to_i
  
  if song_number != nil && 0 < song_number && song_number < 10
    puts "Playing #{songs[song_number - 1]}"
  elsif songs.index(song_name) != nil
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
 end
 
 
def exit_jukebox
  puts "Goodbye"
end 


def run(songs)
  puts "Please enter a command:"
  command = gets.strip 
  
  while command != "exit"
  
    if command == "help"
      help
    elsif command == "list" 
      list(songs)
    elsif command == "play" 
      play(songs)
    end
  end
  exit_jukebox 
 end 
 
   
   
  
   
 