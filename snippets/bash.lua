local ls = require("luasnip")
-- local s = ls.snippet
-- local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local p = ls.parser_node
local parse = require("luasnip.util.parser").parse
ls.filetype_set("bash", { "sh" })
local shebang = "#!${1:/usr/bin/env bash}\n$0"
return {
  -- parse("bang", shebang),
  -- parse("#!/", shebang),
}
