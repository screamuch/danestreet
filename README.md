# To run:
1. Clone the repository
2. Modify `driver.rb` to your liking (optional, description example is already set up)
3. Run `ruby driver.rb`

# Examples included
1. Default example from the description
2. Looking up by name `foo` and age `20`
3. Looking up by conditional statement - users over `21` (will work with any method usable within the block - **10th requirement completed**)
4. At the end the program should raise `RuntimeError` because we are trying to add a record with ID that is already in the "database"

# Description

1. Implement a small active-record like library that allows you to query a given collection.
2. Use arrays to store the data set
3. The only requirement for the class is to implement the WHERE method
4. The WHERE method must return an array that meets the condition(s) passed in the argument
5. Wrap your library within a module(the library and module's name is up to you).
6. Use OOP principles as much as possible(Inheritance is a plus)
7. The entries for the collection must be instances of a class of your choice(In the example we use "User")
8. The class instance must have at least 3 attributes that are required when the instance is created, otherwise an error is returned
9. The where method can have any implementation as long as it filters results
10. It is big plus, if the interface of WHERE allows you to filter results using not only equality(maybe greater than, less than, words that contain etc)

# Example:

Given this collection
```
[
  User.new { id: 1, name: "foo", age: 20 }, 
  User.new { id: 2, name: "bar", age: 21 }, 
  User.new { id: 3, name: "baz", age: 20 }, 
]
```

Using the library implemented
`User.where(age: 20) `

We should get something like:
```
[
  User id: 1, name: "foo", age: 20, 
  User id: 3, name: "baz", age: 20, 
]
```

# Input and Output as is:

## Input
```
User id: 1, name: foo, age: 20
User id: 2, name: bar, age: 21
User id: 3, name: baz, age: 20
User id: 4, name: aaa, age: 24
User id: 1, name: bbb, age: 20 #=> this one causes the crash because id 1 is already taken
```

## Output
```
Finding users of age 20:
User id: 1, name: foo, age: 20
User id: 3, name: baz, age: 20

Finding users with name 'foo' and age 20:
User id: 1, name: foo, age: 20

Finding users with legal drinking age in the US:
User id: 2, name: bar, age: 21
User id: 4, name: aaa, age: 24

Trying to create user with ID already taken...
Traceback (most recent call last):
	2: from driver.rb:33:in `<main>'
	1: from driver.rb:33:in `new'
.../danestreet/user.rb:11:in `initialize': User with such ID already exists (RuntimeError)
```