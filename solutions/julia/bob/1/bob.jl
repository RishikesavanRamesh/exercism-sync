
function bob(stimulus)
    stimulus = strip(stimulus)
    UPPERCASE = stimulus == uppercase(stimulus) && any(isuppercase, stimulus)
    INTEROGATIVE = endswith(stimulus, '?')
    SILENCE = isempty(stimulus)
    

    if INTEROGATIVE && UPPERCASE
            "Calm down, I know what I'm doing!"
    elseif UPPERCASE
        "Whoa, chill out!"
    elseif INTEROGATIVE
            "Sure."
    elseif SILENCE
        "Fine. Be that way!"
    else
        "Whatever."
    end
end

