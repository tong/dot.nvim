local shebang = "#!/bin/sh\n$0"
return {
    parse("bang", shebang),
    parse("#!/", shebang)
}
