transform(ch) = ch == '-' ? "_" : 
                ch == ' ' || isnumeric(ch) ? "" :
                isuppercase(ch) ? "-"*lowercase(ch) : 
                'ω' >= ch >= 'α'  ? "?" : string(ch);

function clean(str)
    output = ""
    for ch in collect(str)
        output *= transform(ch)
    end
    output
end
