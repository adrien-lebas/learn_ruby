#write your code here

def add i,j
    result = i + j
    return result
end

def subtract i,j
    result = i - j
    return result
end

def sum array
    result = 0
    if array == []
        result = 0
    else
        for i in 0..array.length - 1
            result += array[i]
        end
    end
    return result
end

def multiply i,j
    result = i * j
    return result
end

def power i,j
    result = i ** j
    return result
end

def factorial n
    result = 1
    for i in 1..n
        result = result * i
    end
    return result
end