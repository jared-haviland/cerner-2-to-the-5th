# cerner_2^5_2019

class WordChain
    def initialize
        @dictionary, @last_word, @used_words, @score, @game_over = Hash.new, (97 + rand(26)).chr, [], 0, false
        ('a'..'z').each { |letter| @dictionary[letter] = [] }
        File.foreach("words_alpha.txt") { |word| @dictionary[word[0]].push(word.strip) }
    end

    def use_word(word, points)
        @dictionary[word[0]].delete(word)
        @used_words.push(word)
        @last_word = word
        @score += points
    end

    def end_game(is_winner)
        is_winner ? (print "\nYou win! Nice work!") : (print "\nThat word was invalid. Game over! ")
        puts "Your final score was #{@score}. Thank you for playing!\n\n"
        @game_over = true
    end

    def play_game
        end_game(true) if @dictionary[@last_word[-1]].length == 0
        use_word(@dictionary[@last_word[-1]][rand(@dictionary[@last_word[-1]].length)], 0)
        system("clear") || system("cls")
        puts "Score: #{@score}\n\nUsed Words:\n#{@used_words.join(", ")}\n\nEnter a word that starts with '#{@last_word[-1]}':"
        new_word = gets.strip.downcase
        ((new_word[0] != @last_word[-1]) || (!@dictionary[new_word[0]].include? new_word)) ? end_game(false) : use_word(new_word, 1)
        play_game unless @game_over
    end
end

print "\nWelcome to Word Chain! The objective of the game is to come up with\nmore words than your computer-controlled opponent. The game will\nbegin with a random word, and all future words must be unique\nand begin with the last letter of the previous word.\n\nGood luck! Press enter to begin... "
gets
game = WordChain.new
game.play_game