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
            switch (next) {
                case 0:
                    oplusExifData.addIfdData(new OplusIfdData(parse.getCurrentIfd()));
                    break;
                case 1:
                    OplusExifTag tag = parse.getTag();
                    if (!tag.hasValue()) {
                        parse.registerForTagValue(tag);
                        break;
                    } else {
                        oplusExifData.getIfdData(tag.getIfd()).setTag(tag);
                        break;
                    }
                case 2:
                    OplusExifTag tag2 = parse.getTag();
                    if (tag2.getDataType() == 7) {
                        parse.readFullTagValue(tag2);
                    }
                    oplusExifData.getIfdData(tag2.getIfd()).setTag(tag2);
                    break;
                case 3:
                    byte[] bArr = new byte[parse.getCompressedImageSize()];
                    if (bArr.length == parse.read(bArr)) {
                        oplusExifData.setCompressedThumbnail(bArr);
                        break;
                    } else {
                        Log.w(TAG, "Failed to read the compressed thumbnail");
                        break;
                    }
                case 4:
                    byte[] bArr2 = new byte[parse.getStripSize()];
                    if (bArr2.length == parse.read(bArr2)) {
                        oplusExifData.setStripBytes(parse.getStripIndex(), bArr2);
                        break;
                    } else {
                        Log.w(TAG, "Failed to read the strip bytes");
                        break;
                    }
            }
        }
        return oplusExifData;
    }
}
