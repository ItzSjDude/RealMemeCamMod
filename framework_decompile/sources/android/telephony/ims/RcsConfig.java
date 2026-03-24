package android.telephony.ims;

import android.content.ContentValues;
import android.content.Context;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Build;
import android.provider.Telephony;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.android.telephony.Rlog;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* loaded from: classes3.dex */
public final class RcsConfig {
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_TYPE = "type";
    private static final String ATTRIBUTE_VALUE = "value";
    private static final boolean DBG = Build.IS_ENG;
    private static final String LOG_TAG = "RcsConfig";
    private static final String PARM_SINGLE_REGISTRATION = "rcsVolteSingleRegistration";
    private static final String TAG_CHARACTERISTIC = "characteristic";
    private static final String TAG_PARM = "parm";
    private Characteristic mCurrent;
    private final byte[] mData;
    private final Characteristic mRoot;

    public static class Characteristic {
        private final Characteristic mParent;
        private final Map<String, String> mParms;
        private final Set<Characteristic> mSubs;
        private String mType;

        private Characteristic(String type, Characteristic parent) {
            this.mParms = new ArrayMap();
            this.mSubs = new ArraySet();
            this.mType = type;
            this.mParent = parent;
        }

        private String getType() {
            return this.mType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Map<String, String> getParms() {
            return this.mParms;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Set<Characteristic> getSubs() {
            return this.mSubs;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Characteristic getParent() {
            return this.mParent;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Characteristic getSubByType(String type) {
            if (TextUtils.equals(this.mType, type)) {
                return this;
            }
            Characteristic result = null;
            for (Characteristic sub : this.mSubs) {
                result = sub.getSubByType(type);
                if (result != null) {
                    break;
                }
            }
            return result;
        }

        private boolean hasSubByType(String type) {
            return getSubByType(type) != null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String getParmValue(String name) {
            String value = this.mParms.get(name);
            if (value == null) {
                for (Characteristic sub : this.mSubs) {
                    value = sub.getParmValue(name);
                    if (value != null) {
                        break;
                    }
                }
            }
            return value;
        }

        boolean hasParm(String name) {
            if (this.mParms.containsKey(name)) {
                return true;
            }
            for (Characteristic sub : this.mSubs) {
                if (sub.hasParm(name)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(NavigationBarInflaterView.SIZE_MOD_START + this.mType + "]: ");
            if (RcsConfig.DBG) {
                sb.append(this.mParms);
            }
            for (Characteristic sub : this.mSubs) {
                sb.append("\n");
                sb.append(sub.toString().replace("\n", "\n\t"));
            }
            return sb.toString();
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Characteristic)) {
                return false;
            }
            Characteristic o = (Characteristic) obj;
            return TextUtils.equals(this.mType, o.mType) && this.mParms.equals(o.mParms) && this.mSubs.equals(o.mSubs);
        }

        public int hashCode() {
            return Objects.hash(this.mType, this.mParms, this.mSubs);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RcsConfig(byte[] bArr) throws XmlPullParserException, IOException, IllegalArgumentException {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Empty data");
        }
        CharacteristicIA characteristicIA = null;
        Characteristic characteristic = new Characteristic(0 == true ? 1 : 0, 0 == true ? 1 : 0);
        this.mRoot = characteristic;
        this.mCurrent = characteristic;
        this.mData = bArr;
        Characteristic parent = this.mRoot;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            try {
                XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
                xmlPullParserFactoryNewInstance.setNamespaceAware(true);
                XmlPullParser xmlPullParserNewPullParser = xmlPullParserFactoryNewInstance.newPullParser();
                xmlPullParserNewPullParser.setInput(byteArrayInputStream, null);
                int eventType = xmlPullParserNewPullParser.getEventType();
                while (eventType != 1 && parent != null) {
                    if (eventType == 2) {
                        String lowerCase = xmlPullParserNewPullParser.getName().trim().toLowerCase();
                        if (TAG_CHARACTERISTIC.equals(lowerCase)) {
                            int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                            String lowerCase2 = null;
                            if (attributeCount > 0) {
                                int i = 0;
                                while (true) {
                                    if (i >= attributeCount) {
                                        break;
                                    }
                                    String lowerCase3 = xmlPullParserNewPullParser.getAttributeName(i).trim().toLowerCase();
                                    if (!"type".equals(lowerCase3)) {
                                        i++;
                                    } else {
                                        lowerCase2 = xmlPullParserNewPullParser.getAttributeValue(xmlPullParserNewPullParser.getAttributeNamespace(i), lowerCase3).trim().toLowerCase();
                                        break;
                                    }
                                }
                            }
                            Characteristic characteristic2 = new Characteristic(lowerCase2, parent);
                            parent.getSubs().add(characteristic2);
                            parent = characteristic2;
                        } else if (TAG_PARM.equals(lowerCase)) {
                            int attributeCount2 = xmlPullParserNewPullParser.getAttributeCount();
                            String lowerCase4 = null;
                            String strTrim = null;
                            if (attributeCount2 > 1) {
                                for (int i2 = 0; i2 < attributeCount2; i2++) {
                                    String lowerCase5 = xmlPullParserNewPullParser.getAttributeName(i2).trim().toLowerCase();
                                    if ("name".equals(lowerCase5)) {
                                        lowerCase4 = xmlPullParserNewPullParser.getAttributeValue(xmlPullParserNewPullParser.getAttributeNamespace(i2), lowerCase5).trim().toLowerCase();
                                    } else if ("value".equals(lowerCase5)) {
                                        strTrim = xmlPullParserNewPullParser.getAttributeValue(xmlPullParserNewPullParser.getAttributeNamespace(i2), lowerCase5).trim();
                                    }
                                }
                            }
                            if (lowerCase4 != null && strTrim != null) {
                                parent.getParms().put(lowerCase4, strTrim);
                            }
                        }
                    } else if (eventType == 3) {
                        parent = TAG_CHARACTERISTIC.equals(xmlPullParserNewPullParser.getName().trim().toLowerCase()) ? parent.getParent() : parent;
                    }
                    eventType = xmlPullParserNewPullParser.next();
                    characteristicIA = null;
                }
                try {
                    byteArrayInputStream.close();
                } catch (IOException e) {
                    loge("error to close input stream, skip.");
                }
            } finally {
            }
        } catch (IOException | XmlPullParserException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public String getString(String tag, String defaultVal) {
        String value = this.mCurrent.getParmValue(tag.trim().toLowerCase());
        return value != null ? value : defaultVal;
    }

    public int getInteger(String tag, int defaultVal) {
        try {
            return Integer.parseInt(getString(tag, null));
        } catch (NumberFormatException e) {
            logd("error to getInteger for " + tag + " due to " + e);
            return defaultVal;
        }
    }

    public boolean getBoolean(String tag, boolean defaultVal) {
        String value = getString(tag, null);
        return value != null ? Boolean.parseBoolean(value) : defaultVal;
    }

    public boolean hasConfig(String tag) {
        return this.mCurrent.hasParm(tag.trim().toLowerCase());
    }

    public Characteristic getCharacteristic(String type) {
        return this.mCurrent.getSubByType(type.trim().toLowerCase());
    }

    public boolean hasCharacteristic(String type) {
        return this.mCurrent.getSubByType(type.trim().toLowerCase()) != null;
    }

    public void setCurrentCharacteristic(Characteristic current) {
        if (current != null) {
            this.mCurrent = current;
        }
    }

    public boolean moveToParent() {
        if (this.mCurrent.getParent() == null) {
            return false;
        }
        this.mCurrent = this.mCurrent.getParent();
        return true;
    }

    public void moveToRoot() {
        this.mCurrent = this.mRoot;
    }

    public Characteristic getRoot() {
        return this.mRoot;
    }

    public Characteristic getCurrentCharacteristic() {
        return this.mCurrent;
    }

    public boolean isRcsVolteSingleRegistrationSupported(boolean isRoaming) {
        int val = getInteger(PARM_SINGLE_REGISTRATION, 1);
        if (isRoaming) {
            if (val == 1) {
                return true;
            }
        } else if (val > 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[RCS Config]");
        if (DBG) {
            sb.append("=== Root ===\n");
            sb.append(this.mRoot);
            sb.append("=== Current ===\n");
            sb.append(this.mCurrent);
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RcsConfig)) {
            return false;
        }
        RcsConfig other = (RcsConfig) obj;
        return this.mRoot.equals(other.mRoot) && this.mCurrent.equals(other.mCurrent);
    }

    public int hashCode() {
        return Objects.hash(this.mRoot, this.mCurrent);
    }

    public static byte[] compressGzip(byte[] data) throws IOException {
        if (data == null || data.length == 0) {
            return data;
        }
        byte[] out = null;
        try {
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
            GZIPOutputStream gzipCompressingStream = new GZIPOutputStream(outputStream);
            gzipCompressingStream.write(data);
            gzipCompressingStream.close();
            out = outputStream.toByteArray();
            outputStream.close();
            return out;
        } catch (IOException e) {
            loge("Error to compressGzip due to " + e);
            return out;
        }
    }

    public static byte[] decompressGzip(byte[] data) throws IOException {
        if (data == null || data.length == 0) {
            return data;
        }
        byte[] out = null;
        try {
            ByteArrayInputStream inputStream = new ByteArrayInputStream(data);
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            GZIPInputStream gzipDecompressingStream = new GZIPInputStream(inputStream);
            byte[] buf = new byte[1024];
            for (int size = gzipDecompressingStream.read(buf); size >= 0; size = gzipDecompressingStream.read(buf)) {
                outputStream.write(buf, 0, size);
            }
            gzipDecompressingStream.close();
            inputStream.close();
            out = outputStream.toByteArray();
            outputStream.close();
            return out;
        } catch (IOException e) {
            loge("Error to decompressGzip due to " + e);
            return out;
        }
    }

    public static void updateConfigForSub(Context cxt, int subId, byte[] config, boolean isCompressed) {
        byte[] data = isCompressed ? config : compressGzip(config);
        ContentValues values = new ContentValues();
        values.put(Telephony.SimInfo.COLUMN_RCS_CONFIG, data);
        cxt.getContentResolver().update(Telephony.SimInfo.CONTENT_URI, values, "_id=" + subId, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005b A[PHI: r0
      0x005b: PHI (r0v2 'data' byte[]) = (r0v0 'data' byte[]), (r0v4 'data' byte[]) binds: [B:12:0x0059, B:17:0x0065] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] loadRcsConfigForSub(android.content.Context r7, int r8, boolean r9) {
        /*
            r0 = 0
            android.content.ContentResolver r1 = r7.getContentResolver()
            android.net.Uri r2 = android.provider.Telephony.SimInfo.CONTENT_URI
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "_id="
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.StringBuilder r3 = r3.append(r8)
            java.lang.String r4 = r3.toString()
            r3 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r1 = r1.query(r2, r3, r4, r5, r6)
            if (r1 == 0) goto L65
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            if (r2 == 0) goto L65
            java.lang.String r2 = "rcs_config"
            int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            byte[] r2 = r1.getBlob(r2)     // Catch: java.lang.Throwable -> L36 java.lang.Exception -> L38
            r0 = r2
            goto L65
        L36:
            r2 = move-exception
            goto L5f
        L38:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L36
            r3.<init>()     // Catch: java.lang.Throwable -> L36
            java.lang.String r4 = "error to load rcs config for sub:"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.StringBuilder r3 = r3.append(r8)     // Catch: java.lang.Throwable -> L36
            java.lang.String r4 = " due to "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch: java.lang.Throwable -> L36
            java.lang.StringBuilder r3 = r3.append(r2)     // Catch: java.lang.Throwable -> L36
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L36
            loge(r3)     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L68
        L5b:
            r1.close()
            goto L68
        L5f:
            if (r1 == 0) goto L64
            r1.close()
        L64:
            throw r2
        L65:
            if (r1 == 0) goto L68
            goto L5b
        L68:
            if (r9 == 0) goto L6c
            r2 = r0
            goto L70
        L6c:
            byte[] r2 = decompressGzip(r0)
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.telephony.ims.RcsConfig.loadRcsConfigForSub(android.content.Context, int, boolean):byte[]");
    }

    private static void logd(String msg) {
        Rlog.d(LOG_TAG, msg);
    }

    private static void loge(String msg) {
        Rlog.e(LOG_TAG, msg);
    }
}
