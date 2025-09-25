local parse = require("luasnip.util.parser").parse_snippet

return {
  parse("printf", 'printf("$1\\n");'),
}
