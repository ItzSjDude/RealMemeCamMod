package com.oplus.exif;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Objects;

/**
 * An InputStream implementation that reads data from a {@link ByteBuffer}.
 */
public class OplusByteBufferInputStream extends InputStream {

    private final ByteBuffer buffer;

    public OplusByteBufferInputStream(ByteBuffer buffer) {
        // Use Objects.requireNonNull to catch nulls early
        this.buffer = Objects.requireNonNull(buffer, "ByteBuffer cannot be null");
    }

    @Override
    public int read() throws IOException {
        if (!buffer.hasRemaining()) {
            return -1;
        }
        // Bitmask with 0xFF ensures the byte is treated as an unsigned value (0-255)
        return buffer.get() & 0xFF;
    }

    @Override
    public int read(byte[] bytes, int offset, int length) throws IOException {
        // Standard Java InputStream validation for the byte array
        Objects.checkFromIndexSize(offset, length, bytes.length);

        if (length == 0) {
            return 0;
        }

        if (!buffer.hasRemaining()) {
            return -1;
        }

        // Only read what is available in the buffer
        int count = Math.min(length, buffer.remaining());
        buffer.get(bytes, offset, count);
        return count;
    }

    @Override
    public int available() throws IOException {
        return buffer.remaining();
    }

    @Override
    public synchronized void reset() throws IOException {
        buffer.reset();
    }

    @Override
    public synchronized void mark(int readlimit) {
        buffer.mark();
    }

    @Override
    public boolean markSupported() {
        return true;
    }
}