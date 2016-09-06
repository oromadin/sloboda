#-------------------------------------------------------------------------------
#Solution is reduced to search integers coefficients in equation 
#                   w = k1*x + k2*y + k3*z 
#For that we iterate over coefficients k1,k2,k3 in cycle and each time, when
#the equality is satisfied, increase variants counter. 
#-------------------------------------------------------------------------------

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

#-------------------------------------------------------------------------------

x = 10
y = 25
z = 15
w = 40
puts count(x, y, z, w)
