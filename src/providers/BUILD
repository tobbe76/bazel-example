"""Providers example
"""

load(":providers.bzl", "default_info_provider", "print_dependencies", "myown_provider")

default_info_provider(
    name = "default_info_provider",
    out = "out.txt",
)

myown_provider(
    name = "myown_provider",
)

print_dependencies(
    name = "example1",
    srcs = [":default_info_provider"],
)

print_dependencies(
    name = "example2",
    srcs = [":myown_provider"],
)
