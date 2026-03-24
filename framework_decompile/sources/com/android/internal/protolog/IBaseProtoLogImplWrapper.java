package com.android.internal.protolog;

import com.android.internal.protolog.common.IProtoLogGroup;
import java.io.PrintWriter;
import java.util.TreeMap;

/* loaded from: classes4.dex */
public interface IBaseProtoLogImplWrapper {
    default int setLogging(boolean setTextLogging, boolean value, PrintWriter pw, String... groups) {
        return -1;
    }

    default TreeMap<String, IProtoLogGroup> getLogGroups() {
        return null;
    }
}
