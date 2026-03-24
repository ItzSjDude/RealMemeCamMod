package com.oplus.shield.servicemaps;

import java.lang.reflect.Field;
import java.util.HashMap;
/* loaded from: classes.dex */
public class SystemServiceMap implements ISystemServiceMap {
    private static final String STUB_REGEX = "$Stub";
    private static final String TRANSACTION_REGEX = "TRANSACTION_";
    private String mServiceName;
    private HashMap<Integer, String> mTransactCodeMap = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public SystemServiceMap(String str) {
        this.mServiceName = str;
        initTransactCodeMap();
    }

    private void initTransactCodeMap() {
        Field[] declaredFields;
        try {
            Class<?> cls = Class.forName(this.mServiceName + STUB_REGEX);
            for (Field field : cls.getDeclaredFields()) {
                if (field.getName().startsWith(TRANSACTION_REGEX)) {
                    field.setAccessible(true);
                    this.mTransactCodeMap.put(Integer.valueOf(field.getInt(cls)), field.getName().replaceFirst(TRANSACTION_REGEX, ""));
                }
            }
        } catch (ClassNotFoundException | IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    @Override // com.oplus.shield.servicemaps.ISystemServiceMap
    public String getClassName(int i) {
        if (this.mTransactCodeMap.containsKey(Integer.valueOf(i))) {
            return this.mTransactCodeMap.get(Integer.valueOf(i));
        }
        return null;
    }

    @Override // com.oplus.shield.servicemaps.ISystemServiceMap
    public String getServiceName() {
        return this.mServiceName;
    }
}
