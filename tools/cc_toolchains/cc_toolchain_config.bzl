
load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
     "artifact_name_pattern",
     "tool_path")

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "C:/Devtools/Install/Cygwin/3.0.7/bin/x86_64-w64-mingw32-gcc.exe",
        ),
        tool_path(
            name = "ld",
            path = "C:/Devtools/Install/Cygwin/3.0.7/bin/x86_64-w64-mingw32-ld.exe",
        ),
        tool_path(
            name = "ar",
            path = "C:/Devtools/Install/Cygwin/3.0.7/bin/x86_64-w64-mingw32-ar.exe",
        ),
        tool_path(
            name = "cpp",
            path = "/bin/false",
        ),
        tool_path(
            name = "gcov",
            path = "/bin/false",
        ),
        tool_path(
            name = "nm",
            path = "/bin/false",
        ),
        tool_path(
            name = "objdump",
            path = "/bin/false",
        ),
        tool_path(
            name = "strip",
            path = "/bin/false",
        ),
    ]

    exe_extention = artifact_name_pattern(
        category_name =  'executable',
        prefix =  '',
        extension = '.exe',
    )
    
    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "cygwin_gcc_toolchain",
        host_system_name = "i686-unknown-linux-gnu",
        target_system_name = "asmjs-unknown-emscripten",
        target_cpu = "x64_windows",
        target_libc = "unknown",
        compiler = "emscripten",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths,
        cxx_builtin_include_directories = ["C:/Devtools/Install/Cygwin/3.0.7/usr/include",
                                           "C:/Devtools/Install/Cygwin/3.0.7/usr/x86_64-w64-mingw32/sys-root/mingw/include",
                                           "C:/Devtools/Install/Cygwin/3.0.7/usr/lib/gcc/x86_64-w64-mingw32/7.4.0/include-fixed",
                                           "C:/Devtools/Install/Cygwin/3.0.7/lib/gcc/x86_64-w64-mingw32/7.4.0/include-fixed",
                                           "C:/Devtools/Install/Cygwin/3.0.7/usr/lib/gcc/x86_64-w64-mingw32/7.4.0/include/c++/bits",
                                           "C:/Devtools/Install/Cygwin/3.0.7/usr/lib/gcc/x86_64-w64-mingw32/7.4.0/include/c++",
                                           "C:/Devtools/Install/Cygwin/3.0.7/usr/lib/gcc/x86_64-w64-mingw32/7.4.0/include"],
        artifact_name_patterns = [exe_extention],
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
