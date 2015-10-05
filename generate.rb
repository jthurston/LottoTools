require 'csv'

if ARGV.empty?
  puts "You need to input something\n"
  puts "Syntax as follows: ruby generate.rb <highestnumber> <howmanynumbers>"
  exit
end

hiNum = ARGV.shift
howMany = ARGV.shift

raise "too many arguments" unless ARGV.empty?

hiNum = hiNum.to_i
howMany = howMany.to_i
numArray = []

puts "Highest Number: " + hiNum.to_s
puts "How Many Numbers: " + howMany.to_s

for i in 0..howMany
   #puts "Value of local variable is #{i}"
   b = rand(1..hiNum)
   #puts b
   numArray << b
end

puts numArray

CSV.open("lottery.csv", "wb") do |csv|
  csv << numArray
end
puts "lottery.csv created/updated. Now run ruby hilo.rb"
