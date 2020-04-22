"""Macro example
Macros to generate many c files

"""

load(":macro.bzl", "gen_many_files")

generated_files = gen_many_files(10)

filegroup(
    name = "macro",
    srcs = generated_files,
)
