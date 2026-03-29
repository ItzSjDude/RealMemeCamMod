package com.oplus.oms.split.splitrequest;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import com.oplus.oms.split.common.FileUtil;
import com.oplus.oms.split.common.SplitBaseInfoProvider;
import com.oplus.oms.split.common.SplitConstants;
import com.oplus.oms.split.common.SplitLog;
import com.oplus.oms.split.splitrequest.SplitInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class SplitInfoManagerImpl implements SplitInfoManager {
    private static final String TAG = "SplitInfoManagerImpl";
    private final AtomicReference<SplitDetails> mSplitDetailsRef = new AtomicReference<>();

    
    public static class SingletonHolder {
        private static final SplitInfoManager INSTANCE = new SplitInfoManagerImpl();

        private SingletonHolder() {
        }
    }

    public static SplitInfoManager getInstance() {
        return SingletonHolder.INSTANCE;
    }

    private SplitDetails getSplitDetails() {
        return this.mSplitDetailsRef.get();
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public String getBaseAppVersionName(Context context) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            return details.getAppVersionName();
        }
        return null;
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public String getOmsId(Context context) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            return details.getOmsId();
        }
        return null;
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public List<String> getSplitEntryFragments(Context context) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            return details.getSplitEntryFragments();
        }
        return Collections.emptyList();
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public SplitInfo getSplitInfo(Context context, String splitName) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            Collection<SplitInfo> splits = details.getSplitInfoListing().getSplitInfoMap().values();
            for (SplitInfo split : splits) {
                if (split.getSplitName().equals(splitName)) {
                    return split;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public SplitInfo getSplitUpdateInfo(Context context, String splitName) {
        return null;
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public List<SplitInfo> getSplitInfos(Context context, Collection<String> splitNames) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            Collection<SplitInfo> splits = details.getSplitInfoListing().getSplitInfoMap().values();
            List<SplitInfo> splitInfos = new ArrayList<>(splitNames.size());
            for (SplitInfo split : splits) {
                if (splitNames.contains(split.getSplitName())) {
                    splitInfos.add(split);
                    SplitLog.d(TAG, "getSplitInfos " + split, new Object[0]);
                }
            }
            return splitInfos;
        }
        return Collections.emptyList();
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public Collection<SplitInfo> getAllSplitInfo(Context context) {
        SplitDetails details = getOrCreateSplitDetails(context);
        if (details != null) {
            LinkedHashMap<String, SplitInfo> splitInfoMap = details.getSplitInfoListing().getSplitInfoMap();
            return splitInfoMap.values();
        }
        return Collections.emptyList();
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public Collection<SplitInfo> getAllUpdateSplitInfo(Context context) {
        return Collections.emptyList();
    }

    @Override // com.oplus.oms.split.splitrequest.SplitInfoManager
    public String getDefaultSplitInfoVersion() {
        return SplitBaseInfoProvider.getDefaultSplitInfoVersion();
    }

    private SplitDetails createSplitDetails(Context context) {
        try {
            long currentTime = System.currentTimeMillis();
            SplitDetails details = parseSplitContents(context);
            SplitLog.d(TAG, "Cost " + (System.currentTimeMillis() - currentTime) + " mil-second to parse default split info", new Object[0]);
            return details;
        } catch (IOException | JSONException e) {
            SplitLog.e(TAG, "Failed to create default split info!", e);
            return null;
        }
    }

    private synchronized SplitDetails getOrCreateSplitDetails(Context context) {
        SplitDetails details = getSplitDetails();
        if (details == null) {
            details = createSplitDetails(context);
            if (details == null || !TextUtils.isEmpty(details.getOmsId())) {
                this.mSplitDetailsRef.compareAndSet(null, details);
            } else {
                return null;
            }
        }
        return details;
    }

    private static SplitDetails parseSplitContents(Context context) throws IOException, JSONException {
        String content = readInputStreamContent(createInputStreamFromAssets(context));
        return parseSplitsContent(content);
    }

    private static InputStream createInputStreamFromAssets(Context context) {
        AssetManager assetManager = context.getAssets();
        if (assetManager != null) {
            try {
                String defaultJsonPath = buildAssetsJsonPathWithVersion("1.0");
                SplitLog.d(TAG, "default split file name: " + defaultJsonPath, new Object[0]);
                InputStream is = assetManager.open(defaultJsonPath);
                return is;
            } catch (IOException e) {
                try {
                    String omsConfigPath = buildAssetsJsonPathWithVersion(SplitBaseInfoProvider.getDefaultSplitInfoVersion());
                    SplitLog.d(TAG, "default json not exist, try OmsConfig: " + omsConfigPath, new Object[0]);
                    InputStream is2 = assetManager.open(omsConfigPath);
                    return is2;
                } catch (IOException e2) {
                    SplitLog.e(TAG, "assets json file not exist!", new Object[0]);
                    return null;
                }
            }
        }
        return null;
    }

    private static String buildAssetsJsonPathWithVersion(String version) {
        return SplitConstants.OMS + File.separator + SplitConstants.OMS_PREFIX + version + SplitConstants.DOT_JSON;
    }

    private static String readInputStreamContent(InputStream is) throws IOException {
        if (is == null) {
            return null;
        }
        BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8));
        StringBuilder stringBuffer = new StringBuilder();
        while (true) {
            String str = br.readLine();
            if (str != null) {
                stringBuffer.append(str);
            } else {
                FileUtil.closeQuietly(is);
                FileUtil.closeQuietly(br);
                return stringBuffer.toString();
            }
        }
    }

    private static SplitDetails parseSplitsContent(String content) throws JSONException {
        List<String> splitEntryFragments;
        JSONObject contentObj;
        JSONArray updateSplitsArray;
        HashMap<String, String> infoForSplit;
        int minSdkVersion;
        int dexNumber;
        List<SplitUpdateInfo> updateSplits;
        List<String> dependencies;
        String omsId;
        String appVersionName;
        List<String> dependencies2;
        List<String> list;
        String str;
        String str2;
        String splitName;
        if (content == null) {
            return null;
        }
        LinkedHashMap<String, SplitInfo> splitInfoMap = new LinkedHashMap<>();
        JSONObject contentObj2 = new JSONObject(content);
        String omsId2 = contentObj2.optString("mOmsId");
        String appVersionName2 = contentObj2.optString("mBaseVersionName");
        JSONArray updateSplitsArray2 = contentObj2.optJSONArray("mUpdateSplits");
        List<SplitUpdateInfo> updateSplits2 = new ArrayList<>();
        String str3 = "mSplitName";
        if (updateSplitsArray2 != null) {
            for (int i = 0; i < updateSplitsArray2.length(); i++) {
                JSONObject itemObj = updateSplitsArray2.getJSONObject(i);
                String splitName2 = itemObj.optString("mSplitName");
                String version = itemObj.optString("mSplitVersion");
                updateSplits2.add(new SplitUpdateInfo(splitName2, version));
            }
        }
        JSONArray splitEntryFragmentsArray = contentObj2.optJSONArray("mSplitEntryFragments");
        if (splitEntryFragmentsArray != null && splitEntryFragmentsArray.length() > 0) {
            List<String> splitEntryFragments2 = new ArrayList<>(splitEntryFragmentsArray.length());
            for (int i2 = 0; i2 < splitEntryFragmentsArray.length(); i2++) {
                String str4 = splitEntryFragmentsArray.getString(i2);
                splitEntryFragments2.add(str4);
            }
            splitEntryFragments = splitEntryFragments2;
        } else {
            splitEntryFragments = null;
        }
        JSONArray array = contentObj2.optJSONArray("mSplits");
        if (array == null) {
            throw new OMSRunTimeException("No splits found in split-details file!");
        }
        int i3 = 0;
        while (i3 < array.length()) {
            JSONObject itemObj2 = array.getJSONObject(i3);
            boolean builtIn = itemObj2.optBoolean("mBuiltIn");
            String str5 = str3;
            String splitName3 = itemObj2.optString(str5);
            int splitVersionCode = itemObj2.optInt("mVersionCode");
            String splitVersionName = itemObj2.optString("mVersionName");
            JSONObject infoSplit = itemObj2.optJSONObject("mInfoForSplit");
            HashMap<String, String> infoForSplit2 = new HashMap<>();
            if (infoSplit != null) {
                Iterator<String> keys = infoSplit.keys();
                while (keys.hasNext()) {
                    JSONObject contentObj3 = contentObj2;
                    String finalKey = keys.next();
                    JSONArray updateSplitsArray3 = updateSplitsArray2;
                    String finalValue = infoSplit.getString(finalKey);
                    infoForSplit2.put(finalKey, finalValue);
                    contentObj2 = contentObj3;
                    updateSplitsArray2 = updateSplitsArray3;
                    infoSplit = infoSplit;
                }
                contentObj = contentObj2;
                updateSplitsArray = updateSplitsArray2;
                infoForSplit = infoForSplit2;
            } else {
                contentObj = contentObj2;
                updateSplitsArray = updateSplitsArray2;
                infoForSplit = infoForSplit2;
            }
            int minSdkVersion2 = itemObj2.optInt("mMinSdkVersion");
            int dexNumber2 = itemObj2.optInt("mDexNumber");
            HashMap<String, String> infoForSplit3 = infoForSplit;
            JSONArray processes = itemObj2.optJSONArray("mWorkProcesses");
            List<String> workProcesses = null;
            if (processes == null || processes.length() <= 0) {
                minSdkVersion = minSdkVersion2;
                dexNumber = dexNumber2;
                updateSplits = updateSplits2;
            } else {
                minSdkVersion = minSdkVersion2;
                dexNumber = dexNumber2;
                List<String> workProcesses2 = new ArrayList<>(processes.length());
                int k = 0;
                while (true) {
                    updateSplits = updateSplits2;
                    if (k >= processes.length()) {
                        break;
                    }
                    workProcesses2.add(processes.optString(k));
                    k++;
                    updateSplits2 = updateSplits;
                }
                workProcesses = workProcesses2;
            }
            JSONArray dependenciesArray = itemObj2.optJSONArray("mDependencies");
            List<String> dependencies3 = null;
            if (dependenciesArray != null && dependenciesArray.length() > 0) {
                dependencies3 = new ArrayList<>(dependenciesArray.length());
                for (int m = 0; m < dependenciesArray.length(); m++) {
                    dependencies3.add(dependenciesArray.optString(m));
                }
            }
            JSONArray apkDataArray = itemObj2.optJSONArray("mApkData");
            String str6 = "mSize";
            String str7 = "mMd5";
            if (apkDataArray == null || apkDataArray.length() <= 0) {
                dependencies = dependencies3;
                omsId = omsId2;
                appVersionName = appVersionName2;
                dependencies2 = null;
            } else {
                dependencies = dependencies3;
                omsId = omsId2;
                dependencies2 = new ArrayList<>(apkDataArray.length());
                int p = 0;
                while (true) {
                    appVersionName = appVersionName2;
                    if (p >= apkDataArray.length()) {
                        break;
                    }
                    JSONObject apkDataObj = apkDataArray.optJSONObject(p);
                    String md5 = apkDataObj.optString("mMd5");
                    long size = apkDataObj.optLong("mSize");
                    SplitInfo.ApkData apkData = new SplitInfo.ApkData(null, null, md5, size);
                    dependencies2.add(apkData);
                    p++;
                    appVersionName2 = appVersionName;
                    apkDataArray = apkDataArray;
                }
            }
            JSONArray libDataArray = itemObj2.optJSONArray("mLibData");
            List<SplitInfo.LibData> libDataList = null;
            if (libDataArray == null || libDataArray.length() <= 0) {
                list = dependencies2;
            } else {
                list = dependencies2;
                libDataList = new ArrayList<>(libDataArray.length());
                int j = 0;
                while (j < libDataArray.length()) {
                    JSONObject libDataObj = libDataArray.optJSONObject(j);
                    int j2 = j;
                    String cpuAbi = libDataObj.optString("mAbi");
                    JSONArray libDataArray2 = libDataArray;
                    JSONArray jniLibsArray = libDataObj.optJSONArray("mJniLibs");
                    List<SplitInfo.LibData.Lib> jniLibs = new ArrayList<>();
                    if (jniLibsArray == null || jniLibsArray.length() <= 0) {
                        str = str6;
                        str2 = str7;
                        splitName = splitName3;
                    } else {
                        int k2 = 0;
                        while (true) {
                            splitName = splitName3;
                            if (k2 >= jniLibsArray.length()) {
                                break;
                            }
                            JSONObject libObj = jniLibsArray.optJSONObject(k2);
                            JSONArray jniLibsArray2 = jniLibsArray;
                            String name = libObj.optString("mName");
                            int k3 = k2;
                            String soMd5 = libObj.optString(str7);
                            JSONArray splitEntryFragmentsArray2 = splitEntryFragmentsArray;
                            long soSize = libObj.optLong(str6);
                            String str8 = str6;
                            SplitInfo.LibData.Lib lib = new SplitInfo.LibData.Lib(name, soMd5, soSize);
                            jniLibs.add(lib);
                            k2 = k3 + 1;
                            splitName3 = splitName;
                            jniLibsArray = jniLibsArray2;
                            splitEntryFragmentsArray = splitEntryFragmentsArray2;
                            array = array;
                            str6 = str8;
                            str7 = str7;
                        }
                        str = str6;
                        str2 = str7;
                    }
                    SplitInfo.LibData libInfo = new SplitInfo.LibData(cpuAbi, jniLibs);
                    libDataList.add(libInfo);
                    j = j2 + 1;
                    libDataArray = libDataArray2;
                    splitName3 = splitName;
                    splitEntryFragmentsArray = splitEntryFragmentsArray;
                    array = array;
                    str6 = str;
                    str7 = str2;
                }
            }
            String splitName4 = splitName3;
            JSONArray splitEntryFragmentsArray3 = splitEntryFragmentsArray;
            List<String> workProcesses3 = workProcesses;
            List<String> workProcesses4 = list;
            String appVersionName3 = appVersionName;
            SplitInfo splitInfo = new SplitInfo(splitName4, appVersionName3, splitVersionCode, splitVersionName, builtIn, minSdkVersion, dexNumber, workProcesses3, dependencies, workProcesses4, libDataList, infoForSplit3);
            appVersionName2 = appVersionName3;
            splitInfoMap.put(splitName4, splitInfo);
            i3++;
            str3 = str5;
            contentObj2 = contentObj;
            updateSplitsArray2 = updateSplitsArray;
            updateSplits2 = updateSplits;
            omsId2 = omsId;
            splitEntryFragmentsArray = splitEntryFragmentsArray3;
            array = array;
        }
        SplitInfoListing splitInfoListing = new SplitInfoListing(splitInfoMap);
        return new SplitDetails(omsId2, appVersionName2, updateSplits2, splitEntryFragments, splitInfoListing);
    }
}
