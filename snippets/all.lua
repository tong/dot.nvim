local ls = require "luasnip"
local snip = ls.snippet
local func = ls.function_node

--local date = function() return { os.date('%Y-%m-%d') } end
--local time = function() return { os.date('%H:%M:%S') } end

return {
    snip(
        {
            trig = "date",
            namr = "Date",
            qdscr = "Date in the form of YYYY-MM-DD"
        },
        { func(function() return { os.date('%Y-%m-%d') } end, {}) }
    ),
    snip(
        {
            trig = "time",
            namr = "Time",
            qdscr = "Time in the form of HH:MM:SS"
        },
        { func(function() return { os.date('%H:%M:%S') } end, {}) }
    ),
    snip(
        {
            trig = "datetime",
            namr = "Datetime",
            qdscr = "Datetime in the form of YYYY-MM-DD HH:MM:SS"
        },
        { func(function() return { os.date('%Y-%m-%d %H:%M:%S') } end, {}) }
    ),
    parse("dt", "disktree"),
    parse("dtn", "disktree.net")
}

