--local ls = require "luasnip"
--ls.filetype_set("bash", { "sh" })
local shebang = "#!${1:/usr/bin/env bash}\n$0"
return {
    parse("bang", shebang),
    parse("#!/", shebang)
}
