package com.oplus.romupdate;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.util.Log;

import java.io.File;
import java.io.FileNotFoundException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class RomUpdateProvider extends ContentProvider {
    private static final String TAG = "RomUpdateProviderShim";

    private static final String AUTH_OPLUS = "com.oplus.romupdate.provider.db";
    private static final String AUTH_NEARME = "com.nearme.romupdate.provider.db";
    private static final String PATH_UPDATE_LIST = "update_list";
    private static final int MATCH_UPDATE_LIST = 1;

    private static final String FILTER_APS = "apps_camera_update_aps_param";
    private static final int VERSION_APS = 20260320;

    private static final String ODM_CONFIG = "/odm/etc/camera/config/oplus_camera_aps_config";

    private static final UriMatcher URI_MATCHER = new UriMatcher(UriMatcher.NO_MATCH);

    static {
        URI_MATCHER.addURI(AUTH_OPLUS, PATH_UPDATE_LIST, MATCH_UPDATE_LIST);
        URI_MATCHER.addURI(AUTH_NEARME, PATH_UPDATE_LIST, MATCH_UPDATE_LIST);
    }

    @Override
    public boolean onCreate() {
        Log.i(TAG, "provider ready");
        return true;
    }

    @Override
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        if (URI_MATCHER.match(uri) != MATCH_UPDATE_LIST) {
            Log.w(TAG, "query unsupported uri: " + uri);
            return emptyCursor(projection);
        }

        String filterName = extractFilterName(selection, selectionArgs);
        Log.i(TAG, "query filterName=" + filterName + " uri=" + uri);

        if (!FILTER_APS.equals(filterName) && !"APS_PARAMETER".equals(filterName)) {
            return emptyCursor(projection);
        }

        try {
            String apsText = Files.readString(new File(ODM_CONFIG).toPath(), StandardCharsets.UTF_8);

            // The camera app expects a JSON object of type ApsUpdateParam, not the raw
            // array.
            // We use the .camera/oplus_camera_aps_config path as the destination.
            String jsonPayload = buildApsUpdateParamJson(".camera/oplus_camera_aps_config", apsText);
            String md5 = md5Hex(jsonPayload);

            MatrixCursor cursor = new MatrixCursor(resolveColumns(projection));
            addRow(cursor, jsonPayload, filterName, VERSION_APS, md5);
            return cursor;
        } catch (Exception e) {
            Log.e(TAG, "failed to serve APS payload", e);
            return emptyCursor(projection);
        }
    }

    @Override
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/vnd.com.oplus.romupdate.update_list";
    }

    @Override
    public Uri insert(Uri uri, ContentValues values) {
        return null;
    }

    @Override
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        return 0;
    }

    @Override
    public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        throw new FileNotFoundException("openFile unsupported: " + uri);
    }

    private static MatrixCursor emptyCursor(String[] projection) {
        return new MatrixCursor(resolveColumns(projection));
    }

    private static String[] resolveColumns(String[] projection) {
        if (projection != null && projection.length > 0) {
            return projection;
        }
        return new String[] { "xml", "filterName", "version", "md5" };
    }

    private static void addRow(MatrixCursor cursor, String xml, String filterName, int version, String md5) {
        String[] columns = cursor.getColumnNames();
        Object[] row = new Object[columns.length];
        for (int i = 0; i < columns.length; i++) {
            switch (columns[i]) {
                case "xml":
                    row[i] = xml;
                    break;
                case "filterName":
                case "filtername":
                    row[i] = filterName;
                    break;
                case "version":
                    row[i] = version;
                    break;
                case "md5":
                    row[i] = md5;
                    break;
                default:
                    row[i] = null;
                    break;
            }
        }
        cursor.addRow(row);
    }

    private static String extractFilterName(String selection, String[] selectionArgs) {
        if (selectionArgs != null && selectionArgs.length > 0 && !TextUtils.isEmpty(selectionArgs[0])) {
            return selectionArgs[0];
        }
        if (TextUtils.isEmpty(selection)) {
            return null;
        }

        Matcher matcher = Pattern.compile("\"([^\"]+)\"").matcher(selection);
        if (matcher.find()) {
            return matcher.group(1);
        }

        matcher = Pattern.compile("'([^']+)'").matcher(selection);
        if (matcher.find()) {
            return matcher.group(1);
        }

        matcher = Pattern.compile("=\\s*([A-Za-z0-9_\\.]+)").matcher(selection);
        if (matcher.find()) {
            return matcher.group(1);
        }

        return null;
    }

    private static String buildApsUpdateParamJson(String updateFilePath, String updateContent) {
        return "{\"mUpdateFilePath\":\""
                + jsonEscape(updateFilePath)
                + "\",\"mUpdateContent\":\""
                + jsonEscape(updateContent)
                + "\"}";
    }

    private static String jsonEscape(String input) {
        StringBuilder out = new StringBuilder(input.length() + 64);
        for (int i = 0; i < input.length(); i++) {
            char ch = input.charAt(i);
            switch (ch) {
                case '\\':
                    out.append("\\\\");
                    break;
                case '"':
                    out.append("\\\"");
                    break;
                case '\b':
                    out.append("\\b");
                    break;
                case '\f':
                    out.append("\\f");
                    break;
                case '\n':
                    out.append("\\n");
                    break;
                case '\r':
                    out.append("\\r");
                    break;
                case '\t':
                    out.append("\\t");
                    break;
                default:
                    if (ch < 0x20) {
                        out.append(String.format(Locale.US, "\\u%04x", (int) ch));
                    } else {
                        out.append(ch);
                    }
                    break;
            }
        }
        return out.toString();
    }

    private static String md5Hex(String input) throws Exception {
        MessageDigest digest = MessageDigest.getInstance("MD5");
        byte[] hash = digest.digest(input.getBytes(StandardCharsets.UTF_8));
        StringBuilder out = new StringBuilder(hash.length * 2);
        for (byte b : hash) {
            out.append(String.format(Locale.US, "%02x", b & 0xff));
        }
        return out.toString();
    }
}
