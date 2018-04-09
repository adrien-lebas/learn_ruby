def translate sentence 
	vowels = ["a","e","i","o","u"]
	array = sentence.split(" ")
	for i in 0..array.length-1
		if vowels.include? array[i][0].chr
			array[i] += "ay"			
		 
		else
			j=0
			while (vowels.include? array[i][j].chr) == false do 
				j=j+1 
			end
			if array[i][j] == "u" and array[i][j-1]=="q"
				array[i] = array[i] + array[i].slice(0,j+1) + "ay" 
				array[i] = array[i].slice(j+1, array[i].length-1)
			 
			else 
				array[i] = array[i] + array[i].slice(0,j) + "ay" 
				array[i] = array[i].slice(j, array[i].length-1)
			end
		end 

	end
	sentence = array.join(" ") 
	sentence 
end 