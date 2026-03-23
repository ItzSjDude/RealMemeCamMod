package com.oplus.exif;

import com.oplus.exif.OplusExifInterface;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
class OplusCountedDataInputStream extends FilterInputStream {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final byte[] mByteArray;
    private final ByteBuffer mByteBuffer;
    private int mCount;

    /* JADX INFO: Access modifiers changed from: protected */
    public OplusCountedDataInputStream(InputStream inputStream) {
        super(inputStream);
        this.mCount = 0;
        byte[] bArr = new byte[8];
        this.mByteArray = bArr;
        this.mByteBuffer = ByteBuffer.wrap(bArr);
    }

    public int getReadByteCount() {
        return this.mCount;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int read = this.in.read(bArr);
        this.mCount += read >= 0 ? read : 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.in.read(bArr, i, i2);
        this.mCount += read >= 0 ? read : 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read = this.in.read();
        this.mCount += read >= 0 ? 1 : 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = this.in.skip(j);
        this.mCount = (int) (this.mCount + skip);
        return skip;
    }

    public void skipOrThrow(long j) throws IOException {
        if (skip(j) != j) {
            throw new EOFException();
        }
    }

    public void skipTo(long j) throws IOException {
        skipOrThrow(j - this.mCount);
    }

    public void readOrThrow(byte[] bArr, int i, int i2) throws IOException {
        if (read(bArr, i, i2) != i2) {
            throw new EOFException();
        }
    }

    public void readOrThrow(byte[] bArr) throws IOException {
        readOrThrow(bArr, 0, bArr.length);
    }

    public void setByteOrder(ByteOrder byteOrder) {
        this.mByteBuffer.order(byteOrder);
    }

    public ByteOrder getByteOrder() {
        return this.mByteBuffer.order();
    }

    public short readShort() throws IOException {
        readOrThrow(this.mByteArray, 0, 2);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getShort();
    }

    public int readUnsignedShort() throws IOException {
        return readShort() & OplusExifInterface.ColorSpace.UNCALIBRATED;
    }

    public int readInt() throws IOException {
        readOrThrow(this.mByteArray, 0, 4);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getInt();
    }

    public long readUnsignedInt() throws IOException {
        return readInt() & 4294967295L;
    }

    public long readLong() throws IOException {
        readOrThrow(this.mByteArray, 0, 8);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getLong();
    }

    public String readString(int i) throws IOException {
        byte[] bArr = new byte[i];
        readOrThrow(bArr);
        return new String(bArr, "UTF8");
    }

    public String readString(int i, Charset charset) throws IOException {
        byte[] bArr = new byte[i];
        readOrThrow(bArr);
        return new String(bArr, charset);
    }
}
