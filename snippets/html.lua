return {
    parse("doctype", '<!doctype html>\n<html>\n\t<head>\n\t\t<meta charset="utf-8">\n\t\t<title>$1</title>\n\t</head>\n\t<body>$2</body>\n</html>\n\n'),
    parse("html", '<html>\n\t<head>\n\t\t<meta charset="utf-8">\n\t\t<title>$1</title>\n\t</head>\n\t<body>$2</body>\n</html>\n\n'),
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
}
