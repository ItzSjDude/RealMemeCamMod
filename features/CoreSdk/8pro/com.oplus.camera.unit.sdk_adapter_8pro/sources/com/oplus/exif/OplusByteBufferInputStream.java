package com.oplus.exif;

import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
class OplusByteBufferInputStream extends InputStream {
    private ByteBuffer mBuf;

    public OplusByteBufferInputStream(ByteBuffer byteBuffer) {
        this.mBuf = byteBuffer;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.mBuf.hasRemaining()) {
            return this.mBuf.get() & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (this.mBuf.hasRemaining()) {
            int min = Math.min(i2, this.mBuf.remaining());
            this.mBuf.get(bArr, i, min);
            return min;
        }
        return -1;
    }
}
