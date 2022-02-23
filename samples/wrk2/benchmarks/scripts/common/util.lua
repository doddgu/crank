local util = {}

function util.length(array)
    if util.isTable(array) then
        return table.getn(array)
    else
        return 0
    end
end

function util.random(array)
    if util.isTable(array) == false then
        -- print('array is empty ... ')
        return ''
    end

    local index = math.random(1, util.length(array))

    -- print('random .. index: ' .. index)
    -- print('random .. array length : ' .. table.getn(array))

    local ret = array[index]

    -- print('random .. index: ' .. index .. ' ret type: ' .. type(ret))


    -- if util.isTable(ret) == false then
    --     print('random .. index: ' .. index .. ' ret : ' .. ret)
    -- end

    return ret
end

function util.split(str, delimiter)
    local dLen = string.len(delimiter)
    local newDeli = ''
    for i = 1, dLen, 1 do
        newDeli = newDeli .. "[" .. string.sub(delimiter, i, i) .. "]"
    end

    local locaStart, locaEnd = string.find(str, newDeli)
    local arr = {}
    local n = 1
    while locaStart ~= nil do
        if locaStart > 0 then
            arr[n] = string.sub(str, 1, locaStart - 1)
            n = n + 1
        end

        str = string.sub(str, locaEnd + 1, string.len(str))
        locaStart, locaEnd = string.find(str, newDeli)
    end
    if str ~= nil then
        arr[n] = str
    end
    return arr
end

function util.isEmpty(t)
    return t == nil or next(t) == nil
end

function util.replace(str, oldVal, newVal)
    return string.gsub(str, oldVal, newVal);
end

function util.isTable(array)
    return type(array) == 'table'
end

function util.forEach(array, callback)
    for i, v in pairs(array) do
        callback(i, v)
    end
end

return util
