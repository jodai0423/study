A, B, C, X = 4.times.map{gets.to_i}
count = 0

for a in 0..A
  for b in 0..B
    for c in 0..C
      if 500*a + 100*b + 50*c == X
        count += 1
      end
    end
  end
end

p count