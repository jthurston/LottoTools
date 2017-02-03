require 'csv'
require "highline/import"
require "colorize"

howMany = ask "How many numbers do you want to generate?"
hiNum = ask "Okay, what is the highest number?"

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

hiloRun = ask "Do the hi lo analysis? (Y or N)"

if hiloRun == "Y" || hiloRun == "y"
  spawn 'ruby hilo.rb'
else

end
