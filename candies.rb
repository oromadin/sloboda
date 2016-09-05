def count(x, y, z, w)
n = 0
    for k1 in 0..w/x
        for k2 in 0..w/y
            for k3 in 0..w/z
                if w === k1*x + k2*y + k3*z
                    n += 1
                end
            end
        end
    end
n
end

x = 200
y = 250
z = 15
w = 40
puts count(x, y, z, w)
