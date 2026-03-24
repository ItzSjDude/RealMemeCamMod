package com.oplus.module.testsuite;

import com.oplus.module.loader.Module;
import java.util.Collections;
import java.util.List;
import system.ext.module.loader.ModuleLoader;

/* loaded from: classes3.dex */
public class TestSuite {
    public List<String> call() {
        TestInterface testsuite = (TestInterface) ModuleLoader.type(TestInterface.class).module(Module.TEST_BASE).base(this).create();
        if (testsuite != null) {
            return testsuite.testIntf();
        }
        return Collections.emptyList();
    }
}
