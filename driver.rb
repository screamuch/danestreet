require './user.rb'

User.new(id: 1, name: "foo", age: 20)
User.new(id: 2, name: "bar", age: 21)
User.new(id: 3, name: "baz", age: 20)
User.new(name: "aaa", age: 24)

users = User.where(age: 20)

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

puts "\n"
users = User.where(name: "foo", age: 20)

users.each do |u|
  puts "User id: #{u.id}, name: #{u.name}, age: #{u.age}"
end

User.new(id: 1, name: "bbb", age: 20)
