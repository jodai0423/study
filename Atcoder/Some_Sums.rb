N, A, B = gets.split.map(&:to_i)
num = []

for n in 0..N
  num.push(n)
end

total = 0

num.each do |i|
  if i >= A && i <= B
    total += i
  end
end


p total