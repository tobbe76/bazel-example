"""filemerge rule
Implementations

"""

load("//tools/python:python.bzl", "PYTHON_BINARY_PATH")

def _merge_files_impl(ctx):
    args = ctx.actions.args()
    #TODO: Build the args object here

    ctx.actions.run(
        outputs = #TODO: Output dependencies
      	inputs = #TODO: Input dependencies
      	progress_message="Mergefiles",
        executable = PYTHON_BINARY_PATH,
        arguments = [args],
    )
    
merge_files = rule(
    implementation = _merge_files_impl,
    attrs = {
        #TODO: Add 'srcs' should be a list of labels
        #TODO: Add 'out' should be an outpu file
        '_script': attr.label(allow_single_file = True, default = ":filemerge.py"),
    },
)    
