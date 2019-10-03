# cerner_2^5_2019

# returns two values: the number of guesses that are in the correct position,
#   and the number that are in the code but not in the correct position
def num_correct(code, guess)
    fully_correct, partially_correct = 0, 0
    guess.each_with_index { |letter, index| if code[index] == letter then fully_correct += 1 end }
    guess.uniq.each { |letter| partially_correct += [guess.count(letter), code.count(letter)].min }
    return fully_correct, (partially_correct - fully_correct)
end

#sets up a new game and plays through it
def play_new_game
    guesses, code = [], 4.times.map { rand(5) + 1 }
    while guesses.length < 10 do
        while true do
            system("clear") || system("cls")
            puts "------------------\n|   Mastermind   |\n------------------\n\nFirst number after guess: # of guesses in the correct position\nSecond number after guess: # of guesses that are in the code,\nbut not in the correct position\n\nYour Guesses:\n\n"
            guesses.each { |guess, full, partial| puts "#{guess.join(" ")} | #{full} #{partial}" }
            (10 - guesses.length).times { puts "- - - - | - -" }
            puts "\nGuesses remaining: #{10 - guesses.length}\nEnter your 4-digit guess, with each digit separated by a space (ex: '1 4 2 6'):"
            guess = gets.strip.split.map!(&:to_i)
            break unless (guess.length != code.length) || ((guess.select { |num| (1..6).include? num }).length != code.length)
        end
        if guess == code
            puts "\nYou win! The code was #{code.join(" ")}. Thank you for playing!\n\n"
            exit
        else
            fully_correct, partially_correct = num_correct(code, guess)
            guesses.push([guess, fully_correct, partially_correct])
        end
    end
    puts "\nYou are out of guesses. The code was #{code.join(" ")}. Thank you for playing!\n\n"
end

system("clear") || system("cls")
print "\nWelcome to Mastermind!\n\nGuess the correct sequence of four numbers in ten\nguesses or less to win. The code will be made up\nof numbers from 1-6, and numbers may be repeated.\n\nPress enter to begin..."
gets
play_new_game