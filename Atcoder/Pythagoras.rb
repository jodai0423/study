num = []
res = []

a1 = 1
b1 = 2
c1 = 3

for a2 in 1..1000
  for b2 in (a2+1)..1000
    for c2 in (b2+1)..1000
      if (a2*a2) + (b2*b2) == (c2*c2) && a2 + b2 + c2 == 1000
        a1 = a2
        b1 = b2
        c1 = c2
        num.push(a2, b2, c2)
        res.push(num)
        num = []
      end
    end
  end
end

p res