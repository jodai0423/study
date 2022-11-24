N, A, B = gets.split.map(&:to_i)

num_array = []
total = 0

for n in 0..N
  num_array.push(n)
end

num_array.each do |num|
  n = num.to_s.split("")
  n = n.map(&:to_i)
  if n.sum >= A && n.sum <= B
    total += num
  end
end

p total