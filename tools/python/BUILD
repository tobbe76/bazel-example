load("@bazel_tools//tools/python:toolchain.bzl", "py_runtime_pair")

py_runtime(
    name = "my_py2_runtime",
    interpreter_path = "/usr/bin/python2.7.exe",
    python_version = "PY2",
)

py_runtime(
    name = "my_py3_runtime",
    interpreter_path = "/usr/bin/python3.7m.exe",
    python_version = "PY3",
)

py_runtime_pair(
    name = "my_py_runtime_pair",
    py2_runtime = ":my_py2_runtime",
    py3_runtime = ":my_py3_runtime",
)

toolchain(
    name = "my_toolchain",
    toolchain = ":my_py_runtime_pair",
    toolchain_type = "@bazel_tools//tools/python:toolchain_type",
)
