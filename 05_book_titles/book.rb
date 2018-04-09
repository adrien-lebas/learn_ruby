class Book
    def title
        @title
    end
    
    def title=(title)
        banned = ["the","a","an","in","of","and"]
        array = title.split(" ")
        for i in 0..array.length - 1
            if (banned.include? array[i]) == false
                array[i] = array[i].capitalize
            else
                array[i] = array[i].downcase
            end
        end
        array[0] = array[0].capitalize
        @title = array.join(" ")
    end     
end


