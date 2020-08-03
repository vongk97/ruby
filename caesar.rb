def caesar(str, shift)
    puts "Encoded String: #{str}"
    str_arr = str.split("")
    str_arr.map! { |char|
        shifted = char.ord + shift
        if(char.ord>=65 && char.ord<=90)
            if(shifted>90)
                while(shifted>90) do shifted = (65+shifted-90-1) end
            elsif(shifted<65)
                while(shifted<65) do shifted = (90+shifted-65+1) end
            end
        elsif(char.ord>=97 && char.ord<=122)      
            if(shifted>122)
                while(shifted>122) do shifted = (97+shifted-122-1) end
            elsif(shifted<97)
                while(shifted<97) do shifted = (122+shifted-97+1) end
            end
        else
            shifted = char.ord
        end
        #puts "current character decoded: #{char.chr}"
        char = shifted.chr
    }
    puts "Decoded String: #{str_arr.join()}"
end

print caesar("What a string!", 5)