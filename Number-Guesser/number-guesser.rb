# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect


def number_guesser(num_guessed, actual_num)
	num_guessed == actual_num ? "WOOHOO!! CORRECT!" : "Sorry, you didn't guess correctly ::sad trombone::"
	# For testing: "Sorry, you didn't guess correctly ::sad trombone::" : "WOOHOO!! CORRECT!"
end

actual_num = rand(100)+1
#For testing: puts actual_num
puts "Please enter a number between 1 and 100"
num_guessed = gets.chomp.to_i

puts number_guesser(num_guessed, actual_num)
