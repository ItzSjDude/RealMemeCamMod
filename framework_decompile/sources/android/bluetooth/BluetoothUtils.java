package android.bluetooth;

import android.os.UserHandle;
import android.util.Log;
import java.time.Duration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class BluetoothUtils {
    private static final String TAG = "BluetoothUtils";
    private static final Duration SYNC_CALLS_TIMEOUT = Duration.ofSeconds(3);
    public static final UserHandle USER_HANDLE_NULL = UserHandle.of(-10000);

    private BluetoothUtils() {
    }

    static Duration getSyncTimeout() {
        return SYNC_CALLS_TIMEOUT;
    }

    static class TypeValueEntry {
        private final int mType;
        private final byte[] mValue;

        TypeValueEntry(int type, byte[] value) {
            this.mType = type;
            this.mValue = value;
        }

        public int getType() {
            return this.mType;
        }

        public byte[] getValue() {
            return this.mValue;
        }
    }

    private static byte[] extractBytes(byte[] rawBytes, int start, int length) {
        int remainingLength = rawBytes.length - start;
        if (remainingLength < length) {
            Log.w(TAG, "extractBytes() remaining length " + remainingLength + " is less than copying length " + length + ", array length is " + rawBytes.length + " start is " + start);
            return null;
        }
        byte[] bytes = new byte[length];
        System.arraycopy(rawBytes, start, bytes, 0, length);
        return bytes;
    }

    public static List<TypeValueEntry> parseLengthTypeValueBytes(byte[] rawBytes) {
        int length;
        if (rawBytes == null) {
            return Collections.emptyList();
        }
        if (rawBytes.length == 0) {
            return Collections.emptyList();
        }
        int currentPos = 0;
        List<TypeValueEntry> result = new ArrayList<>();
        while (true) {
            if (currentPos >= rawBytes.length || (length = rawBytes[currentPos] & 255) == 0) {
                break;
            }
            int currentPos2 = currentPos + 1;
            if (currentPos2 >= rawBytes.length) {
                Log.w(TAG, "parseLtv() no type and value after length, rawBytes length = " + rawBytes.length + ", currentPost = " + currentPos2);
                break;
            }
            int dataLength = length - 1;
            int type = rawBytes[currentPos2] & 255;
            int currentPos3 = currentPos2 + 1;
            if (currentPos3 >= rawBytes.length) {
                Log.w(TAG, "parseLtv() no value after length, rawBytes length = " + rawBytes.length + ", currentPost = " + currentPos3);
                break;
            }
            byte[] value = extractBytes(rawBytes, currentPos3, dataLength);
            if (value == null) {
                Log.w(TAG, "failed to extract bytes, currentPost = " + currentPos3);
                break;
            }
            result.add(new TypeValueEntry(type, value));
            currentPos = currentPos3 + dataLength;
        }
        return result;
    }

    public static byte[] serializeTypeValue(List<TypeValueEntry> typeValueEntries) {
        int length = 0;
        for (TypeValueEntry entry : typeValueEntries) {
            int length2 = length + 2;
            if (entry.getType() - (entry.getType() & 255) != 0) {
                Log.w(TAG, "serializeTypeValue() type " + entry.getType() + " is out of range of 0-0xFF");
                return null;
            }
            if (entry.getValue() == null) {
                Log.w(TAG, "serializeTypeValue() value is null");
                return null;
            }
            int lengthValue = entry.getValue().length + 1;
            if (lengthValue - (lengthValue & 255) != 0) {
                Log.w(TAG, "serializeTypeValue() entry length " + entry.getValue().length + " is not in range of 0 to 254");
                return null;
            }
            length = length2 + entry.getValue().length;
        }
        byte[] result = new byte[length];
        int currentPos = 0;
        for (TypeValueEntry entry2 : typeValueEntries) {
            result[currentPos] = (byte) ((entry2.getValue().length + 1) & 255);
            int currentPos2 = currentPos + 1;
            result[currentPos2] = (byte) (entry2.getType() & 255);
            int currentPos3 = currentPos2 + 1;
            System.arraycopy(entry2.getValue(), 0, result, currentPos3, entry2.getValue().length);
            currentPos = currentPos3 + entry2.getValue().length;
        }
        return result;
    }
}
