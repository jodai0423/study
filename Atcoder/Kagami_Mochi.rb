N = gets.to_i
diameter = []
n = 0

while n < N
  diameter.push(gets.to_i)
  n += 1
end

diameter.uniq!

p diameter.count