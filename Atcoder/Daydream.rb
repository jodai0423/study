S = gets.chomp

S.gsub!("eraser", "")
S.gsub!("erase", "")
S.gsub!("dreamer", "")
S.gsub!("dream", "")

if S.length == 0
  puts "YES"
else
  puts "NO"
end