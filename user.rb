require './lib/searchable.rb'

class User < Searchable
  attr_accessor :id, :name, :age

  def initialize(name, age)
    @id = User.next_id
    @name = name
    @age = age

    @@collection << self
  end

  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age

    @@collection << self
  end
end