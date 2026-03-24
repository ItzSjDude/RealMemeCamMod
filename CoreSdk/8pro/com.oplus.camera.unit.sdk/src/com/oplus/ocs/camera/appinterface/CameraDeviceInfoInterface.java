package com.oplus.ocs.camera.appinterface;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.oplus.ocs.camera.common.parameter.Parameter;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface CameraDeviceInfoInterface {
    <T> T get(CameraCharacteristics.Key<T> key);

    @Nullable
    List<String> getConfigureListByParameter(@NonNull Parameter.Key key);

    Object getConfigureParameterRange(@NonNull String str);

    Map<String, Object> getConfigureParameterRangeMap();

    @Deprecated
    Map<String, List<String>> getConflictParameter();

    @Nullable
    Map<String, List<String>> getConflictParameter(String str, String str2);

    List<String> getPhysicalCameraTypeList();

    Hashtable<Size, Size> getPreviewMappingSizesFromConfig(String str, Map<String, String> map);

    Object getPreviewParameterRange(@NonNull String str);

    Map<String, Object> getPreviewParameterRangeMap();

    List<Integer> getSupportPictureFormat();

    List<Integer> getSupportPictureFormat(Map<String, String> map);

    List<Size> getSupportPictureSize();

    List<Size> getSupportPictureSize(Map<String, String> map);

    List<Size> getSupportPreviewSize(int i);

    List<Size> getSupportPreviewSize(int i, Map<String, String> map);

    List<Size> getSupportVideoSize();

    List<Size> getSupportVideoSize(Map<String, String> map);

    Pair<Size, Size> getVideoMappingSizesFromConfig(String str, Map<String, String> map);

    boolean isPreviewAlgoDisable(int i);

    boolean isSupportConfigureParameter(@NonNull String str);

    boolean isSupportPreviewParameter(@NonNull String str);
}
