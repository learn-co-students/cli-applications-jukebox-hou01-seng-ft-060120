songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
    
end


def list(songs)
    songs.each_with_index do |song, num|
      x = num + 1
    puts "#{x}. #{song}"
    end
end


def play(songs)
  puts "Please enter a song name or number:"
  user = gets.strip
  
  if songs.include?(user) 
    puts "Playing #{user}"
    return
  end
  
  user_by_num = user.to_i
  if user_by_num >= 1 && user_by_num <= songs.length
    puts "Playing #{songs[user_by_num - 1]}"
  else 
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
 puts "Please enter a command:"
 user = gets.strip
  case user 
    when "exit"
      exit_jukebox
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
  end
  
end
