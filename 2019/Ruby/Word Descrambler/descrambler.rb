# cerner_2^5_2019

print "\nEnter the letters to descramble: "
letters = gets.strip.split("")

print "Enter the minimum word length: "
min_length = gets.strip.to_i

valid_words = []
File.foreach("words_alpha.txt") do |word|
    valid = true
    word.strip.split("").each do |letter|
        if (letters.count(letter) < word.count(letter)) || (word.length < min_length + 1)
            valid = false
            break
        end
    end
    valid_words.push(word) if valid
end

valid_words.sort_by! {|word| [-word.length, -word]}
puts "\nPossible words:\n\n"
puts valid_words
puts