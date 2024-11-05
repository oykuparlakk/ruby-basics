class HashMap
  def initialize
    @data = []
  end

  def all_data
    @data
  end

  def get(key)
    hash = @data.find { |pair| pair[:key] == key }
    hash ? hash[:value] : nil
  end

  def search(key)
    !!@data.find { |pair| pair[:key] == key }
  end

  def set(key,value)
    existing_hash = @data.find { |pair| pair[:key] == key }
    if existing_hash
      existing_hash[:value] = value
    else
      @data << { key: key, value: value }
    end
    #puts "{ key: #{key}, value: #{value} }"
    { key: key, value: value }
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
    @data.clear
    true
  end

end


hash = HashMap.new
hash.set("Öykü","test")
hash.set("Öykü2","test2")
hash.set("Öykü3","test3")

puts hash.all_data.inspect

puts hash.remove_all