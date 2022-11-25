num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 11, 13, 14, 15, 16]

num = []

count = 0

num = num_array.repeated_permutation(5).to_a

num.each do |n|
  if n.include?(1) && n.include?(5) && n.include?(11)
    if n[1] != 1 && n[4] != 5 && n[1] != 11
      count += 1
    end
  end
end

p count

#２文字目が１
#４文字目が５
#２文字目が１１
