package com.oplus.ocs.camera.configure;

import android.content.Context;
import android.util.Pair;
import com.oplus.ocs.camera.producer.feature.FeatureInterface;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public interface IConfigParser {
    boolean loadConfigFile(Context context);

    List<String> parseCameraIdList();

    void parseConfigureParameters(HashMap<String, String[]> hashMap, Map<String, String> map);

    Map<String, String> parseDeviceInfo();

    String parseDngDescription(String str);

    Map<String, LinkedHashMap<String, Map<String, String>>> parseFeatureOperationMode();

    Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportPreviewSize();

    Map<String, Map<String, Map<String, LinkedList<String>>>> parseMaxSupportVideoSize();

    Map<String, Map<String, Map<String, FeatureInterface>>> parseModeCameraTypeFeature(List<String> list);

    Map<String, String> parseModeOperationMode();

    Map<String, List<String>> parseSupportedMode();

    Map<String, LinkedList<Pair<String, String>>> parseUsecaseInfo();

    Map<String, String> parseVendorTagInfo();

    Map<String, Map<String, Map<String, String>>> parserCaptureStreamNumberConfig();

    List<String> parserDefaultSupportPreviewSizes();

    List<String> parserDefaultSupportVideoSizes();

    Map<String, LinkedList<Pair<String, String>>> parserSensorNumberConfig();
}
