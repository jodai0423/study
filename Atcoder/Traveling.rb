N = gets.to_i
t1, x1, y1 = 0, 0, 0

N.times do
  t2, x2, y2 = gets.chomp.split.map(&:to_i)
  t = t2 - t1
  d = (x2 - x1).abs + (y2 - y1).abs
  if t >= d && (t - d).even?
    t1 = t2
    x1 = x2
    y1 = y2
  else
    puts "No"
    exit
  end
end

puts "Yes"