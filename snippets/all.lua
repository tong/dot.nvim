return {
    s("repeat", { i(1, "text"), t({ "", "" }), rep(1) }),
    s(
        {
            trig = "date",
            namr = "Date",
            qdscr = "Date in the form of YYYY-MM-DD"
        },
        { f(function() return { os.date('%Y-%m-%d') } end, {}) }
    ),
    s(
        {
            trig = "time",
            namr = "Time",
            qdscr = "Time in the form of HH:MM:SS"
        },
        { f(function() return { os.date('%H:%M:%S') } end, {}) }
    ),
    s(
        {
            trig = "datetime",
            namr = "Datetime",
            qdscr = "Datetime in the form of YYYY-MM-DD HH:MM:SS"
        },
        { f(function() return { os.date('%Y-%m-%d %H:%M:%S') } end, {}) }
    ),


    s({ trig = "TODO", namr = "TODO" }, { t"TODO" }),
    s({ trig = "dt", namr = "disktree" }, { t"disktree" }),
    s({ trig = "dtn", namr = "disktree.net" }, { t"disktree.net" }),
}

