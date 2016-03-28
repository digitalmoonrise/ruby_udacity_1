##times
#structure
5.times do
  puts "Are we friends yet?"
  puts "No."
end

#ruby will always finish executing a loop prior to moving on to the next line. 

##while 
#structure
counter = 3
while counter > 0
  puts "ARE WE THERE YET?"
  counter = counter - 1
end

####EACH####
##each
#structure
collection.each do |element|
  #some code involving element
end
#example arrays
friends.each do |friend|
  puts "#{friend} is now online!"
end
####The above example could also be written as:
friends.each { |friend| puts "#{friend} is now online!" }

#example Hashes
hashbrown = { meal: "burger", drink: "coke", side: "fries", dessert: "ice cream" }
# Iterate over the hash
hashbrown.each { |key, value| puts "#{key} choice: #{value}" }

###definition: {Block}: A block is a chunk of code that starts with do and ends with end

###.each example for a hash within an array
friends.each do |friend|
  puts "#{friend[:name]} is #{friend[:status]}"
end


####SELECT####
#select
##allows you to create a new array based on a variable
#example
online_friends = friends.select do |friend|
	friend[:status] == "Online"
end
#in one line
online_friends = friends.select{|friend| friend[:status] == "Online"}

####MAP####
#map
##runs algorithm across an array and returns a second array with that apply
#example One line
nums = [1,2,3,4,5]
double_those_nums = nums.map { |i| i *2 }
double_those_nums == [2, 4, 6, 8, 10]

#example as block
everyone_online = friends.map do |i|
	{name: i[:name], status:"Online"}
end

