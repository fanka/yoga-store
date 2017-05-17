=begin

counter = 0
loop do
  counter +=1
  if counter % 2 == 0 && counter != 4
    puts counter
  end
  if counter == 10
    break
  end
end



loop {
  puts "Got all ingredients?"
  answer = gets.chomp
  if answer == "y" || answer == "Y"
    puts "Great"
    break
  else
    next
  end
}



for counter in 1..6
    puts "Break egg #{counter}"
end


puts "Enter number from which you wish the countdown to start with:"
number = gets.chomp.to_i

for user_number in 0..number
  puts user_number - 1
end




fruits = ["apples", "oranges", "pears", "apricots"]

fruits.each { |fruit| puts " I love: #{fruit}"}


numbers = []
for i in 1..5
  numbers.push(i)
end

numbers.each {|number| puts "Adding #{number} to the list"}
numbers.each {|number| puts "Number #{number} was #{number}"}



friends =[{name: "Jane", occupation:"Professor", city:"Como" },
  {name: "Ulia", occupation:"Translator", city:"Madrid" },
  {name: "Elvira", occupation:"Professor", city:"Chelyabinsk" }]

friends.each {|friend| puts "#{friend[:name].capitalize} lives in #{friend[:city].capitalize} and works as #{friend[:occupation].downcase}"}



friend = {name: "Jane", occupation:"Professor", city:"Como" }

friend.each_key {|key| puts key}
friend.each_value {|value| puts value}
friend.each_pair { |name, val| puts "#{name}: #{val} "}


=end


family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

close_family = family.select { |key, value| key == :sisters || key == :brothers }

closest_family=Array.new()

close_family.each_value do
  |value| closest_family.push(value)
end
