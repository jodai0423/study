puts "初項を入力してください"
a = gets.to_i

puts "公差を入力してください"
d = gets.to_i

puts "何項目まで計算しますか？"
count = gets.to_i

b = 0
c = 0
n = 1

while n <= count
  c = n - 1
  b = d * c + a
  puts n.to_s + "項目," + b.to_s
  n += 1
end