N, Y = gets.split.map(&:to_i)

res10000 = -1
res5000 = -1
res1000 = -1

num = []
res = []

a = 0
b = 0
c = 0
total = 0

while a <= N
  while a + b <= N
    c = N - a - b
    total = 10000*a + 5000*b + 1000*c
    if total == Y
      res10000 = a
      res5000 = b
      res1000 = c
      num.push(a, b ,c)
      res.push(num)
      num = []
    end
    b += 1
  end
  a += 1
  b = 0
end

p res

puts "#{res10000.to_s} #{res5000.to_s} #{res1000.to_s}"