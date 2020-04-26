#include <gtest/gtest.h>
#include <Windows.h>

TEST(DummySuite, case1) {
   Sleep(10000);
   ASSERT_TRUE(1 == 1);
}

TEST(DummySuite, case2) {
   Sleep(10000);
   ASSERT_TRUE(1 == 1);
}

TEST(DummySuite, case3) {
   Sleep(10000);
   ASSERT_TRUE(1 == 1);
}

TEST(DummySuite, case4) {
   Sleep(10000);
   ASSERT_TRUE(1 == 2);
}

