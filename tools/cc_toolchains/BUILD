package(default_visibility = ["//visibility:public"])

load(":cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "cygwin_gcc_toolchain_config")

cc_toolchain_suite(
    name = "toolchain",
    toolchains = {
        "x64_windows|cygwin_gcc": "cygwin_gcc_toolchain",
        "x64_windows": "cygwin_gcc_toolchain",
    },
)

filegroup(
    name = "all",
    srcs = [
    ],
)

cc_toolchain(
   name = "cygwin_gcc_toolchain",
   toolchain_identifier = "cygwin_gcc_toolchain",
   toolchain_config = ":cygwin_gcc_toolchain_config",
   all_files = ":all",
   compiler_files = ":all",
   dwp_files = ":empty",
   linker_files = ":all",
   objcopy_files = ":empty",
   strip_files = ":empty",
   supports_param_files = 0,
)


