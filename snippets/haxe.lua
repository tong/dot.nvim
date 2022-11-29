--local ls = require "luasnip"
--local i = ls.insert_node
--local fmt = require("luasnip.extras.fmt").fmt
return {
    parse("/**", "/**\n\t$1\n**/"),
    parse("~/", "~/$1/$2;"),
    parse("trace", "trace($1);"),
    parse("if", "if($1)"),
    parse("ifel", "if($1) {\n} else {\n}"),
    parse("while", "while($1) {\n\t$2\n}"),
    parse("do", "do {\n\t$1\n} while($2);"),
    parse("class", "class ${1:Name} {\n\n\tpublic function new() {\n\t}\n}\n"),
    --parse("interface", "interface ${1:Name} {\n}\n"),
    parse("for", "for(${1:k} in ${2:v}) {\n\t$0\n}"),
    parse("fori", "for(i in ${1:0}...${2:10}) {\n\t$0\n}"),
    parse("switch", "switch $1 {\ncase $2: $3;\n}$0"),
    parse("try", "try {\n\t$1\n} catch(${2:e:Dynamic}) {\n\t${3:trace(e);}\n}"),
    parse("Trait", "class $1 extends iron.Trait {\n\n\tfunction new() {\n\t\tsuper();\n\t\tnotifyOnInit(() -> {\n\t\t});\n\t}\n}\n$0"),
}
