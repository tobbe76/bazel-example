"""filecreator rules

"""

def _filecreator_impl(ctx):
    ctx.actions.write(
        output = ctx.outputs.out,
        content = "",
    )

filecreator = rule(
    doc = "Writes an empty c file.",
    implementation = _filecreator_impl,
    attrs = {
        "out": attr.output(mandatory = True, doc = "File name"),
    },
)
