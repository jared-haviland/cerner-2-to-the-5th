# cerner_2^5_2019
sum, sum_of_squares, square_of_sums, input, valid_input = 0, 0, 0, '', false

while(!valid_input) do
    print "\nPlease enter a natural number: "
    input = Integer(gets.strip) rescue false
    if (!input || input <= 0)
        puts "That's not a natural number!"
    else
        valid_input = true
        if (input > 100000000)
            puts "Warning: that's a pretty big number. This may take a while..."
        end
        puts
    end
end

(1..input).each do |i|
    sum += i
    sum_of_squares += i*i
end

square_of_sums = sum*sum

puts "The difference between the sum of the squares
and the square of the sum of the first #{input}
natural numbers is: #{square_of_sums - sum_of_squares}\n\n"