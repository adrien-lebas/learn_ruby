#write your code here
def echo i
    return i
end

def shout i
    return i.upcase
end

def repeat string, *times
    if times.length >= 1
        result = ""
        for i in 0..times[0] - 1
            if i < times[0] - 1
                result += string + " "
            else
                result += string
            end
        end
    else
        result = string + " " + string
    end
    return result
end

def start_of_word string,count
    return string.slice(0,count)
end

def first_word sentence
    result = ""
	i = 0
	while sentence[i] != " "
		result = result + sentence[i].chr
		i = i + 1
	end
	return result
end

def titleize sentence
    array = sentence.split(' ')
	if array.length == 1
		title = array[0].capitalize  
		return title 
	end 
	if array.length == 2 
		title = array[0].capitalize + " " + array[1].capitalize
		return title
	end 
	title =""
	for i in 0..array.length-1
		if i == 0
			title += array[i].capitalize + " " 
		
		elsif i == array.length-1
			title += array[i].capitalize
		 
		elsif array[i].length>=5
			title+=array[i].capitalize + " "
		else 
			title+=array[i] + " "
		end
    end
    return title
end