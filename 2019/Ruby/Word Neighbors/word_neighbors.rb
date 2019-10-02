#cerner_2^5_2019

class Dictionary
    def initialize
        @dict = Hash.new
        File.foreach("words_alpha.txt") do |word|
            key, word = word.strip.length, word.strip
            @dict.has_key?(key) ? @dict[key].push(word) : @dict[key] = [word]
        end
    end

    def print_neighbors(word)
        neighbors = []
        (0..word.length-1).each do |index|
            ('a'..'z').each do |letter|
                letter_changed = word.dup
                letter_changed[index] = letter
                neighbors.push(letter_changed) if @dict[letter_changed.length].include? letter_changed
                letter_added = word.dup.insert(index, letter)
                neighbors.push(letter_added) if @dict[letter_added.length].include? letter_added
            end
            letter_removed = word.dup
            letter_removed.slice!(index)
            neighbors.push(letter_removed) if @dict[letter_removed.length].include? letter_removed
        end 
        puts "#{(neighbors-[word]).uniq.sort.join(", ")}\n\n"
    end
end

print "\nEnter a word to get all of its neighbors: "
dict = Dictionary.new
dict.print_neighbors(gets.strip)