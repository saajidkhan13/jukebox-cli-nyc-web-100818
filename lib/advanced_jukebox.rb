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



def list(my_songs)
  my_songs.each_with_index do |value, index|
    puts "#{index+1}. #{value}"
  end 
end 


def play(my_songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp 
  if (1..9).any? { |x| x == song_input.to_i}
    song_name = my_songs[song_input.to_i-1]
    puts "Playing #{song_name}"
    elsif my_songs.any? { |title| title === song_input}
    puts "Playing #{song_input}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  user_command = nil 
  until user_command == "exit"
  puts "Please enter a command:" 
  user_command = gets.chomp
  case user_command 
  when "help"
    help 
    when "list"
      list(my_songs)
      when "play"
        play(my_songs)
        when "exit"
          exit_jukebox
        end 
      end 
end 

end 
end 
end 
end 
end 
end
