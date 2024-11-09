class HashMap
  def initialize
    @data = []
  end

  def all_data
    @data
  end

  def find_pair(key)
    @data.find { |pair| pair[:key] == key }
  end

  def get(key)
    find_pair(key)&.dig(:value)
  end

  def search(key)
    !!find_pair(key)
  end

  def set(key, value)
    existing_hash = find_pair(key)
    if existing_hash
      existing_hash[:value] = value
    else
      @data << { key: key, value: value }
    end
    @data.last
  end

  def remove(key)
    index = @data.index { |pair| pair[:key] == key }
    if index
      @data.delete_at(index)
      true
    else
      false
    end
  end

  def remove_all
    !!@data.clear
  end
end

hash = HashMap.new
hash.set('Ali', '0555 123 45 67')
hash.set('Ayşe', '0532 987 65 43')
hash.set('Mehmet', '0544 456 78 90')

puts hash.all_data.inspect

puts hash.remove_all
