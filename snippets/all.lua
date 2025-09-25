local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
-- local i = ls.insert_node
-- local f = ls.function_node
-- local p = ls.parser_node

return {
  s({ trig = "dt", name = "disktree" }, { t("disktree") }),
  s({ trig = "dtn", name = "disktree.net" }, { t("disktree.net") }),
  -- s({ trig = "year" }, p(os.date, "%Y")),
}
