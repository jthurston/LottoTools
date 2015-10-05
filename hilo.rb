require 'csv'

if ARGV.empty?
  a = CSV.read("lottery.csv").flatten
else
  filename = ARGV.first	
  a = CSV.read(filename).flatten
end


# make the hash default to 0 so that += will work correctly
b = Hash.new(0)

# iterate over the array, counting duplicate entries
a.each do |v|
  b[v] += 1
end

b = b.sort_by { |k,v| v}

b.each do |k, v|
  puts "#{k} appears #{v} times"
end
