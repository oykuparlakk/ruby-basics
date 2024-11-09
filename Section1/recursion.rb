puts 'Please enter the number'
fib_recursion_number = gets.chomp.to_i
@fib_arr = [0, 1]

def fibs_rec(rec_number)
  return @fib_arr[0...rec_number] if rec_number <= 2

  if @fib_arr.size < rec_number
    @fib_arr << @fib_arr[-1] + @fib_arr[-2]
    fibs_rec(rec_number)
  else
    @fib_arr[0...rec_number]
  end
end

puts fibs_rec(fib_recursion_number).join(', ')
