times = []
follow = []
count = 0

N, Q = gets.chomp.split.map(&:to_i)

Q.times do
  t, a, b = gets.chomp.split.map(&:to_i)
  times.push([t, a, b])
end

times.each do |time|
  if time[0] == 1
    follow.push([time[1], time[2]])
  elsif time[0] == 2
    follow.each do |f|
      if f[0] == time[1] && f[1] == time[2]
        f.clear
      end
    end
  else
    follow.each do |f|
      if f[0] == time[1] && f[1] == time[2]
        count += 1
      elsif f[0] == time[2] && f[1] == time[1]
        count += 1
      end
    end
    if count == 2
      puts "Yes"
    else
      puts "No"
    end
    count = 0
  end
end