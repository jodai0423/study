a = 1
b = 3
c = 7
d = 0
n = 4

puts "トリボナッチ数列の1,2,3項目は、1,3,7です。"
puts "何項目まで計算しますか？"
puts "４項目以上の数字を入力してください。"

count = gets.to_i

if count >= 4
  while n <=  count do
    d = a + b + c
    a = b
    b = c
    c = d
    p n.to_s + "項目、" + d.to_s + ""
    n += 1
  end
else
  puts "4以上を入力してください。"
end
