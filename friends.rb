#-------------------------------------------------------------------------------
#We introduce an additional array $temp for storing lines s content and also
#array $history for storing lines which we have already run over. We rewrite $temp 
#for save line s. New $temp is the result of logical disjunction $temp and line s. 
#Then, in new $temp we looking for elements which contain 1. Element number in 
#$temp, which contain "1", is the number of next line, to which we will move. 
#At first, we have to check $history for this number and add it if its not 
#contained. Then we rewrite $temp by copying new line s again in recursion. And 
#looking for '1' in new $temp again... We get out of recursion, #when all 
#elements numbers which contain "1" are contained in #$history.
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------

# test example 1
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

# test example 2
$temp = [0, 0, 0, 0, 0, 0]
$history = []

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
