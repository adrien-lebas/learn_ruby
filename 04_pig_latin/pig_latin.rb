#write your code here
def translate string
    result = ""
    for i in 0..get_nb_of_words(string).size - 1
        string = get_nb_of_words(string)[i].join
        string = add_pig_latin(slice_string(string, find_first_vowel(string)))
        if get_nb_of_words(string).size == 1
            result += string
        else if i == get_nb_of_words(string).size - 1
            result += string
        else
            result += string + " "
        end 
    end
    return result
end

def find_first_vowel string
    vowel = ["a","e","i","o","u","y"]
    vowel_found = false
    for i in 0..string.length - 1
        for j in 0..vowel.length - 1
            if string.slice(i,1) == vowel[j] && vowel_found == false
                first_vowel = i
                vowel_found = true
            end
        end
    end
    return first_vowel
end

def slice_string string, first_vowel
    if first_vowel > 0
        string = string.slice(first_vowel..string.length - 1) + string.slice(0..first_vowel-1)
    end
    return string
end

def add_pig_latin string
    string = string + "ay"
end

def get_nb_of_words string
    return string.split
end