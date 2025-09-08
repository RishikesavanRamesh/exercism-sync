function time_to_mix_juice(juice)
    if juice == "Pure Strawberry Joy"
        0.5
    elseif juice == "Energizer" || juice == "Green Garden"
        1.5
    elseif juice == "Tropical Island"
        3.0
    elseif juice == "All or Nothing"
        5.0
    else
        2.5
    end
end

function wedges_from_lime(size)
    if size == "small"
        6
    elseif size == "medium"
        8
    elseif size == "large"
        10
    else 
        0
    end
end

function limes_to_cut(needed, limes)
    prepared = 0
    count = 0
    while prepared < needed && !isempty(limes)
        lime = popfirst!(limes)
        prepared += wedges_from_lime(lime)
        count += 1
    end
    count
end

function order_times(orders)
    return [time_to_mix_juice(order) for order in orders]
end

function remaining_orders(time_left, orders)
    count = 1
    while count <= length(orders) && time_left > 0 
        time_left -= time_to_mix_juice(orders[count])
        count += 1
    end
    orders[count:end]
end
