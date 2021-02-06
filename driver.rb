require './user.rb'

User.new(id: 1, name: "foo", age: 20)
User.new(id: 2, name: "bar", age: 21)
User.new(id: 3, name: "baz", age: 20)
User.new(name: "aaa", age: 24)

puts "Finding users of age 20:"
users = User.where { |u| u.age == 20 }

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

puts "\n"
puts "Finding users with name 'foo' and age 20:"
users = User.where { |u| u.name == "foo" and u.age == 20}

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

puts "\n"
puts "Finding users with legal drinking age in the US:"
users = User.where { |u| u.age >= 21 }

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

puts "\n"
puts "Trying to create user with ID already taken...\n"
User.new(id: 1, name: "bbb", age: 20)

