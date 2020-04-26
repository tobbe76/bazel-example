load("@generated_version//:version.bzl", "VER")
load("version.bzl", "write_file")

write_file(
    name = "write_version_files",
    content = "Version: " + VER,
    out = "version.txt",
)
