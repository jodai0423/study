num_array = []
res_array = []
num = []

for n in 7..7777777
  if n % 7 == 0
    num_array.push(n)
  end
end

num_array.each do |n|
  num = n.to_s.split("").map(&:to_i)
  res_array.concat(num)
end

p res_array.count(7)