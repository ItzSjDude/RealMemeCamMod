package com.oplus.module.loader;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public enum Module {
    TEST_BASE("test", "base", "com.oplus.test.base.Registry"),
    AUTOLAYOUT("AutoLayout", "autolayout", "com.oplus.autolayout.Registry"),
    MODULE_SERVICES("moduleservices", "moduleservices", "com.oplus.module.Registry");

    public String mJarName;
    public String mModuleName;
    public List<String> mRegistrys = new ArrayList();

    Module(String module, String jar, String... registries) {
        this.mModuleName = module;
        this.mJarName = jar;
        for (String registry : registries) {
            this.mRegistrys.add(registry);
        }
    }
}
