cc_test(
    name = "tests",
    srcs = ["main.cpp", "test.cpp"],
    deps = ["@googletest//:gtest_main"],
    linkopts = ["-static", "-lstdc++"],
    shard_count = 8,
)
