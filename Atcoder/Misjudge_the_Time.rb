h, m = gets.chomp.split.map(&:to_i)

h1 = h
m1 = m

num = []
res = []

while h1 <= 23
  while m1 <= 59
    a, b = h1.to_s.split("").map(&:to_i)
    c, d = m1.to_s.split("").map(&:to_i)
    b, c = c, b
    h_array = [a, b]
    m_array = [c, d]
    h = h_array.join("").to_i
    m = m_array.join("").to_i
    if h <= 23 && m <= 59
      num.push(h, m)
      res.push(num)
    end
    m1 += 1
  end
  m1 = 0
  h1 += 1
end

p res[0]