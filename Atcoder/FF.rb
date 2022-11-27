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
  if time[0] = 1
    user_follow.select{|u| u[0] == time[1] && u[1] == time[2]}.delete_at(2).push(1)
  elsif time[0] = 2
    user_follow.select{|u| u[0] == time[1] && u[1] == time[2]}.delete_at(2).push(0)
  else time[0] = 3
    user_follow.each do |u|
      if u[0] == time[1] && u[1] == time[2] && u[2] == 1
        count += 1
      elsif u[0] == time[2] && u[1] == time[1] && u[2] == 1
        count += 1
      end
    end
    if count == 2
      puts "YES"
    else
      puts "NO"
    end
    count = 0
  end
end