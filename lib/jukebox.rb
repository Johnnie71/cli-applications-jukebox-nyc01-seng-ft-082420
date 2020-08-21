# Add your code here

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
 puts "I accept the following commands:\n"
 puts "- help : displays this help message\n"
 puts "- list : displays a list of songs you can play\n"
 puts "- play : lets you choose a song to play\n"
 puts "- exit : exits this program\n"
end

# def play(songs)
#   puts "Please enter a song name or number:"
#   input = gets.strip
#   number = input.to_i - 1 
  
#   if number < 0 && songs.include?(input)
#     index = songs.index(input)
#     puts "Playing #{songs[index]}"
#   elsif number >= 0 && songs[number] != nil
#     puts "Playing #{songs[number]}"
    
#   end
# end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  # valid = false
  songs.each_with_index do |song, index|
    if (choice.to_i - 1 == index)
      puts "Playing #{songs[index]}"
      # valid = true
    elsif (choice == song)
      puts "Playing #{choice}"
      # valid = true
    end
  end
  puts "Invalid input, please try again" if valid == false
end