# Add your code here
def help 

    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
  new_list = songs.each_with_index {|val, index| puts "#{index + 1}. #{val}"}
  new_list
end

def play(songs)
puts "Please enter a song name or number:"
users_song = gets.strip

songs.each_with_index do |val, index|
  
  if users_song == val || users_song.to_i == index + 1
    puts "Playing #{val}" 
    return val
  end
end
puts "Invalid input, please try again"
end

def exit_jukebox 
  puts "Goodbye"
end

def run(songs) 
  while true
    puts "Please enter a command:"
    command = gets.strip
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    end
  end
end
