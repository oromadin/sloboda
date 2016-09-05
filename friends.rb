$temp = [0, 0, 0, 0, 0]
$history = []

def f(n, s, a)
    for i in 0..n
        $temp[i] |= a[s][i]
    end
    
    # stop recursion
    stop = 0
    for i in 0..n
        if $temp[i] == 1 and $history.include?(i)
            stop += 1
        end
    end
    if stop == n
        return;
    end
        
    for i in 0..n
        if $temp[i] == 1
            if not $history.include?(i)
                $history << i
                f(n, i, a)
            end
        end
    end
end

# test example 1
a = [
    [0, 0, 0, 0, 0],
    [0, 0, 1, 0, 0],
    [0, 1, 0, 0, 1],
    [0, 0, 0, 0, 1],
    [0, 0, 1, 1, 0]
]
n = 4
s = 4

f(n, s, a)
# friends count
puts $history.length - 1

# test example 2
$temp = [0, 0, 0, 0, 0]
$history = []

a = [
    [0, 1, 0],
    [1, 0, 1],
    [0, 1, 0]
]
n = 2
s = 0

f(n, s, a)
# friends count
puts $history.length - 1
