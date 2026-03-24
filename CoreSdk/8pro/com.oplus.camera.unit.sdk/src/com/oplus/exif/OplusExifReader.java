package com.oplus.exif;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class OplusExifReader {
    private static final String TAG = "ExifReader";
    private final OplusExifInterface mInterface;

    OplusExifReader(OplusExifInterface oplusExifInterface) {
        this.mInterface = oplusExifInterface;
    }

    protected OplusExifData read(InputStream inputStream) throws OplusExifInvalidFormatException, IOException {
        OplusExifParser oplusExifParser = OplusExifParser.parse(inputStream, this.mInterface);
        OplusExifData oplusExifData = new OplusExifData(oplusExifParser.getByteOrder());
        for (int next = oplusExifParser.next(); next != 5; next = oplusExifParser.next()) {
            if (next == 0) {
                oplusExifData.addIfdData(new OplusIfdData(oplusExifParser.getCurrentIfd()));
            } else if (next == 1) {
                OplusExifTag tag = oplusExifParser.getTag();
                if (!tag.hasValue()) {
                    oplusExifParser.registerForTagValue(tag);
                } else {
                    oplusExifData.getIfdData(tag.getIfd()).setTag(tag);
                }
            } else if (next == 2) {
                OplusExifTag tag2 = oplusExifParser.getTag();
                if (tag2.getDataType() == 7) {
                    oplusExifParser.readFullTagValue(tag2);
                }
                oplusExifData.getIfdData(tag2.getIfd()).setTag(tag2);
            } else if (next == 3) {
                int compressedImageSize = oplusExifParser.getCompressedImageSize();
                byte[] bArr = new byte[compressedImageSize];
                if (compressedImageSize == oplusExifParser.read(bArr)) {
                    oplusExifData.setCompressedThumbnail(bArr);
                } else {
                    Log.w(TAG, "Failed to read the compressed thumbnail");
                }
            } else if (next == 4) {
                int stripSize = oplusExifParser.getStripSize();
                byte[] bArr2 = new byte[stripSize];
                if (stripSize == oplusExifParser.read(bArr2)) {
                    oplusExifData.setStripBytes(oplusExifParser.getStripIndex(), bArr2);
                } else {
                    Log.w(TAG, "Failed to read the strip bytes");
                }
            }
        }
        return oplusExifData;
    }
}
