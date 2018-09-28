my_songs = {
"Go Go GO" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/04.mp3',
"Wolf" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/Emerald-Park/05.mp3',
"Blue" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/home/saajidkhan13/jukebox-cli-nyc-web-100818/audio/Emerald-Park/07.mp3'
}
  

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
