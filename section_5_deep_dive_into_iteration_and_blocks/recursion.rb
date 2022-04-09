# it is a mind set and look like a loop as the method call its self again and again

def helpful(input)
    puts input 

    if input >= 5
        return input 
    else
        input += 1
        helpful input 
    end
end

helpful 1