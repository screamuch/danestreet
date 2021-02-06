module Search
  def self.where(collection, &block)
    result = []
    result << collection.select(&block)
    result.inject(:&)
  end
end

class Searchable
  include Search
  @@collection = []

  def self.next_id
    @@collection.last ? @@collection.last.id + 1 : 1
  end

  def self.collection
    @@collection
  end

  def self.where( &block )
    Search.where(@@collection, &block)
  end
end