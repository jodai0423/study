N, K = gets.chomp.split.map(&:to_i)

a = gets.chomp.split.map(&:to_i)

k = 0

while k < K
  a.shift(1)
  a.push(0)
  k += 1
end

puts "#{a.join(" ")}"