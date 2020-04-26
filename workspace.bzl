"""Workspace rules
Repository rules executed at bazel startup.

"""

def _preprocess_project_xml_impl(repository_ctx):
    repository_ctx.path(Label("//:extra.txt")) #Dynamically added dependency

    version_str = repository_ctx.read(repository_ctx.path(repository_ctx.attr.ver_file))

    repository_ctx.file("BUILD", content='')
    repository_ctx.file("version.bzl", content='VER = "' + version_str + '"')

generate_version = repository_rule(
    implementation = _preprocess_project_xml_impl,
    attrs = {
        "ver_file": attr.label(allow_single_file = True), #Static dependency
    },
)
