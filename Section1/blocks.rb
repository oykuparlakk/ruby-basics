
=begin
# Single-line block
[1,2,3].each { |num| puts num }

# Multi-line block
[1,2,3].each do |num|
  puts num
end


#yield
def logger
  yield
end

logger { puts 'hello from the block' }

logger do
  p [1,2,3]
end

def love_language
  yield('ruby')
  yield('rails')
end

love_language { |lang| puts "I love #{lang}"}



def awesome_method
  hash = {a: 'apple', b:'banana', c: 'cookie'}

  hash.each do |key,val|
    yield key, val
  end
end


awesome_method { |key, value| puts "#{key}: #{value} "}
=end
def cool_method
  yield
end

my_proc = Proc.new { puts "proc party" }

cool_method(&my_proc)