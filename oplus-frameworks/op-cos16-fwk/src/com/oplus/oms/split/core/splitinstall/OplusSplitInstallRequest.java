package com.oplus.oms.split.core.splitinstall;

import java.util.List;

public class OplusSplitInstallRequest {
    private final List<String> mModuleNames;

    protected OplusSplitInstallRequest(List<String> moduleNames) {
        this.mModuleNames = moduleNames;
    }

    
    public List<String> getModuleNames() {
        return this.mModuleNames;
    }

    public String toString() {
        return "SplitInstallRequest{modulesNames=" + this.mModuleNames + "}";
    }
}
