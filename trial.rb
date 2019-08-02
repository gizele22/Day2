# Force Flush Ruby
old_sync = $stdout.sync
$stdout.sync = true

#welcome game
#player_name
#game_level
#start_game
#scoreboard
#repeat_game

# set initial values
@easy_secret = rand(1..10)
@medium_secret = rand(51..70)
@hard_secret = rand(71..100)

@count = 1
@previous_tries = [] # << Array
@history = {} # << Hash
@chances = 6

# start here

puts "Welcome to Numix-Lucky Number"
puts "Enter Your Name"
@player_name = gets.chomp


def run_game
  puts "Choose Your Level"
  puts "1 - Easy"
  puts "2 - Medium"
  puts "3 - Hard"
  choice = gets.to_i

  if choice == 1
    secret_number = @easy_secret
  elsif choice == 2
    secret_number = @medium_secret
  elsif choice == 3
    secret_number = @hard_secret
  end

  puts "Guess Your lucky Number. You Have #{@chances} Chances"
  #puts "Secret: #{secret_number}"
  guess = gets.chomp.to_i

  while @count < @chances
    if secret_number != guess
      @previous_tries << guess
      puts "Keep Calm and Try Again"
      puts "#{@previous_tries}"
      @count += 1
      guess = gets.to_i
    else
      puts "Congratulations! You Got It"

      score = @chances - @count
      @history[@player_name] = score

      puts "LEADERBOARD"
      puts @history

      break
    end

    if @count == @chances
      puts "Game Over"
      puts "The Mystery Lucky Number Will be: #{secret_number}"

      score = @chances - @count
      @history[@player_name] = score

      puts "SCOREBOARD"
      puts @history
    end
  end

  repeat_game
end

def  repeat_game
  puts "Do You Want To Repeat Game?"

  puts "Y - Yes"
  puts "0 - Exit"
  choice = gets.chomp

  if choice.upcase == 'Y'
    run_game
  else
    puts "Thank You"
    exit
  end
end

run_game
