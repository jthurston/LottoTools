require "highline/import"
require "colorize"

puts ""
puts "(1) MegaMillions".green
puts "(2) PowerBall".green
puts "(3) Hot Lotto".green
puts "(4) Cash 3".green
puts "(5) Cash 4".green
input = ask "Which lottery 1, 2, 3, 4 or 5?: ".white

case input
when "1"
  lottery = "Mega Millions"
  pivotName = "MegaBall"
  hiNum = 75
  howMany = 5
  pivotHiNum = 12
when "2"
  lottery = "PowerBall"
  pivotName = "PowerBall"
  hiNum = 69
  howMany = 5
  pivotHiNum = 26
when "3"
  lottery = "Hot Lotto"
  pivotName = "Hot Ball"
  hiNum = 47
  howMany = 5
  pivotHiNum = 19
when "4"
  lottery = "Cash 3"
  pivotName = "n/a"
  hiNum = 999
  howMany = 1
  pivotHiNum = 0
when "5"
  lottery = "Cash 4"
  pivotName = "n/a"
  hiNum = 9999
  howMany = 1
  pivotHiNum = 0
when "t"
  lottery = "Test"
  pivotName = "Test Ball"
  hiNum = 10
  howMany = 10
  pivotHiNum = 5
else
  lottery = ''
  pivotName = ''
  hiNum = ''
  howMany = ''
  pivotHiNum = ''
  puts "Try 1,2,3,4,5"
  exit
end

hiNum = hiNum.to_i
howMany = howMany.to_i
pivotHiNum = pivotHiNum.to_i
numArray = []
pivotBall  = pivotBall.to_i

puts ""
puts "You chose the " + lottery + " lottery!"
line = "It's highest main number is " + hiNum.to_s + ". "
line += "It has " + howMany.to_s + " main numbers. "
if pivotHiNum > 0
  line += pivotName.to_s + " highest Number is " + pivotHiNum.to_s
end

puts line.green

while numArray.count < howMany
  b = rand(1..hiNum)
  numArray << b unless numArray.include?(b)
  numArray.sort!
end

for i in 0..pivotHiNum
  b = rand(1..pivotHiNum)
  pivotball = b;
end

numbers = numArray.join(' ')

puts "----------------------------------------".blue
puts "Your Numbers are ".white + numbers.green
if pivotHiNum > 0
  puts  "Your " + pivotName.to_s + " is " + pivotball.to_s.red
end
puts "----------------------------------------".blue
