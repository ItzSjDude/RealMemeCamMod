package com.oplus.ocs.camera.configure;

import androidx.annotation.NonNull;
import com.oplus.ocs.camera.common.util.CameraConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
class ConflictTargetValue<P> {
    private final String mOriginValue;

    @NonNull
    private final List<Value<P>> mValue;

    protected static <V> ConflictTargetValue create(String str, Class<V> cls) {
        return new ConflictTargetValue(str, cls);
    }

    private ConflictTargetValue(String str, Class<P> cls) {
        this.mOriginValue = str;
        ArrayList arrayList = new ArrayList();
        this.mValue = arrayList;
        if (str.startsWith("[(") || str.startsWith("[[")) {
            for (String str2 : str.substring(1, str.length() - 1).split(CameraConstant.JSON_CONNECTOR_COMMA)) {
                this.mValue.add(ValueFactory.getValue(str2, cls));
            }
            return;
        }
        arrayList.add(ValueFactory.getValue(str, cls));
    }

    protected String getOriginValue() {
        return this.mOriginValue;
    }

    protected boolean isTargetValue(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator<Value<P>> it = this.mValue.iterator();
        while (it.hasNext()) {
            if (it.next().isTargetValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.mOriginValue, ((ConflictTargetValue) obj).mOriginValue);
    }

    public int hashCode() {
        return Objects.hash(this.mOriginValue);
    }

    public String toString() {
        return "ConflictFeatureValue{mOriginValue='" + this.mOriginValue + "'}";
    }
}
