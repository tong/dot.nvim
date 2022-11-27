return {
    parse("doctype", '<!doctype html>\n<html>\n\t<head>\n\t\t<meta charset="utf-8">\n\t\t<title>$1</title>\n\t</head>\n\t<body>$2</body>\n</html>\n\n'),
    parse("html", '<html>\n\t<head>\n\t\t<meta charset="utf-8">\n\t\t<title>$1</title>\n\t</head>\n\t<body>$2</body>\n</html>\n\n'),
    --parse("{{", "{{ .Site }}")
}
