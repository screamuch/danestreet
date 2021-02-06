require './lib/searchable.rb'

class User < Searchable
  attr_accessor :id, :name, :age

  def initialize(id: nil, name:, age:)
    if id
      if User.where(id: id).empty?
        @id = id
      else
        raise "User with such ID already exists"
      end
    else
      @id = User.next_id
    end

    @name = name
    @age = age

    @@collection << self
  end
end