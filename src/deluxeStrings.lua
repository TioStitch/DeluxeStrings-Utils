deluxeStrings = {}

function deluxeStrings:contains(str, word) --Verifique se contém no texto.
    return string.find(str, word)
end

function deluxeStrings:getCharAt(str, i) --Pegue o caractere na posição X.
    return string.sub(str, i, i)
end

function deluxeStrings:getCharUntil(str, i, i2) --Pegue o caractere de X até Y.
    return string.sub(str, i, i2)
end

function deluxeStrings:startWith(str, str2)
    local newstr = string.sub(str, 1, string.len(str2))
    local newstr2 = string.sub(str2, 1, string.len(str2))
    return newstr == newstr2
end

function deluxeStrings:endsWith(str, str2)
    local newstr = string.reverse(str)
    local finalstr = string.sub(newstr, 1, string.len(str2))

    return string.reverse(finalstr) == str2
end

function deluxeStrings:containsNumber(str)
    return string.match(str, "[0-9]")
end

function deluxeStrings:containsBlankSpaces(str)
    return string.match(str, "%s+")
end

function deluxeStrings:toUpperCase(str) --Retorne o texto em maísculo.
    return string.upper(str)
end

function deluxeStrings:toLowerCase(str) -- Retorne o texto em minúsculo.
    return string.lower(str)
end

return deluxeStrings