package com.oplus.exif;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class OplusExifReader {
    private static final String TAG = "ExifReader";
    private final OplusExifInterface mInterface;

    OplusExifReader(OplusExifInterface exifInterface) {
        this.mInterface = exifInterface;
    }

    protected OplusExifData read(InputStream inputStream) throws OplusExifInvalidFormatException, IOException {
        OplusExifParser oplusExifParser = OplusExifParser.parse(inputStream, this.mInterface);
        OplusExifData oplusExifData = new OplusExifData(oplusExifParser.getByteOrder());
        for (int eventType = oplusExifParser.next(); eventType != 5; eventType = oplusExifParser.next()) {
            if (eventType == 0) {
                oplusExifData.addIfdData(new OplusIfdData(oplusExifParser.getCurrentIfd()));
            } else if (eventType == 1) {
                OplusExifTag tag = oplusExifParser.getTag();
                if (!tag.hasValue()) {
                    oplusExifParser.registerForTagValue(tag);
                } else {
                    oplusExifData.getIfdData(tag.getIfd()).setTag(tag);
                }
            } else if (eventType == 2) {
                OplusExifTag tag = oplusExifParser.getTag();
                if (tag.getDataType() == 7) {
                    oplusExifParser.readFullTagValue(tag);
                }
                oplusExifData.getIfdData(tag.getIfd()).setTag(tag);
            } else if (eventType == 3) {
                int compressedImageSize = oplusExifParser.getCompressedImageSize();
                byte[] thumbnailData = new byte[compressedImageSize];
                if (compressedImageSize == oplusExifParser.read(thumbnailData)) {
                    oplusExifData.setCompressedThumbnail(thumbnailData);
                } else {
                    Log.w(TAG, "Failed to read the compressed thumbnail");
                }
            } else if (eventType == 4) {
                int stripSize = oplusExifParser.getStripSize();
                byte[] stripBytes = new byte[stripSize];
                if (stripSize == oplusExifParser.read(stripBytes)) {
                    oplusExifData.setStripBytes(oplusExifParser.getStripIndex(), stripBytes);
                } else {
                    Log.w(TAG, "Failed to read the strip bytes");
                }
            }
        }
        return oplusExifData;
    }
}
