a = 0.to_s

num = []
num_array = []

b = []

(1..100000).each do |n|
  a = n.to_s + "SHEEP"
  num.push(a)
  a = 0.to_s
end

num_array = num.join("")

b = num_array.split("")

p b[55554..55574].join("")