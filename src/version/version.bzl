
def _write_file_impl(ctx):
    ctx.actions.write(
        output = ctx.outputs.out,
        content = ctx.attr.content,
    )

write_file = rule(
    doc = "Writes string to file.",
    implementation = _write_file_impl,
    attrs = {
        "content": attr.string(mandatory = True, doc = "Content string to write"),
        "out": attr.output(mandatory = True, doc = "File name"),
    },
)
