#-------------------------------------------------------------------------------
#Obviously, first copy we have to do at fastest Xerox, so we need to find out
#min(x,y). In what follows, we will consider the fastest one with operation time
#x, its means that time counter increases by x sec and counter n is decreased by
#one. The fastest Xerox will be working all time t, second one - (t - x) time, so 
#fastest Xerox will make t/x copies, second one - (t - x)/y copies.
#Thus our solution reduces to the inequality t/x + (t - x)/y <= n - 1.                  
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------

n = 6
x = 3
y = 2
puts time(n, x, y)
