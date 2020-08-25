require './user.rb'

User.new(1, "foo", 20)
User.new(2, "bar", 21)
User.new(3, "baz", 20)

users = User.where(age: 20)

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

puts "\n"
users = User.where(name: "foo", age: 20)

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end