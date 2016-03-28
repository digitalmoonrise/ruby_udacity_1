weather = "rainy"

if weather == "sunny"
	puts "Go for a run!"
elsif weather == "rainy"
	puts "Hit the gym"
else 
	puts "Watch TV"
end

busy = “not busy at all”
busy = “busy” + 10
busy = “busy” * 10
busy = 22
busy = 23.5
busy = 4 == 3
busy = 1 == 1
busy = nil
busy = 0
busy = [2, 3, 4]
busy = [nil,nil,nil]
busy = [nil,nil,nil].nil?
busy = “false”
busy = ""

puts "Hang out with your friends" unless busy

#Ternary operators 
#value =  condition ? value if true : value if false
#ex. hang_out = busy ? "Go home" : "Hang out"

#Array Methods
#push: adds to the end of an Array
#pop: removes last from the end of an Array

#HASH#
###Example
definitions = {
  "bumfuzzle" => "confuse; perplex; fluster",
  "cattywampus" => "askew, awry, kitty-corner",
  "taradiddle" => "pretentious nonsense"
}

##accessing a HASH
#example 
var["top level hash"]["next level hash"]["and so on"]

#symbols
#always begin with :
#example: :symbol or :"symbol"

#Hash using symbols:
kitten = {
  :name => "Blue Steele",
  :breed => "Scottish Fold",
  :age => "13 weeks"
}


#but really, you should write a hash as:
kitten = {
  name: "Blue Steele",
  breed: "Scottish Fold",
  age: "13 weeks"
}
#basically same as python

