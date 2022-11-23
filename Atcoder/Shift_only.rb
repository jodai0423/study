n = gets.chomp.to_i

a = gets.chomp.split.map(&:to_i)

count = 0

c = 0

while true do
  a.each do |num|
    if num.even?
      c += 1
    end
  end
  if c == n
    a = a.map{|i| i/2}
    count += 1
    c = 0
  else
    break
  end
end

p count