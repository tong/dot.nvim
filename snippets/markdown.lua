local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local func = ls.function_node
local insert = ls.insert_node
local parse = require("luasnip.util.parser").parse_snippet

return {
  snip({
    trig = "link",
    name = "markdown_link",
    dscr = "Create markdown link [txt](url)",
  }, {
    text("["),
    insert(1),
    text("]("),
    func(function(_, snp)
      return snp.env.TM_SELECTED_TEXT[1] or {}
    end, {}),
    text(")"),
    insert(0),
  }),
  parse("table", "| ${1: } | ${2: } | ${3: } |\n|---|---|---|\n| ${1: } | ${2: } | ${3: } |"),
  parse("[]", "[$1]($2)"),
  parse("![]", "![$1]($2)"),
  parse("task", "- [${1: }] $0"),
}
