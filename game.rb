# Force Flush Ruby
old_sync = $stdout.sync
$stdout.sync = true

puts "Welcome To Lucky Number Game"
puts "Guess The Lucky Number 1-100"

easy_secret = rand(50..100)
medium_secret = rand(20..49)
hard_secret = rand(1..48)

puts "Choose Your Level"
puts "1 - Easy"
puts "2 - Medium"
puts "3 - Hard"

choice = gets.to_i

puts "Guess Your lucky Number. You Have Six Chances"
# secret_number = 22
guess = gets.chomp.to_i

if choice == 1
  secret_number = easy_secret
elsif choice == 2
  secret_number = medium_secret
elsif choice == 3
  secret_number = hard_secret
end

count = 1
previous_tries = []

while count < 6
  if secret_number != guess
    previous_tries << guess
    puts "Keep Calm and Try Again"
    puts "#{previous_tries}"
    count += 1
    guess = gets.to_i
  else
    puts "Congratulations! You Got It"
    break
  end

  if count == 6
    puts "Game Over"
  end
end
