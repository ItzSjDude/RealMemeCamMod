package com.oplus.module.testsuite;

import android.util.Log;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public interface TestInterface {

    public static class Dummy implements TestInterface {
    }

    default List<String> testIntf() {
        Log.d("TestInterface", "TestInterface() default");
        return Collections.emptyList();
    }

    public interface Inner {

        public static class Dummy implements Inner {
        }

        default void test_inner() {
            Log.d("TestInterface", "TestInterface.Inner.test_inner()");
        }
    }
}
