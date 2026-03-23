package com.oplus.exif;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
class OplusExifReader {
    private static final String TAG = "ExifReader";
    private final OplusExifInterface mInterface;

    /* JADX INFO: Access modifiers changed from: package-private */
    public OplusExifReader(OplusExifInterface oplusExifInterface) {
        this.mInterface = oplusExifInterface;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusExifData read(InputStream inputStream) throws OplusExifInvalidFormatException, IOException {
        OplusExifParser parse = OplusExifParser.parse(inputStream, this.mInterface);
        OplusExifData oplusExifData = new OplusExifData(parse.getByteOrder());
        for (int next = parse.next(); next != 5; next = parse.next()) {
            if (next == 0) {
                oplusExifData.addIfdData(new OplusIfdData(parse.getCurrentIfd()));
            } else if (next == 1) {
                OplusExifTag tag = parse.getTag();
                if (!tag.hasValue()) {
                    parse.registerForTagValue(tag);
                } else {
                    oplusExifData.getIfdData(tag.getIfd()).setTag(tag);
                }
            } else if (next == 2) {
                OplusExifTag tag2 = parse.getTag();
                if (tag2.getDataType() == 7) {
                    parse.readFullTagValue(tag2);
                }
                oplusExifData.getIfdData(tag2.getIfd()).setTag(tag2);
            } else if (next == 3) {
                int compressedImageSize = parse.getCompressedImageSize();
                byte[] bArr = new byte[compressedImageSize];
                if (compressedImageSize == parse.read(bArr)) {
                    oplusExifData.setCompressedThumbnail(bArr);
                } else {
                    Log.w(TAG, "Failed to read the compressed thumbnail");
                }
            } else if (next == 4) {
                int stripSize = parse.getStripSize();
                byte[] bArr2 = new byte[stripSize];
                if (stripSize == parse.read(bArr2)) {
                    oplusExifData.setStripBytes(parse.getStripIndex(), bArr2);
                } else {
                    Log.w(TAG, "Failed to read the strip bytes");
                }
            }
        }
        return oplusExifData;
    }
}
