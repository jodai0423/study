N = gets.to_i
num_array = gets.split.map(&:to_i)

alice = 0
bob = 0

n = 0

num_array.sort!.reverse!

num_array.each do |num|
  if n % 2 == 0
    alice += num
  else
    bob += num
  end
  n += 1
end

p alice - bob