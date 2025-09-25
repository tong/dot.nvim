local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local parse = require("luasnip.util.parser").parse_snippet

return {
  parse(
    "doctype",
    [[<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<title>$1</title>
	</head>
	<body>$2</body>
</html>

]]
  ),
  parse(
    "html",
    [[<html>
	<head>
		<meta charset="utf-8">
		<title>$1</title>
	</head>
	<body>$2</body>
</html>

]]
  ),
  s("link_url", {
    t('<a href="'),
    f(function(_, snip)
      -- TM_SELECTED_TEXT is a table to account for multiline-selections.
      -- In this case only the first line is inserted.
      return snip.env.TM_SELECTED_TEXT[1] or {}
    end, {}),
    t('">'),
    i(1),
    t("</a>"),
    i(0),
  }),
  parse("[]", "[$1]($2)"),
  parse("![]", "![$1]($2)"),
  parse(
    "table",
    [[| ${1: } | ${2: } | ${3: } |
|---|---|---|
| ${1: } | ${2: } | ${3: } |
]]
  ),
  parse("task", "- [${1: }] $0"),
}

