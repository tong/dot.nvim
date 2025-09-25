local parse = require("luasnip.util.parser").parse_snippet

return {
  parse("-js", "-js ${1:<file>}.js"),
  parse("-lua", "-lua ${1:<file>}.lua"),
  parse("-neko", "-neko ${1:<file>}.n"),
  parse("-php", "-php ${1:<file>}.n"),
  parse("-cpp", "-cpp ${1:<directory>}"),
  parse("-cppia", "-cpp ${1:<file>}"),
  parse("-jvm", "-jvm ${1:<file>}"),
  parse("-python", "-python ${1:<file>}.py"),
  parse("-hl", "-hl ${1:<file>}.hl"),
  parse("--run", "--run ${1:<module>}"),
}
