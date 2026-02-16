function secret_handshake(code)

    actions = ["wink", "double blink", "close your eyes", "jump"]
    secret = String[]
    for i in 1:4
        if code & 1 == 1 
            push!(secret, actions[i])
        end
            code >>= 1
    end
    if code & 1 == 1
        reverse(secret)
    else
        secret
    end
end
