"""Providers example
"""


def _default_info_provider_impl(ctx):    
    file = ctx.actions.declare_file("default_info_provider.txt")

    ctx.actions.write(
        output = file,
        content = "a string",
    )

    ctx.actions.write(
        output = ctx.outputs.out,
        content = "a string 2",
    )

    return [ DefaultInfo(files = depset([file, ctx.outputs.out])) ]

default_info_provider = rule(
    doc = "Example of a DefaultInfo Provider.",
    implementation = _default_info_provider_impl,
    attrs = {
        "out": attr.output(mandatory = True),
    },
)        



_myown_info = provider(
    fields = {
        'files' : 'somefiles',
        'info' : 'string data',
    }
)

def _myown_provider_impl(ctx):    
    file1 = ctx.actions.declare_file("default_info_provider.txt")

    ctx.actions.write(
        output = file1,
        content = "a string",
    )

    file2 = ctx.actions.declare_file("myown_provider.txt")

    ctx.actions.write(
        output = file2,
        content = "a string",
    )

    return [ DefaultInfo(files = depset([file1])),
             _myown_info(files = depset([file2]), info = "Important files") ]

myown_provider = rule(
    doc = "Example of a DefaultInfo Provider.",
    implementation = _myown_provider_impl,
    attrs = {
    },
)        



def _print_dependencies_impl(ctx):
    print("Files", ctx.files.srcs)
    for target in ctx.attr.srcs:
        if _myown_info in target:
            print("myown_info provider", target[_myown_info])

    return [ DefaultInfo(files = depset(ctx.files.srcs)) ]

print_dependencies = rule(
    doc = "Prints the dependencies.",
    implementation = _print_dependencies_impl,
    attrs = {
        "srcs": attr.label_list(allow_files = True),
    },
)        
