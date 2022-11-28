N, Q = gets.chomp.split.map(&:to_i)

user = [*1..N]
user_follow = user.permutation(2).to_a.map{|r| r.push(0)}

times = []

Q.times do
  t, a, b = gets.chomp.split.map(&:to_i)
  times.push([t, a, b])
end

count = 0

times.each do |time|
  if time[0] == 1
    user_follow.each do |u_f|
      if u_f[0] == time[1] && u_f[1] == time[2]
        u_f[2] = 1
      end
    end
  elsif time[0] == 2
    user_follow.each do |u_f|
      if u_f[0] == time[1] && u_f[1] == time[2]
        u_f[2] = 0
      end
    end
  elsif time[0] == 3
    user_follow.each do |u|
      if u[0] == time[1] && u[1] == time[2] && u[2] == 1
        count += 1
      elsif u[0] == time[2] && u[1] == time[1] && u[2] == 1
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