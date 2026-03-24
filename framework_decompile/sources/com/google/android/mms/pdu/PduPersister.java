package com.google.android.mms.pdu;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.drm.DrmManagerClient;
import android.net.Uri;
import android.provider.Telephony;
import android.telephony.PhoneNumberUtils;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.mms.ContentType;
import com.google.android.mms.InvalidHeaderValueException;
import com.google.android.mms.MmsException;
import com.google.android.mms.util.PduCache;
import com.google.android.mms.util.PduCacheEntry;
import com.google.android.mms.util.SqliteWrapper;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class PduPersister {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final HashMap<Integer, Integer> CHARSET_COLUMN_INDEX_MAP;
    private static final HashMap<Integer, String> CHARSET_COLUMN_NAME_MAP;
    private static final boolean DEBUG = false;
    private static final HashMap<Integer, Integer> ENCODED_STRING_COLUMN_INDEX_MAP;
    private static final HashMap<Integer, String> ENCODED_STRING_COLUMN_NAME_MAP;
    private static final boolean LOCAL_LOGV = false;
    private static final HashMap<Integer, Integer> LONG_COLUMN_INDEX_MAP;
    private static final HashMap<Integer, String> LONG_COLUMN_NAME_MAP;
    private static final HashMap<Uri, Integer> MESSAGE_BOX_MAP;
    private static final HashMap<Integer, Integer> OCTET_COLUMN_INDEX_MAP;
    private static final HashMap<Integer, String> OCTET_COLUMN_NAME_MAP;
    private static final int PART_COLUMN_CHARSET = 1;
    private static final int PART_COLUMN_CONTENT_DISPOSITION = 2;
    private static final int PART_COLUMN_CONTENT_ID = 3;
    private static final int PART_COLUMN_CONTENT_LOCATION = 4;
    private static final int PART_COLUMN_CONTENT_TYPE = 5;
    private static final int PART_COLUMN_FILENAME = 6;
    private static final int PART_COLUMN_ID = 0;
    private static final int PART_COLUMN_NAME = 7;
    private static final int PART_COLUMN_TEXT = 8;
    private static final PduCache PDU_CACHE_INSTANCE;
    private static final int PDU_COLUMN_CONTENT_CLASS = 11;
    private static final int PDU_COLUMN_CONTENT_LOCATION = 5;
    private static final int PDU_COLUMN_CONTENT_TYPE = 6;
    private static final int PDU_COLUMN_DATE = 21;
    private static final int PDU_COLUMN_DELIVERY_REPORT = 12;
    private static final int PDU_COLUMN_DELIVERY_TIME = 22;
    private static final int PDU_COLUMN_EXPIRY = 23;
    private static final int PDU_COLUMN_ID = 0;
    private static final int PDU_COLUMN_MESSAGE_BOX = 1;
    private static final int PDU_COLUMN_MESSAGE_CLASS = 7;
    private static final int PDU_COLUMN_MESSAGE_ID = 8;
    private static final int PDU_COLUMN_MESSAGE_SIZE = 24;
    private static final int PDU_COLUMN_MESSAGE_TYPE = 13;
    private static final int PDU_COLUMN_MMS_VERSION = 14;
    private static final int PDU_COLUMN_PRIORITY = 15;
    private static final int PDU_COLUMN_READ_REPORT = 16;
    private static final int PDU_COLUMN_READ_STATUS = 17;
    private static final int PDU_COLUMN_REPORT_ALLOWED = 18;
    private static final int PDU_COLUMN_RESPONSE_TEXT = 9;
    private static final int PDU_COLUMN_RETRIEVE_STATUS = 19;
    private static final int PDU_COLUMN_RETRIEVE_TEXT = 3;
    private static final int PDU_COLUMN_RETRIEVE_TEXT_CHARSET = 26;
    private static final int PDU_COLUMN_STATUS = 20;
    private static final int PDU_COLUMN_SUBJECT = 4;
    private static final int PDU_COLUMN_SUBJECT_CHARSET = 25;
    private static final int PDU_COLUMN_THREAD_ID = 2;
    private static final int PDU_COLUMN_TRANSACTION_ID = 10;
    private static final long PLACEHOLDER_THREAD_ID = Long.MAX_VALUE;
    public static final int PROC_STATUS_COMPLETED = 3;
    public static final int PROC_STATUS_PERMANENTLY_FAILURE = 2;
    public static final int PROC_STATUS_TRANSIENT_FAILURE = 1;
    private static final String TAG = "PduPersister";
    public static final String TEMPORARY_DRM_OBJECT_URI = "content://mms/9223372036854775807/part";
    private static final HashMap<Integer, Integer> TEXT_STRING_COLUMN_INDEX_MAP;
    private static final HashMap<Integer, String> TEXT_STRING_COLUMN_NAME_MAP;
    private static PduPersister sPersister;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private final DrmManagerClient mDrmManagerClient;
    private static final int[] ADDRESS_FIELDS = {129, 130, 137, 151};
    private static final String[] PDU_PROJECTION = {"_id", Telephony.BaseMmsColumns.MESSAGE_BOX, "thread_id", Telephony.BaseMmsColumns.RETRIEVE_TEXT, Telephony.BaseMmsColumns.SUBJECT, Telephony.BaseMmsColumns.CONTENT_LOCATION, Telephony.BaseMmsColumns.CONTENT_TYPE, Telephony.BaseMmsColumns.MESSAGE_CLASS, Telephony.BaseMmsColumns.MESSAGE_ID, Telephony.BaseMmsColumns.RESPONSE_TEXT, Telephony.BaseMmsColumns.TRANSACTION_ID, Telephony.BaseMmsColumns.CONTENT_CLASS, Telephony.BaseMmsColumns.DELIVERY_REPORT, Telephony.BaseMmsColumns.MESSAGE_TYPE, "v", Telephony.BaseMmsColumns.PRIORITY, Telephony.BaseMmsColumns.READ_REPORT, Telephony.BaseMmsColumns.READ_STATUS, Telephony.BaseMmsColumns.REPORT_ALLOWED, Telephony.BaseMmsColumns.RETRIEVE_STATUS, Telephony.BaseMmsColumns.STATUS, "date", Telephony.BaseMmsColumns.DELIVERY_TIME, Telephony.BaseMmsColumns.EXPIRY, Telephony.BaseMmsColumns.MESSAGE_SIZE, Telephony.BaseMmsColumns.SUBJECT_CHARSET, Telephony.BaseMmsColumns.RETRIEVE_TEXT_CHARSET};
    private static final String[] PART_PROJECTION = {"_id", Telephony.Mms.Part.CHARSET, Telephony.Mms.Part.CONTENT_DISPOSITION, "cid", Telephony.Mms.Part.CONTENT_LOCATION, "ct", Telephony.Mms.Part.FILENAME, "name", "text"};

    static {
        HashMap<Uri, Integer> map = new HashMap<>();
        MESSAGE_BOX_MAP = map;
        map.put(Telephony.Mms.Inbox.CONTENT_URI, 1);
        map.put(Telephony.Mms.Sent.CONTENT_URI, 2);
        map.put(Telephony.Mms.Draft.CONTENT_URI, 3);
        map.put(Telephony.Mms.Outbox.CONTENT_URI, 4);
        HashMap<Integer, Integer> map2 = new HashMap<>();
        CHARSET_COLUMN_INDEX_MAP = map2;
        map2.put(150, 25);
        map2.put(154, 26);
        HashMap<Integer, String> map3 = new HashMap<>();
        CHARSET_COLUMN_NAME_MAP = map3;
        map3.put(150, Telephony.BaseMmsColumns.SUBJECT_CHARSET);
        map3.put(154, Telephony.BaseMmsColumns.RETRIEVE_TEXT_CHARSET);
        HashMap<Integer, Integer> map4 = new HashMap<>();
        ENCODED_STRING_COLUMN_INDEX_MAP = map4;
        map4.put(154, 3);
        map4.put(150, 4);
        HashMap<Integer, String> map5 = new HashMap<>();
        ENCODED_STRING_COLUMN_NAME_MAP = map5;
        map5.put(154, Telephony.BaseMmsColumns.RETRIEVE_TEXT);
        map5.put(150, Telephony.BaseMmsColumns.SUBJECT);
        HashMap<Integer, Integer> map6 = new HashMap<>();
        TEXT_STRING_COLUMN_INDEX_MAP = map6;
        map6.put(131, 5);
        map6.put(132, 6);
        map6.put(138, 7);
        map6.put(139, 8);
        map6.put(147, 9);
        map6.put(152, 10);
        HashMap<Integer, String> map7 = new HashMap<>();
        TEXT_STRING_COLUMN_NAME_MAP = map7;
        map7.put(131, Telephony.BaseMmsColumns.CONTENT_LOCATION);
        map7.put(132, Telephony.BaseMmsColumns.CONTENT_TYPE);
        map7.put(138, Telephony.BaseMmsColumns.MESSAGE_CLASS);
        map7.put(139, Telephony.BaseMmsColumns.MESSAGE_ID);
        map7.put(147, Telephony.BaseMmsColumns.RESPONSE_TEXT);
        map7.put(152, Telephony.BaseMmsColumns.TRANSACTION_ID);
        HashMap<Integer, Integer> map8 = new HashMap<>();
        OCTET_COLUMN_INDEX_MAP = map8;
        map8.put(186, 11);
        map8.put(134, 12);
        map8.put(140, 13);
        map8.put(141, 14);
        map8.put(143, 15);
        map8.put(144, 16);
        map8.put(155, 17);
        map8.put(145, 18);
        map8.put(153, 19);
        map8.put(149, 20);
        HashMap<Integer, String> map9 = new HashMap<>();
        OCTET_COLUMN_NAME_MAP = map9;
        map9.put(186, Telephony.BaseMmsColumns.CONTENT_CLASS);
        map9.put(134, Telephony.BaseMmsColumns.DELIVERY_REPORT);
        map9.put(140, Telephony.BaseMmsColumns.MESSAGE_TYPE);
        map9.put(141, "v");
        map9.put(143, Telephony.BaseMmsColumns.PRIORITY);
        map9.put(144, Telephony.BaseMmsColumns.READ_REPORT);
        map9.put(155, Telephony.BaseMmsColumns.READ_STATUS);
        map9.put(145, Telephony.BaseMmsColumns.REPORT_ALLOWED);
        map9.put(153, Telephony.BaseMmsColumns.RETRIEVE_STATUS);
        map9.put(149, Telephony.BaseMmsColumns.STATUS);
        HashMap<Integer, Integer> map10 = new HashMap<>();
        LONG_COLUMN_INDEX_MAP = map10;
        map10.put(133, 21);
        map10.put(135, 22);
        map10.put(136, 23);
        map10.put(142, 24);
        HashMap<Integer, String> map11 = new HashMap<>();
        LONG_COLUMN_NAME_MAP = map11;
        map11.put(133, "date");
        map11.put(135, Telephony.BaseMmsColumns.DELIVERY_TIME);
        map11.put(136, Telephony.BaseMmsColumns.EXPIRY);
        map11.put(142, Telephony.BaseMmsColumns.MESSAGE_SIZE);
        PDU_CACHE_INSTANCE = PduCache.getInstance();
    }

    private PduPersister(Context context) {
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        this.mDrmManagerClient = new DrmManagerClient(context);
    }

    public static PduPersister getPduPersister(Context context) {
        PduPersister pduPersister = sPersister;
        if (pduPersister == null) {
            sPersister = new PduPersister(context);
        } else if (!context.equals(pduPersister.mContext)) {
            sPersister.release();
            sPersister = new PduPersister(context);
        }
        return sPersister;
    }

    private void setEncodedStringValueToHeaders(Cursor c, int columnIndex, PduHeaders headers, int mapColumn) {
        String s = c.getString(columnIndex);
        if (s != null && s.length() > 0) {
            int charsetColumnIndex = CHARSET_COLUMN_INDEX_MAP.get(Integer.valueOf(mapColumn)).intValue();
            int charset = c.getInt(charsetColumnIndex);
            EncodedStringValue value = new EncodedStringValue(charset, getBytes(s));
            headers.setEncodedStringValue(value, mapColumn);
        }
    }

    private void setTextStringToHeaders(Cursor c, int columnIndex, PduHeaders headers, int mapColumn) {
        String s = c.getString(columnIndex);
        if (s != null) {
            headers.setTextString(getBytes(s), mapColumn);
        }
    }

    private void setOctetToHeaders(Cursor c, int columnIndex, PduHeaders headers, int mapColumn) throws InvalidHeaderValueException {
        if (!c.isNull(columnIndex)) {
            int b = c.getInt(columnIndex);
            headers.setOctet(b, mapColumn);
        }
    }

    private void setLongToHeaders(Cursor c, int columnIndex, PduHeaders headers, int mapColumn) {
        if (!c.isNull(columnIndex)) {
            long l = c.getLong(columnIndex);
            headers.setLongInteger(l, mapColumn);
        }
    }

    private Integer getIntegerFromPartColumn(Cursor c, int columnIndex) {
        if (!c.isNull(columnIndex)) {
            return Integer.valueOf(c.getInt(columnIndex));
        }
        return null;
    }

    private byte[] getByteArrayFromPartColumn(Cursor c, int columnIndex) {
        if (!c.isNull(columnIndex)) {
            return getBytes(c.getString(columnIndex));
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x01a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:? A[Catch: all -> 0x020d, SYNTHETIC, TryCatch #8 {all -> 0x020d, blocks: (B:4:0x0035, B:7:0x003d, B:8:0x0047, B:10:0x004d, B:12:0x005b, B:13:0x0062, B:15:0x006a, B:16:0x006d, B:18:0x0075, B:19:0x0078, B:21:0x0080, B:22:0x0083, B:24:0x008b, B:26:0x009b, B:27:0x009e, B:29:0x00ab, B:30:0x00ae, B:32:0x00e8, B:34:0x00ee, B:36:0x00f4, B:38:0x010a, B:40:0x0112, B:84:0x01b5, B:88:0x01c3, B:89:0x01d0, B:93:0x01ec, B:76:0x01a3, B:82:0x01ae, B:80:0x01aa, B:57:0x015d, B:61:0x0164, B:94:0x01f7, B:95:0x0204), top: B:112:0x0035, inners: #2, #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.mms.pdu.PduPart[] loadParts(long r28) throws com.google.android.mms.MmsException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 539
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.mms.pdu.PduPersister.loadParts(long):com.google.android.mms.pdu.PduPart[]");
    }

    private void loadAddress(long msgId, PduHeaders headers) {
        Cursor c = SqliteWrapper.query(this.mContext, this.mContentResolver, Uri.parse("content://mms/" + msgId + "/addr"), new String[]{"address", Telephony.Mms.Addr.CHARSET, "type"}, null, null, null);
        if (c != null) {
            while (c.moveToNext()) {
                try {
                    String addr = c.getString(0);
                    if (!TextUtils.isEmpty(addr)) {
                        int addrType = c.getInt(2);
                        switch (addrType) {
                            case 129:
                            case 130:
                            case 151:
                                headers.appendEncodedStringValue(new EncodedStringValue(c.getInt(1), getBytes(addr)), addrType);
                                break;
                            case 137:
                                headers.setEncodedStringValue(new EncodedStringValue(c.getInt(1), getBytes(addr)), addrType);
                                break;
                            default:
                                Log.e(TAG, "Unknown address type: " + addrType);
                                break;
                        }
                    }
                } finally {
                    c.close();
                }
            }
        }
    }

    public GenericPdu load(Uri uri) throws Throwable {
        PduCacheEntry cacheEntry;
        GenericPdu pdu;
        try {
            PduCache pduCache = PDU_CACHE_INSTANCE;
            synchronized (pduCache) {
                try {
                    if (pduCache.isUpdating(uri)) {
                        try {
                            pduCache.wait();
                        } catch (InterruptedException e) {
                            Log.e(TAG, "load: ", e);
                        }
                        PduCache pduCache2 = PDU_CACHE_INSTANCE;
                        PduCacheEntry cacheEntry2 = pduCache2.get(uri);
                        if (cacheEntry2 != null) {
                            GenericPdu pdu2 = cacheEntry2.getPdu();
                            synchronized (pduCache2) {
                                if (0 != 0) {
                                    pduCache2.put(uri, new PduCacheEntry(null, 0, -1L));
                                    pduCache2.setUpdating(uri, false);
                                    pduCache2.notifyAll();
                                } else {
                                    pduCache2.setUpdating(uri, false);
                                    pduCache2.notifyAll();
                                }
                            }
                            return pdu2;
                        }
                        cacheEntry = cacheEntry2;
                    } else {
                        cacheEntry = null;
                    }
                    try {
                        PDU_CACHE_INSTANCE.setUpdating(uri, true);
                        try {
                            Cursor c = SqliteWrapper.query(this.mContext, this.mContentResolver, uri, PDU_PROJECTION, null, null, null);
                            PduHeaders headers = new PduHeaders();
                            long msgId = ContentUris.parseId(uri);
                            if (c != null) {
                                try {
                                    if (c.getCount() == 1 && c.moveToFirst()) {
                                        int msgBox = c.getInt(1);
                                        long threadId = c.getLong(2);
                                        Set<Map.Entry<Integer, Integer>> set = ENCODED_STRING_COLUMN_INDEX_MAP.entrySet();
                                        for (Map.Entry<Integer, Integer> e2 : set) {
                                            setEncodedStringValueToHeaders(c, e2.getValue().intValue(), headers, e2.getKey().intValue());
                                        }
                                        Set<Map.Entry<Integer, Integer>> set2 = TEXT_STRING_COLUMN_INDEX_MAP.entrySet();
                                        for (Map.Entry<Integer, Integer> e3 : set2) {
                                            setTextStringToHeaders(c, e3.getValue().intValue(), headers, e3.getKey().intValue());
                                        }
                                        Set<Map.Entry<Integer, Integer>> set3 = OCTET_COLUMN_INDEX_MAP.entrySet();
                                        for (Map.Entry<Integer, Integer> e4 : set3) {
                                            setOctetToHeaders(c, e4.getValue().intValue(), headers, e4.getKey().intValue());
                                        }
                                        Set<Map.Entry<Integer, Integer>> set4 = LONG_COLUMN_INDEX_MAP.entrySet();
                                        for (Map.Entry<Integer, Integer> e5 : set4) {
                                            setLongToHeaders(c, e5.getValue().intValue(), headers, e5.getKey().intValue());
                                        }
                                        if (msgId == -1) {
                                            throw new MmsException("Error! ID of the message: -1.");
                                        }
                                        loadAddress(msgId, headers);
                                        int msgType = headers.getOctet(140);
                                        PduBody body = new PduBody();
                                        if (msgType == 132 || msgType == 128) {
                                            PduPart[] parts = loadParts(msgId);
                                            if (parts != null) {
                                                for (PduPart pduPart : parts) {
                                                    body.addPart(pduPart);
                                                }
                                            }
                                        }
                                        switch (msgType) {
                                            case 128:
                                                GenericPdu pdu3 = new SendReq(headers, body);
                                                pdu = pdu3;
                                                break;
                                            case 129:
                                            case 137:
                                            case 138:
                                            case 139:
                                            case 140:
                                            case 141:
                                            case 142:
                                            case 143:
                                            case 144:
                                            case 145:
                                            case 146:
                                            case 147:
                                            case 148:
                                            case 149:
                                            case 150:
                                            case 151:
                                                throw new MmsException("Unsupported PDU type: " + Integer.toHexString(msgType));
                                            case 130:
                                                GenericPdu pdu4 = new NotificationInd(headers);
                                                pdu = pdu4;
                                                break;
                                            case 131:
                                                GenericPdu pdu5 = new NotifyRespInd(headers);
                                                pdu = pdu5;
                                                break;
                                            case 132:
                                                GenericPdu pdu6 = new RetrieveConf(headers, body);
                                                pdu = pdu6;
                                                break;
                                            case 133:
                                                GenericPdu pdu7 = new AcknowledgeInd(headers);
                                                pdu = pdu7;
                                                break;
                                            case 134:
                                                GenericPdu pdu8 = new DeliveryInd(headers);
                                                pdu = pdu8;
                                                break;
                                            case 135:
                                                GenericPdu pdu9 = new ReadRecInd(headers);
                                                pdu = pdu9;
                                                break;
                                            case 136:
                                                GenericPdu pdu10 = new ReadOrigInd(headers);
                                                pdu = pdu10;
                                                break;
                                            default:
                                                throw new MmsException("Unrecognized PDU type: " + Integer.toHexString(msgType));
                                        }
                                        PduCache pduCache3 = PDU_CACHE_INSTANCE;
                                        synchronized (pduCache3) {
                                            pduCache3.put(uri, new PduCacheEntry(pdu, msgBox, threadId));
                                            pduCache3.setUpdating(uri, false);
                                            pduCache3.notifyAll();
                                        }
                                        return pdu;
                                    }
                                } finally {
                                    if (c != null) {
                                        c.close();
                                    }
                                }
                            }
                            throw new MmsException("Bad uri: " + uri);
                        } catch (Throwable th) {
                            th = th;
                            PduCache pduCache4 = PDU_CACHE_INSTANCE;
                            synchronized (pduCache4) {
                                if (0 != 0) {
                                    pduCache4.put(uri, new PduCacheEntry(null, 0, -1L));
                                    pduCache4.setUpdating(uri, false);
                                    pduCache4.notifyAll();
                                } else {
                                    pduCache4.setUpdating(uri, false);
                                    pduCache4.notifyAll();
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    private void persistAddress(long msgId, int type, EncodedStringValue[] array) {
        ContentValues values = new ContentValues(3);
        for (EncodedStringValue addr : array) {
            values.clear();
            values.put("address", toIsoString(addr.getTextString()));
            values.put(Telephony.Mms.Addr.CHARSET, Integer.valueOf(addr.getCharacterSet()));
            values.put("type", Integer.valueOf(type));
            Uri uri = Uri.parse("content://mms/" + msgId + "/addr");
            SqliteWrapper.insert(this.mContext, this.mContentResolver, uri, values);
        }
    }

    private static String getPartContentType(PduPart part) {
        if (part.getContentType() == null) {
            return null;
        }
        return toIsoString(part.getContentType());
    }

    public Uri persistPart(PduPart part, long msgId, HashMap<Uri, InputStream> preOpenedFiles) throws MmsException, IOException {
        Uri uri = Uri.parse("content://mms/" + msgId + "/part");
        ContentValues values = new ContentValues(8);
        int charset = part.getCharset();
        if (charset != 0) {
            values.put(Telephony.Mms.Part.CHARSET, Integer.valueOf(charset));
        }
        String contentType = getPartContentType(part);
        if (contentType != null) {
            if (ContentType.IMAGE_JPG.equals(contentType)) {
                contentType = ContentType.IMAGE_JPEG;
            }
            values.put("ct", contentType);
            if (ContentType.APP_SMIL.equals(contentType)) {
                values.put("seq", (Integer) (-1));
            }
            if (part.getFilename() != null) {
                String fileName = new String(part.getFilename());
                values.put(Telephony.Mms.Part.FILENAME, fileName);
            }
            if (part.getName() != null) {
                String name = new String(part.getName());
                values.put("name", name);
            }
            if (part.getContentDisposition() != null) {
                Object value = toIsoString(part.getContentDisposition());
                values.put(Telephony.Mms.Part.CONTENT_DISPOSITION, (String) value);
            }
            if (part.getContentId() != null) {
                Object value2 = toIsoString(part.getContentId());
                values.put("cid", (String) value2);
            }
            if (part.getContentLocation() != null) {
                Object value3 = toIsoString(part.getContentLocation());
                values.put(Telephony.Mms.Part.CONTENT_LOCATION, (String) value3);
            }
            Uri res = SqliteWrapper.insert(this.mContext, this.mContentResolver, uri, values);
            if (res == null) {
                throw new MmsException("Failed to persist part, return null.");
            }
            persistData(part, res, contentType, preOpenedFiles);
            part.setDataUri(res);
            return res;
        }
        throw new MmsException("MIME type of the part must be set.");
    }

    /*  JADX ERROR: Types fix failed
        java.lang.NullPointerException
        */
    /* JADX WARN: Failed to apply debug info
    java.lang.NullPointerException
     */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x036d: MOVE (r11 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('dataUri' android.net.Uri)]), block:B:171:0x036c */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0373: MOVE (r11 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('dataUri' android.net.Uri)]), block:B:173:0x0373 */
    /* JADX WARN: Not initialized variable reg: 16, insn: 0x0379: MOVE (r11 I:??[OBJECT, ARRAY]) = (r16 I:??[OBJECT, ARRAY] A[D('dataUri' android.net.Uri)]), block:B:175:0x0379 */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x036f: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('os' java.io.OutputStream)]), block:B:171:0x036c */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x0375: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('os' java.io.OutputStream)]), block:B:173:0x0373 */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x037b: MOVE (r8 I:??[OBJECT, ARRAY]) = (r17 I:??[OBJECT, ARRAY] A[D('os' java.io.OutputStream)]), block:B:175:0x0379 */
    private void persistData(com.google.android.mms.pdu.PduPart r24, android.net.Uri r25, java.lang.String r26, java.util.HashMap<android.net.Uri, java.io.InputStream> r27) throws com.google.android.mms.MmsException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 1052
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.mms.pdu.PduPersister.persistData(com.google.android.mms.pdu.PduPart, android.net.Uri, java.lang.String, java.util.HashMap):void");
    }

    private void updateAddress(long msgId, int type, EncodedStringValue[] array) {
        SqliteWrapper.delete(this.mContext, this.mContentResolver, Uri.parse("content://mms/" + msgId + "/addr"), "type=" + type, null);
        persistAddress(msgId, type, array);
    }

    public void updateHeaders(Uri uri, SendReq sendReq) {
        int i;
        int i2;
        EncodedStringValue[] array;
        PduHeaders headers;
        EncodedStringValue[] array2;
        PduCache pduCache = PDU_CACHE_INSTANCE;
        synchronized (pduCache) {
            if (pduCache.isUpdating(uri)) {
                try {
                    pduCache.wait();
                } catch (InterruptedException e) {
                    Log.e(TAG, "updateHeaders: ", e);
                }
            }
        }
        PDU_CACHE_INSTANCE.purge(uri);
        ContentValues values = new ContentValues(10);
        byte[] contentType = sendReq.getContentType();
        if (contentType != null) {
            values.put(Telephony.BaseMmsColumns.CONTENT_TYPE, toIsoString(contentType));
        }
        long date = sendReq.getDate();
        if (date != -1) {
            values.put("date", Long.valueOf(date));
        }
        int deliveryReport = sendReq.getDeliveryReport();
        if (deliveryReport != 0) {
            values.put(Telephony.BaseMmsColumns.DELIVERY_REPORT, Integer.valueOf(deliveryReport));
        }
        long expiry = sendReq.getExpiry();
        if (expiry != -1) {
            values.put(Telephony.BaseMmsColumns.EXPIRY, Long.valueOf(expiry));
        }
        byte[] msgClass = sendReq.getMessageClass();
        if (msgClass != null) {
            values.put(Telephony.BaseMmsColumns.MESSAGE_CLASS, toIsoString(msgClass));
        }
        int priority = sendReq.getPriority();
        if (priority != 0) {
            values.put(Telephony.BaseMmsColumns.PRIORITY, Integer.valueOf(priority));
        }
        int readReport = sendReq.getReadReport();
        if (readReport != 0) {
            values.put(Telephony.BaseMmsColumns.READ_REPORT, Integer.valueOf(readReport));
        }
        byte[] transId = sendReq.getTransactionId();
        if (transId != null) {
            values.put(Telephony.BaseMmsColumns.TRANSACTION_ID, toIsoString(transId));
        }
        EncodedStringValue subject = sendReq.getSubject();
        if (subject != null) {
            values.put(Telephony.BaseMmsColumns.SUBJECT, toIsoString(subject.getTextString()));
            values.put(Telephony.BaseMmsColumns.SUBJECT_CHARSET, Integer.valueOf(subject.getCharacterSet()));
        } else {
            values.put(Telephony.BaseMmsColumns.SUBJECT, "");
        }
        long messageSize = sendReq.getMessageSize();
        if (messageSize > 0) {
            values.put(Telephony.BaseMmsColumns.MESSAGE_SIZE, Long.valueOf(messageSize));
        }
        PduHeaders headers2 = sendReq.getPduHeaders();
        HashSet<String> recipients = new HashSet<>();
        int[] iArr = ADDRESS_FIELDS;
        int length = iArr.length;
        int i3 = 0;
        while (i3 < length) {
            int addrType = iArr[i3];
            EncodedStringValue[] array3 = null;
            int[] iArr2 = iArr;
            if (addrType == 137) {
                EncodedStringValue v = headers2.getEncodedStringValue(addrType);
                if (v == null) {
                    i = length;
                    i2 = 0;
                } else {
                    i = length;
                    i2 = 0;
                    EncodedStringValue[] array4 = {v};
                    array3 = array4;
                }
                array = array3;
            } else {
                i = length;
                i2 = 0;
                EncodedStringValue[] array5 = headers2.getEncodedStringValues(addrType);
                array = array5;
            }
            if (array != null) {
                headers = headers2;
                long msgId = ContentUris.parseId(uri);
                updateAddress(msgId, addrType, array);
                if (addrType == 151) {
                    int length2 = array.length;
                    int addrType2 = i2;
                    while (addrType2 < length2) {
                        EncodedStringValue v2 = array[addrType2];
                        if (v2 == null) {
                            array2 = array;
                        } else {
                            array2 = array;
                            recipients.add(v2.getString());
                        }
                        addrType2++;
                        array = array2;
                    }
                }
            } else {
                headers = headers2;
            }
            i3++;
            headers2 = headers;
            iArr = iArr2;
            length = i;
        }
        if (!recipients.isEmpty()) {
            long threadId = Telephony.Threads.getOrCreateThreadId(this.mContext, recipients);
            values.put("thread_id", Long.valueOf(threadId));
        }
        SqliteWrapper.update(this.mContext, this.mContentResolver, uri, values, null, null);
    }

    private void updatePart(Uri uri, PduPart part, HashMap<Uri, InputStream> preOpenedFiles) throws MmsException, IOException {
        ContentValues values = new ContentValues(7);
        int charset = part.getCharset();
        if (charset != 0) {
            values.put(Telephony.Mms.Part.CHARSET, Integer.valueOf(charset));
        }
        if (part.getContentType() != null) {
            String contentType = toIsoString(part.getContentType());
            values.put("ct", contentType);
            if (part.getFilename() != null) {
                String fileName = new String(part.getFilename());
                values.put(Telephony.Mms.Part.FILENAME, fileName);
            }
            if (part.getName() != null) {
                String name = new String(part.getName());
                values.put("name", name);
            }
            Object value = null;
            if (part.getContentDisposition() != null) {
                value = toIsoString(part.getContentDisposition());
                values.put(Telephony.Mms.Part.CONTENT_DISPOSITION, (String) value);
            }
            if (part.getContentId() != null) {
                value = toIsoString(part.getContentId());
                values.put("cid", (String) value);
            }
            if (part.getContentLocation() != null) {
                Object value2 = toIsoString(part.getContentLocation());
                values.put(Telephony.Mms.Part.CONTENT_LOCATION, (String) value2);
            }
            SqliteWrapper.update(this.mContext, this.mContentResolver, uri, values, null, null);
            if (part.getData() != null || !uri.equals(part.getDataUri())) {
                persistData(part, uri, contentType, preOpenedFiles);
                return;
            }
            return;
        }
        throw new MmsException("MIME type of the part must be set.");
    }

    public void updateParts(Uri uri, PduBody body, HashMap<Uri, InputStream> preOpenedFiles) throws MmsException {
        try {
            PduCache pduCache = PDU_CACHE_INSTANCE;
            synchronized (pduCache) {
                if (pduCache.isUpdating(uri)) {
                    try {
                        pduCache.wait();
                    } catch (InterruptedException e) {
                        Log.e(TAG, "updateParts: ", e);
                    }
                    PduCacheEntry cacheEntry = PDU_CACHE_INSTANCE.get(uri);
                    if (cacheEntry != null) {
                        ((MultimediaMessagePdu) cacheEntry.getPdu()).setBody(body);
                    }
                    PDU_CACHE_INSTANCE.setUpdating(uri, true);
                } else {
                    PDU_CACHE_INSTANCE.setUpdating(uri, true);
                }
            }
            ArrayList<PduPart> toBeCreated = new ArrayList<>();
            HashMap<Uri, PduPart> toBeUpdated = new HashMap<>();
            int partsNum = body.getPartsNum();
            StringBuilder filter = new StringBuilder().append('(');
            for (int i = 0; i < partsNum; i++) {
                PduPart part = body.getPart(i);
                Uri partUri = part.getDataUri();
                if (partUri == null || TextUtils.isEmpty(partUri.getAuthority()) || !partUri.getAuthority().startsWith("mms")) {
                    toBeCreated.add(part);
                } else {
                    toBeUpdated.put(partUri, part);
                    if (filter.length() > 1) {
                        filter.append(" AND ");
                    }
                    filter.append("_id");
                    filter.append("!=");
                    DatabaseUtils.appendEscapedSQLString(filter, partUri.getLastPathSegment());
                }
            }
            filter.append(')');
            long msgId = ContentUris.parseId(uri);
            SqliteWrapper.delete(this.mContext, this.mContentResolver, Uri.parse(Telephony.Mms.CONTENT_URI + "/" + msgId + "/part"), filter.length() > 2 ? filter.toString() : null, null);
            Iterator<PduPart> it = toBeCreated.iterator();
            while (it.hasNext()) {
                persistPart(it.next(), msgId, preOpenedFiles);
            }
            for (Map.Entry<Uri, PduPart> e2 : toBeUpdated.entrySet()) {
                updatePart(e2.getKey(), e2.getValue(), preOpenedFiles);
            }
            PduCache pduCache2 = PDU_CACHE_INSTANCE;
            synchronized (pduCache2) {
                pduCache2.setUpdating(uri, false);
                pduCache2.notifyAll();
            }
        } catch (Throwable th) {
            PduCache pduCache3 = PDU_CACHE_INSTANCE;
            synchronized (pduCache3) {
                pduCache3.setUpdating(uri, false);
                pduCache3.notifyAll();
                throw th;
            }
        }
    }

    public Uri persist(GenericPdu pdu, Uri uri, boolean createThreadId, boolean groupMmsEnabled, HashMap<Uri, InputStream> preOpenedFiles) throws Throwable {
        long msgId;
        int messageSize;
        int i;
        int i2;
        long placeholderId;
        Uri uri2;
        Uri res;
        long msgId2;
        PduBody body;
        int i3;
        int[] iArr;
        if (uri == null) {
            throw new MmsException("Uri may not be null.");
        }
        try {
            long msgId3 = ContentUris.parseId(uri);
            msgId = msgId3;
        } catch (NumberFormatException e) {
            msgId = -1;
        }
        boolean existingUri = msgId != -1;
        if (!existingUri && MESSAGE_BOX_MAP.get(uri) == null) {
            throw new MmsException("Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp.");
        }
        PduCache pduCache = PDU_CACHE_INSTANCE;
        synchronized (pduCache) {
            try {
                if (pduCache.isUpdating(uri)) {
                    try {
                        try {
                            pduCache.wait();
                        } catch (InterruptedException e2) {
                            Log.e(TAG, "persist1: ", e2);
                        }
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                }
                PDU_CACHE_INSTANCE.purge(uri);
                PduHeaders header = pdu.getPduHeaders();
                ContentValues values = new ContentValues();
                Set<Map.Entry<Integer, String>> set = ENCODED_STRING_COLUMN_NAME_MAP.entrySet();
                for (Map.Entry<Integer, String> e3 : set) {
                    int field = e3.getKey().intValue();
                    EncodedStringValue encodedString = header.getEncodedStringValue(field);
                    if (encodedString != null) {
                        String charsetColumn = CHARSET_COLUMN_NAME_MAP.get(Integer.valueOf(field));
                        values.put(e3.getValue(), toIsoString(encodedString.getTextString()));
                        values.put(charsetColumn, Integer.valueOf(encodedString.getCharacterSet()));
                    }
                }
                Set<Map.Entry<Integer, String>> set2 = TEXT_STRING_COLUMN_NAME_MAP.entrySet();
                for (Map.Entry<Integer, String> e4 : set2) {
                    byte[] text = header.getTextString(e4.getKey().intValue());
                    if (text != null) {
                        values.put(e4.getValue(), toIsoString(text));
                    }
                }
                Set<Map.Entry<Integer, String>> set3 = OCTET_COLUMN_NAME_MAP.entrySet();
                for (Map.Entry<Integer, String> e5 : set3) {
                    int b = header.getOctet(e5.getKey().intValue());
                    if (b != 0) {
                        values.put(e5.getValue(), Integer.valueOf(b));
                    }
                }
                Set<Map.Entry<Integer, String>> set4 = LONG_COLUMN_NAME_MAP.entrySet();
                for (Map.Entry<Integer, String> e6 : set4) {
                    long l = header.getLongInteger(e6.getKey().intValue());
                    if (l != -1) {
                        values.put(e6.getValue(), Long.valueOf(l));
                    }
                }
                int[] iArr2 = ADDRESS_FIELDS;
                HashMap<Integer, EncodedStringValue[]> addressMap = new HashMap<>(iArr2.length);
                int length = iArr2.length;
                int i4 = 0;
                while (i4 < length) {
                    int addrType = iArr2[i4];
                    EncodedStringValue[] array = null;
                    if (addrType == 137) {
                        EncodedStringValue v = header.getEncodedStringValue(addrType);
                        if (v == null) {
                            i3 = length;
                            iArr = iArr2;
                        } else {
                            i3 = length;
                            iArr = iArr2;
                            array = new EncodedStringValue[]{v};
                        }
                    } else {
                        i3 = length;
                        iArr = iArr2;
                        array = header.getEncodedStringValues(addrType);
                    }
                    addressMap.put(Integer.valueOf(addrType), array);
                    i4++;
                    length = i3;
                    iArr2 = iArr;
                }
                HashSet<String> recipients = new HashSet<>();
                int msgType = pdu.getMessageType();
                if (msgType == 130 || msgType == 132 || msgType == 128) {
                    switch (msgType) {
                        case 128:
                            loadRecipients(151, recipients, addressMap, false);
                            break;
                        case 130:
                        case 132:
                            loadRecipients(137, recipients, addressMap, false);
                            if (groupMmsEnabled) {
                                loadRecipients(151, recipients, addressMap, true);
                                loadRecipients(130, recipients, addressMap, true);
                                break;
                            }
                            break;
                    }
                    long threadId = 0;
                    if (createThreadId && !recipients.isEmpty()) {
                        threadId = Telephony.Threads.getOrCreateThreadId(this.mContext, recipients);
                    }
                    values.put("thread_id", Long.valueOf(threadId));
                }
                long placeholderId2 = System.currentTimeMillis();
                int i5 = 1;
                int messageSize2 = 0;
                if (!(pdu instanceof MultimediaMessagePdu) || (body = ((MultimediaMessagePdu) pdu).getBody()) == null) {
                    messageSize = 0;
                    i = 1;
                } else {
                    int partsNum = body.getPartsNum();
                    if (partsNum > 2) {
                        i5 = 0;
                    }
                    int i6 = 0;
                    while (i6 < partsNum) {
                        PduPart part = body.getPart(i6);
                        int messageSize3 = messageSize2 + part.getDataLength();
                        persistPart(part, placeholderId2, preOpenedFiles);
                        int partsNum2 = partsNum;
                        String contentType = getPartContentType(part);
                        if (contentType != null && !ContentType.APP_SMIL.equals(contentType) && !"text/plain".equals(contentType)) {
                            i5 = 0;
                        }
                        i6++;
                        messageSize2 = messageSize3;
                        partsNum = partsNum2;
                    }
                    messageSize = messageSize2;
                    i = i5;
                }
                values.put(Telephony.BaseMmsColumns.TEXT_ONLY, Integer.valueOf(i));
                if (values.getAsInteger(Telephony.BaseMmsColumns.MESSAGE_SIZE) == null) {
                    values.put(Telephony.BaseMmsColumns.MESSAGE_SIZE, Integer.valueOf(messageSize));
                }
                if (!existingUri) {
                    i2 = 0;
                    placeholderId = placeholderId2;
                    uri2 = uri;
                    res = SqliteWrapper.insert(this.mContext, this.mContentResolver, uri2, values);
                    if (res == null) {
                        throw new MmsException("persist() failed: return null.");
                    }
                    msgId2 = ContentUris.parseId(res);
                } else {
                    i2 = 0;
                    placeholderId = placeholderId2;
                    SqliteWrapper.update(this.mContext, this.mContentResolver, uri, values, null, null);
                    uri2 = uri;
                    res = uri;
                    msgId2 = msgId;
                }
                ContentValues values2 = new ContentValues(1);
                values2.put(Telephony.Mms.Part.MSG_ID, Long.valueOf(msgId2));
                SqliteWrapper.update(this.mContext, this.mContentResolver, Uri.parse("content://mms/" + placeholderId + "/part"), values2, null, null);
                if (!existingUri) {
                    res = Uri.parse(uri2 + "/" + msgId2);
                }
                int[] iArr3 = ADDRESS_FIELDS;
                int length2 = iArr3.length;
                int i7 = i2;
                while (i7 < length2) {
                    int addrType2 = iArr3[i7];
                    int[] iArr4 = iArr3;
                    EncodedStringValue[] array2 = addressMap.get(Integer.valueOf(addrType2));
                    if (array2 != null) {
                        persistAddress(msgId2, addrType2, array2);
                    }
                    i7++;
                    iArr3 = iArr4;
                }
                return res;
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    private void loadRecipients(int addressType, HashSet<String> recipients, HashMap<Integer, EncodedStringValue[]> addressMap, boolean excludeMyNumber) {
        EncodedStringValue[] array = addressMap.get(Integer.valueOf(addressType));
        if (array == null) {
            return;
        }
        if (excludeMyNumber && array.length == 1) {
            return;
        }
        SubscriptionManager subscriptionManager = SubscriptionManager.from(this.mContext);
        Set<String> myPhoneNumbers = new HashSet<>();
        if (excludeMyNumber) {
            for (SubscriptionInfo subInfo : subscriptionManager.getActiveSubscriptionInfoList()) {
                String myNumber = ((TelephonyManager) this.mContext.getSystemService(TelephonyManager.class)).createForSubscriptionId(subInfo.getSubscriptionId()).getLine1Number();
                if (myNumber != null) {
                    myPhoneNumbers.add(myNumber);
                }
            }
        }
        for (EncodedStringValue v : array) {
            if (v != null) {
                String number = v.getString();
                if (excludeMyNumber) {
                    Iterator<String> it = myPhoneNumbers.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (!PhoneNumberUtils.compare(number, it.next()) && !recipients.contains(number)) {
                            recipients.add(number);
                            break;
                        }
                    }
                } else if (!recipients.contains(number)) {
                    recipients.add(number);
                }
            }
        }
    }

    public Uri move(Uri from, Uri to) throws MmsException {
        long msgId = ContentUris.parseId(from);
        if (msgId == -1) {
            throw new MmsException("Error! ID of the message: -1.");
        }
        Integer msgBox = MESSAGE_BOX_MAP.get(to);
        if (msgBox == null) {
            throw new MmsException("Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp.");
        }
        ContentValues values = new ContentValues(1);
        values.put(Telephony.BaseMmsColumns.MESSAGE_BOX, msgBox);
        SqliteWrapper.update(this.mContext, this.mContentResolver, from, values, null, null);
        return ContentUris.withAppendedId(to, msgId);
    }

    public static String toIsoString(byte[] bytes) {
        try {
            return new String(bytes, CharacterSets.MIMENAME_ISO_8859_1);
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "ISO_8859_1 must be supported!", e);
            return "";
        }
    }

    public static byte[] getBytes(String data) {
        try {
            return data.getBytes(CharacterSets.MIMENAME_ISO_8859_1);
        } catch (UnsupportedEncodingException e) {
            Log.e(TAG, "ISO_8859_1 must be supported!", e);
            return new byte[0];
        }
    }

    public void release() {
        Uri uri = Uri.parse(TEMPORARY_DRM_OBJECT_URI);
        SqliteWrapper.delete(this.mContext, this.mContentResolver, uri, null, null);
        this.mDrmManagerClient.release();
    }

    public Cursor getPendingMessages(long dueTime) {
        Uri.Builder uriBuilder = Telephony.MmsSms.PendingMessages.CONTENT_URI.buildUpon();
        uriBuilder.appendQueryParameter("protocol", "mms");
        String[] selectionArgs = {String.valueOf(10), String.valueOf(dueTime)};
        return SqliteWrapper.query(this.mContext, this.mContentResolver, uriBuilder.build(), null, "err_type < ? AND due_time <= ?", selectionArgs, Telephony.MmsSms.PendingMessages.DUE_TIME);
    }
}
