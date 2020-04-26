load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "googletest",
    remote = "https://github.com/google/googletest",
    tag = "release-1.10.0",
)

load(":workspace.bzl", "generate_version")

generate_version(
    name = "generated_version",
    ver_file = "//:project_config.cfg",
)
