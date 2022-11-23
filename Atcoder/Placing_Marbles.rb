c = 0

num = gets.chomp.split("").map(&:to_i)

num.each do |n|
  if n == 1
    c += 1
  else
    c += 0
  end
end

puts c.to_s