--- STEAMODDED HEADER
--- MOD_NAME: Better tprint
--- MOD_ID: TPRINT
--- MOD_AUTHOR: [Cerlo]
--- MOD_DESCRIPTION: This mod improves the tprint function for developers
--- BADGE_COLOR: 5E993E
--- PREFIX: TPRINT
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0

function tprint(element, indent)
    if type(element) == 'nil' then
        return 'ELEMENT IS NIL'
    end
    if type(element) == 'number' then
        return tostring(element)
    elseif type(element) == 'string' then
        return element
    elseif type(element) == 'boolean' then
        if element then
            return 'true'
        else
            return 'false'
        end
    elseif type(element) == 'function' then
        return 'function'
    end
    -- UTILITY
    local table = element
    local function FormatK(element)
        if type(element) == 'number' then
            return "["..tostring(element).."]"
        elseif type(element) == 'string' then
            return element
        end
    end
    local function FormatV(element, indent)
        if type(element) == 'number' then
            return tostring(element)
        elseif type(element) == 'string' then
            return "\""..element.."\""
        elseif type(element) == 'boolean' then
            if element then
                return 'true'
            else
                return 'false'
            end
        elseif type(element) == 'function' then
            return 'function'
        elseif type(element) == 'table' then
            return tprint(element, indent+1)
        end
    end
    -- CHECK ERRORS
    if not indent then
        indent = 0
    end
    local PRINT = "{\r\n"
    indent = indent + 2
    for k, v in pairs(table) do
        -- PRINT K
        PRINT = PRINT .. string.rep(" ", indent) .. FormatK(k) .. " = "
        -- PRINT V
        PRINT = PRINT .. FormatV(v, indent)
        -- NEW LINE
        PRINT = PRINT .. ",\r\n"
    end
    indent = indent - 2
    PRINT = PRINT .. string.rep(" ", indent) .. "}"
    return PRINT
end