package com.oplus.exif;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Objects;

/**
 * A FilterInputStream that maintains a count of bytes read and provides
 * utility methods for reading primitives with specific byte ordering.
 */
public class OplusCountedDataInputStream extends FilterInputStream {

    private final byte[] scratchBuffer = new byte[8];
    private final ByteBuffer byteBuffer = ByteBuffer.wrap(scratchBuffer);
    private int bytesReadCount = 0;

    public OplusCountedDataInputStream(InputStream in) {
        super(Objects.requireNonNull(in, "InputStream cannot be null"));
    }

    public int getReadByteCount() {
        return bytesReadCount;
    }

    @Override
    public int read() throws IOException {
        int result = in.read();
        if (result >= 0) {
            bytesReadCount++;
        }
        return result;
    }

    @Override
    public int read(byte[] b, int off, int len) throws IOException {
        int result = in.read(b, off, len);
        if (result > 0) {
            bytesReadCount += result;
        }
        return result;
    }

    @Override
    public long skip(long n) throws IOException {
        long skipped = in.skip(n);
        bytesReadCount += (int) skipped;
        return skipped;
    }

    // --- Utility Navigation Methods ---

    public void skipOrThrow(long n) throws IOException {
        if (n <= 0)
            return;
        if (skip(n) != n) {
            throw new EOFException("Reached end of stream before skipping " + n + " bytes");
        }
    }

    public void skipTo(long targetPosition) throws IOException {
        long amountToSkip = targetPosition - bytesReadCount;
        if (amountToSkip < 0) {
            throw new IOException("Cannot skip backward: current=" + bytesReadCount + ", target=" + targetPosition);
        }
        skipOrThrow(amountToSkip);
    }

    public void readOrThrow(byte[] b, int off, int len) throws IOException {
        int totalRead = 0;
        while (totalRead < len) {
            int result = read(b, off + totalRead, len - totalRead);
            if (result == -1) {
                throw new EOFException("Reached end of stream. Expected " + len + " bytes, but only read " + totalRead);
            }
            totalRead += result;
        }
    }

    public void readOrThrow(byte[] b) throws IOException {
        readOrThrow(b, 0, b.length);
    }

    // --- Byte Order & Primitive Reading ---

    public void setByteOrder(ByteOrder byteOrder) {
        byteBuffer.order(byteOrder);
    }

    public ByteOrder getByteOrder() {
        return byteBuffer.order();
    }

    public short readShort() throws IOException {
        readOrThrow(scratchBuffer, 0, 2);
        return byteBuffer.getShort(0); // Using index avoids needing rewind()
    }

    public int readUnsignedShort() throws IOException {
        return readShort() & 0xFFFF;
    }

    public int readInt() throws IOException {
        readOrThrow(scratchBuffer, 0, 4);
        return byteBuffer.getInt(0);
    }

    public long readUnsignedInt() throws IOException {
        return readInt() & 0xFFFFFFFFL;
    }

    public long readLong() throws IOException {
        readOrThrow(scratchBuffer, 0, 8);
        return byteBuffer.getLong(0);
    }

    // --- String Reading ---

    public String readString(int length) throws IOException {
        return readString(length, StandardCharsets.UTF_8);
    }

    public String readString(int length, Charset charset) throws IOException {
        byte[] b = new byte[length];
        readOrThrow(b);
        return new String(b, charset);
    }
}