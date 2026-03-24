package com.oplus.exif;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
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
        if (!this.mBuf.hasRemaining()) {
            return -1;
        }
        int iMin = Math.min(i2, this.mBuf.remaining());
        this.mBuf.get(bArr, i, iMin);
        return iMin;
    }
}
