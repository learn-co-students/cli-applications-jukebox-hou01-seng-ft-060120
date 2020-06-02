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
    puts "#{indexplusone}. #{song}"
  end
end

def play(song_name)
	puts "Please enter a song name or number:"
  song = gets.strip

  if (1..9).to_a.index(song.to_i) != nil
    puts "Playing #{song_name[song.to_i - 1]}"
  elsif song_name.index(song) != nil
    puts "Playing #{song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
    puts "Goodbye"
end

def run(commands)
  puts "Please enter a command:"
  command = gets.strip

    if command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "play"
      play(songs)
    elsif command == "exit"
      exit_jukebox
    end
end
