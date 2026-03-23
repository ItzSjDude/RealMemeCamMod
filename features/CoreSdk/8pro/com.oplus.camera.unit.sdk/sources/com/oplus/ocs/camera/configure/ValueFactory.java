package com.oplus.ocs.camera.configure;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class ValueFactory {
    private static final Map<String, Value> sValueMap = new HashMap();
    private static final Map<String, ConflictTargetValue> sConflictTargetValueMap = new HashMap();

    public static <P> Value<P> getValue(String str, Class<P> cls) {
        String str2 = str + cls.getCanonicalName();
        Map<String, Value> map = sValueMap;
        Value<P> value = map.get(str2);
        if (value != null) {
            return value;
        }
        Value<P> value2 = new Value<>(str, cls);
        map.put(str2, value2);
        return value2;
    }

    public static <P> ConflictTargetValue<P> getConflictTargetValue(String str, Class<P> cls) {
        String str2 = str + cls.getCanonicalName();
        Map<String, ConflictTargetValue> map = sConflictTargetValueMap;
        ConflictTargetValue<P> conflictTargetValue = map.get(str2);
        if (conflictTargetValue != null) {
            return conflictTargetValue;
        }
        ConflictTargetValue<P> create = ConflictTargetValue.create(str, cls);
        map.put(str2, create);
        return create;
    }
}
