local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
return {
  s({
    trig = "#!/usr/bin/zsh",
    dscr = "Shebang (zsh)",
  }, {
    t({ "#!/usr/bin/zsh", "" }),
    i(0),
  }),
}
