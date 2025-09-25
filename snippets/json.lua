local parse = require("luasnip.util.parser").parse_snippet

return {
  parse(
    "haxelib",
    '{\n\t"name": "$1",\n\t"version": "$2",\n\t"description": "$3",\n\t"license": "$4",\n\t"url": "$5",\n\t"contributors": [$6]\n}\n'
  ),
}
