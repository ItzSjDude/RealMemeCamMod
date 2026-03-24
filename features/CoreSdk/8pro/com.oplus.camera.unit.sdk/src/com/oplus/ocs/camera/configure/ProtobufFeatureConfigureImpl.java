package com.oplus.ocs.camera.configure;

import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.util.CameraConstant;
import com.oplus.ocs.camera.common.util.CameraUnitLog;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ProtobufFeatureConfigureImpl implements ProtobufFeatureConfigureInterface {
    private static final String TAG = "ProtobufFeatureConfigureImpl";
    private String mCameraType;
    private Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> mFeatureTable = Collections.EMPTY_MAP;
    private List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> mGroupFeatureTableList = Collections.EMPTY_LIST;
    private String mModeName;

    private ProtobufFeatureConfigureImpl(String str, String str2) {
        this.mModeName = str;
        this.mCameraType = str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ProtobufFeatureConfigureImpl create(String str, String str2) {
        return new ProtobufFeatureConfigureImpl(str, str2);
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfigureInterface
    @Nullable
    public <P> ProtobufFeatureInfoInterface<P> getFeatureInfo(CameraFeatureKey<P> cameraFeatureKey) {
        if (cameraFeatureKey == null) {
            return null;
        }
        return (ProtobufFeatureInfoInterface<P>) this.mFeatureTable.get(cameraFeatureKey);
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfigureInterface
    public Collection<ProtobufFeatureInfoInterface<?>> getFeatureInfoList() {
        return this.mFeatureTable.values();
    }

    @Override // com.oplus.ocs.camera.configure.ProtobufFeatureConfigureInterface
    public <P> List<ConflictFeature<?>> getConflictFeatureList(CameraFeatureKey<P> cameraFeatureKey, P p, RuntimeFeatureCallback runtimeFeatureCallback) {
        ProtobufFeatureInfoInterface<?> protobufFeatureInfoInterface = this.mFeatureTable.get(cameraFeatureKey);
        if (protobufFeatureInfoInterface == null) {
            return Collections.EMPTY_LIST;
        }
        List<ConflictFeature<?>> conflictFeatureList = protobufFeatureInfoInterface.getConflictFeatureList(p, runtimeFeatureCallback);
        if (protobufFeatureInfoInterface.getGroupConflict()) {
            CameraUnitLog.d(TAG, "mutex trigger feature info: " + this.mModeName + CameraConstant.JSON_CONNECTOR_COMMA + this.mCameraType + CameraConstant.JSON_CONNECTOR_COMMA + protobufFeatureInfoInterface.getFeatureKeyName() + CameraConstant.JSON_CONNECTOR_COMMA + protobufFeatureInfoInterface.getFeatureKeyName() + CameraConstant.JSON_CONNECTOR_COMMA + p);
            int i = 0;
            for (Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map : this.mGroupFeatureTableList) {
                ProtobufFeatureInfoInterface<?> protobufFeatureInfoInterface2 = map.get(cameraFeatureKey);
                if (protobufFeatureInfoInterface2 != null) {
                    i++;
                    List<ConflictFeature<?>> conflictFeatureList2 = protobufFeatureInfoInterface2.getConflictFeatureList(p, runtimeFeatureCallback);
                    if (!conflictFeatureList2.isEmpty()) {
                        CameraUnitLog.d(TAG, "groupFeature contains trigger feature, groupFeature index: " + i + ", groupFeatureSize: " + map.size());
                        if (isGroupConflictHit(map, runtimeFeatureCallback)) {
                            conflictFeatureList.addAll(conflictFeatureList2);
                        }
                    }
                }
            }
        }
        if (!conflictFeatureList.isEmpty()) {
            for (ConflictFeature<?> conflictFeature : conflictFeatureList) {
                CameraUnitLog.d(TAG, conflictFeature.getFeatureKey().getName() + "--->" + conflictFeature.getDefaultValue());
            }
        }
        return conflictFeatureList;
    }

    private <P> boolean isGroupConflictHit(Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map, RuntimeFeatureCallback runtimeFeatureCallback) {
        boolean z;
        Iterator<ProtobufFeatureInfoInterface<?>> it = map.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                z = true;
                break;
            }
            ProtobufFeatureInfoInterface<?> next = it.next();
            Object runtimeFeatureValue = runtimeFeatureCallback.getRuntimeFeatureValue(next.getFeatureKeyName());
            if (!next.getValueRange().isTargetValue(runtimeFeatureValue)) {
                CameraUnitLog.d(TAG, "break, " + next.getFeatureKeyName() + " configValue: " + next.getValueRange().getOriginValue() + " runtimeValue: " + runtimeFeatureValue);
                z = false;
                break;
            }
        }
        if (z) {
            CameraUnitLog.d(TAG, "group_conflict_hit");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setFeatureTable(Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.mFeatureTable = map;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGroupFeatureTableList(List<Map<CameraFeatureKey<?>, ProtobufFeatureInfoInterface<?>>> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.mGroupFeatureTableList = list;
    }
}
