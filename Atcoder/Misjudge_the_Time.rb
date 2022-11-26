h, m = gets.chomp.split.map(&:to_i)

h1 = h
m1 = m
a, b, c, d = 0, 0, 0, 0
num = []
res = []
res1 = []
res_original = []

while h1 <= 23
  while m1 <= 59
    if h1.to_s.length.to_i == 0
        a, b = 0, 0
    elsif h1.to_s.length.to_i == 1
        a, b = 0, h1
    else
        a, b = h1.to_s.split("").map(&:to_i)
    end
    if m1.to_s.length.to_i == 0
        c, d = 0, 0
    elsif m1.to_s.length.to_i == 1
        c, d = 0, m1
    else
        c, d = m1.to_s.split("").map(&:to_i)
    end
    b, c = c, b
    h_array = [a, b]
    m_array = [c, d]
    h = h_array.join("").to_i
    m = m_array.join("").to_i
    if h <= 23 && m <= 59
      num.push(h, m)
      res.push(num)
      num = []
    end
    m1 += 1
  end
  m1 = 0
  h1 += 1
end

res.each do |r|
  h1 = r[0]
  m1 = r[1]
  if h1.to_s.length.to_i == 0
    a, b = 0, 0
  elsif h1.to_s.length.to_i == 1
    a, b = 0, h1
  else
    a, b = h1.to_s.split("").map(&:to_i)
  end
  if m1.to_s.length.to_i == 0
    c, d = 0, 0
  elsif m1.to_s.length.to_i == 1
    c, d = 0, m1
  else
    c, d = m1.to_s.split("").map(&:to_i)
  end
  b, c = c, b
  h_array = [a, b]
  m_array = [c, d]
  h1 = h_array.join("").to_i
  m1 = m_array.join("").to_i
  res1.push(h1, m1)
  res_original.push(res1)
  res1 = []
end

if res_original.length == 0
  puts "0 0 "
else
  puts res_original[0].map(&:to_s).join(" ")
end