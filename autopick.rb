require "highline/import"
require "colorize"

hiNum = ask "What is the highest number is first series?".green
puts "Ok...".white
howMany = ask "How many of those number are there?".green
puts "Ok...".white
pivotHiNum = ask "What is the highest number for the pivot number?".green
puts "Ok...".white

#if ARGV.empty?
#  puts "You need to input something\n"
#  puts "Syntax as follows: ruby autopick.rb <highestnumber> <howmanynumbers><pivot_highestnumber>"
#  exit
#end

#hiNum = ARGV.shift
#howMany = ARGV.shift
#pivotHiNum = ARGV.shift

#raise "too many arguments" unless ARGV.empty?

hiNum = hiNum.to_i
howMany = howMany.to_i
pivotHiNum = pivotHiNum.to_i
numArray = []
pivotBall  = pivotBall.to_i

puts "Highest Number: " + hiNum.to_s.red
puts "How Many Numbers: " + howMany.to_s.red
puts "Pivot Number Highest Number: " + pivotHiNum.to_s.red

for i in 0..howMany
   #puts "Value of local variable is #{i}"
   b = rand(1..hiNum)
   #puts b
   numArray << b
   numArray.sort!
end

for i in 0..pivotHiNum
  b = rand(1..pivotHiNum)
  pivotball = b;
end

puts "Your Numbers: " + numArray.to_s + " Pivot Ball " + pivotball.to_s
