local conds = require("luasnip.extras.expand_conditions")
return {
    s("repeat", { i(1, "text"), t({ "", "" }), rep(1) }),
    s(
        { trig = "date", name = "Date", dscr = "YYYY-MM-DD" },
        { p(os.date, "%Y-%m-%d") }
    ),
    s(
        { trig = "time", name = "Time", dscr = "HH:MM:SS" },
        { p(os.date, "%H:%M:%S") }
    ),
    s(
        { trig = "datetime", name = "Datetime", dscr = "YYYY-MM-DD HH:MM:SS" },
        { p(os.date, "%Y-%m-%d %H:%M:%S") }
    ),
    s(
        { trig = "TODO", name = "TODO" },
        { t("TODO") },
        { condition = conds.line_begin }
    ),
    s({ trig = "dt", namre = "disktree" }, { t("disktree") }),
    s({ trig = "dtn", name = "disktree.net" }, { t("disktree.net") }),
    --s( { trigger = "year" }, p(os.date, "%Y")),
    --s({ trig = "test", name = "TEST" }, { t("TEST") }, { condition = conds.line_begin, } ),
}
