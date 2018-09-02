require 'pry'

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
    puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
  end


  def list(songs)         # each song is a a string element in the songs array
    puts songs
  end

  def play(songs)
    puts "Please enter a song name or number:"
    user_song_choice = gets.chomp
    if (1..9).to_a.include?(user_song_choice.to_i)
      puts "Playing #{songs[user_song_choice.to_i - 1]}"
    elsif songs.include?(user_song_choice)
      puts "Playing #{user_song_choice}"
    else
      puts "Invalid input, please try again"
    end
  end

  def exit_jukebox
    puts "Goodbye"
  end

  def run(songs)
    help
    command_input = ""
    until command_input == "exit"
      puts "Please enter a command:"
      command_input = gets.chomp
      case command_input
      when "list"
        list(songs)
      when "play"
        list(songs)
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        help
      end
    end 
  end

  # https://apidock.com/ruby/Enumerator/each_with_index

      # if song || value == user_input
      #   puts "Playing #{song[index]}"
      # else
      #   puts "Invalid input, please try again"
      # end







# def say_hello(name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name:"
# users_name = gets.chomp
#
# # The user input is obtained by the gets method,
# # then any trailing whitespace gets removed via the chomp method,
# # and finally the result is stored in the users_name local variable
#
# puts say_hello(users_name)
