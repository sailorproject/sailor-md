local md = {}
local markdown = require "markdown"
local sailor = require "sailor"

function md.include(path)   
    local f = assert (io.open (sailor.path.."/"..path, "rb"))
    local src = f:read("*all")
    f:close()
    src = markdown(src)
    sailor.r:write(src)
end

if page then
	page.include_md = function(_,...) md.include(...) end
end

return md
