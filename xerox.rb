def time(n, x, y)
  if x > y 
    x, y = y, x
  end
  t = x 
  while t/x + (t - x)/y <= n - 1  do
    t += 1
  end
t
end

n = 6
x = 3
y = 2
puts time(n, x, y)
