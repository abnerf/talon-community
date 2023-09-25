# Add symbol at end of line and then insert line below
# From https://github.com/AndreasArvidsson/andreas-talon/blob/master/misc/keys/keys.talon#L28
patch {user.symbol_key}:
    edit.line_end()
    "{symbol_key}"
    edit.line_insert_down()
spam: ", "
pipe gap: " | "
boom: ". "
bullet: "* "
new line: "\n"
double dash: "--"
triple quote: "'''"
(triple grave | triple back tick | gravy): insert("```")
(dot dot | dotdot): ".."
ellipsis: "..."
(comma and | spamma): ", "
arrow: "->"
dub arrow: "=>"
empty dub string: user.insert_between('"', '"')
empty escaped (dub string | dub quotes): user.insert_between('\\"', '\\"')
empty string: user.insert_between("'", "'")
empty escaped string: user.insert_between("\\'", "\\'")
(inside parens | round | args): user.insert_between("(", ")")
inside (squares | box | square brackets | list): user.insert_between("[", "]")
inside (bracket | curly | braces): user.insert_between("{", "}")
inside percent: user.insert_between("%", "%")
inside (quotes | string): user.insert_between("'", "'")
inside (double quotes | dub quotes): user.insert_between('"', '"')
inside (graves | back ticks): user.insert_between("`", "`")
angle that:
    text = edit.selected_text()
    user.paste("<{text}>")
(square | box | square bracket) that:
    text = edit.selected_text()
    user.paste("[{text}]")
(bracket | curly | brace) that:
    text = edit.selected_text()
    user.paste("{{{text}}}")
(parens | round | args) that:
    text = edit.selected_text()
    user.paste("({text})")
percent that:
    text = edit.selected_text()
    user.paste("%{text}%")
quote that:
    text = edit.selected_text()
    user.paste("'{text}'")
(double quote | dub quote) that:
    text = edit.selected_text()
    user.paste('"{text}"')
(grave | back tick) that:
    text = edit.selected_text()
    user.paste("`{text}`")
(diamond) that:
    text = edit.selected_text()
    user.paste("<{text}>")
