# Should ask the user to enter a number between 1 and 100
# Should receive input from the user
# Should tell the user if they were correct or incorrect
# Modify your number guesser to ask the user to guess again if they are wrong.
# The game should stop when they guess correctly.

num_guessed = []

def number_guesser(num_guessed, actual_num)
	until num_guessed.last == actual_num
		if num_guessed.length > 1
			if (num_guessed[-1] - actual_num) > (num_guessed[-2] - actual_num)
				puts "You're getting warmer =)"
			else
				puts "You're getting colder =("
			end
		end
		#Math for if guess is closer to actual number than last guess
		if num_guessed.last < actual_num 
			puts "Sorry, you try guessing higher"
		else
			puts "Sorry, you try guessing lower"
		end
		
		puts "Guess again, Please enter a number between 1 and 100"
		num_guessed << gets.chomp.to_i	
	end

	"WOOHOO!! CORRECT!"
end

def play()
	num_guessed = []
	actual_num = rand(100)+1
	#For testing:puts actual_num
	puts "Please enter a number between 1 and 100"
	num_guessed << gets.chomp.to_i
	puts number_guesser(num_guessed, actual_num)
end

actual_num = rand(100)+1
playAgain = "N"
#For testing: puts actual_num
puts "Please enter a number between 1 and 100"
num_guessed << gets.chomp.to_i

if number_guesser(num_guessed, actual_num) == "WOOHOO!! CORRECT!"	
	puts "WOOHOO!! CORRECT!"
	puts "Would you like to play again?"
	playAgain = gets.chomp.upcase
	if playAgain == "Y"
		play()
	else
		puts "K, Buh Bye"
	end
end

