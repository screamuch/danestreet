module Search
  def self.where(collection, opts = { } )
    result = []
    opts.each do |k, v|
      result << collection.select { |c| c.send(k) == v } # this is unsafe but a quick way to get result
    end
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

  def self.where( opts = {} )
    Search.where(@@collection, opts)
  end
end