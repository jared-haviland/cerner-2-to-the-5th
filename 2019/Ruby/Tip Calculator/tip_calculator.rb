# cerner_2^5_2019

puts
print "Please enter the dollar amount: "
total = gets.strip.to_f

fifteen = total * 0.15
eighteen = total * 0.18
twenty = total * 0.20

puts
puts "15% tip: $#{'%.2f' % (fifteen)}; Total: $#{'%.2f' % (total + fifteen)}"
puts "18% tip: $#{'%.2f' % (eighteen)}; Total: $#{'%.2f' % (total + eighteen)}"
puts "20% tip: $#{'%.2f' % (twenty)}; Total: $#{'%.2f' % (total + twenty)}"