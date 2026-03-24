package com.android.internal.util;

import android.util.proto.ProtoOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
import java.util.function.Consumer;
import java.util.function.Predicate;

/* loaded from: classes4.dex */
public class TraceBuffer<P, S extends P, T extends P> {
    private final Queue<T> mBuffer;
    private int mBufferCapacity;
    private final Object mBufferLock;
    private int mBufferUsedSize;
    private final Consumer mProtoDequeuedCallback;
    private final ProtoProvider<P, S, T> mProtoProvider;

    public interface ProtoProvider<P, S extends P, T extends P> {
        byte[] getBytes(P p);

        int getItemSize(P p);

        void write(S s, Queue<T> queue, OutputStream outputStream) throws IOException;
    }

    private static class ProtoOutputStreamProvider implements ProtoProvider<ProtoOutputStream, ProtoOutputStream, ProtoOutputStream> {
        private ProtoOutputStreamProvider() {
        }

        @Override // com.android.internal.util.TraceBuffer.ProtoProvider
        public /* bridge */ /* synthetic */ void write(Object obj, Queue queue, OutputStream outputStream) throws IOException {
            write((ProtoOutputStream) obj, (Queue<ProtoOutputStream>) queue, outputStream);
        }

        @Override // com.android.internal.util.TraceBuffer.ProtoProvider
        public int getItemSize(ProtoOutputStream proto) {
            return proto.getRawSize();
        }

        @Override // com.android.internal.util.TraceBuffer.ProtoProvider
        public byte[] getBytes(ProtoOutputStream proto) {
            return proto.getBytes();
        }

        public void write(ProtoOutputStream encapsulatingProto, Queue<ProtoOutputStream> buffer, OutputStream os) throws IOException {
            os.write(encapsulatingProto.getBytes());
            for (ProtoOutputStream protoOutputStream : buffer) {
                byte[] protoBytes = protoOutputStream.getBytes();
                os.write(protoBytes);
            }
        }
    }

    public TraceBuffer(int bufferCapacity) {
        this(bufferCapacity, new ProtoOutputStreamProvider(), null);
    }

    public TraceBuffer(int bufferCapacity, ProtoProvider protoProvider, Consumer<T> protoDequeuedCallback) {
        this.mBufferLock = new Object();
        this.mBuffer = new ArrayDeque();
        this.mBufferCapacity = bufferCapacity;
        this.mProtoProvider = protoProvider;
        this.mProtoDequeuedCallback = protoDequeuedCallback;
        resetBuffer();
    }

    public int getAvailableSpace() {
        return this.mBufferCapacity - this.mBufferUsedSize;
    }

    public int size() {
        return this.mBuffer.size();
    }

    public void setCapacity(int capacity) {
        this.mBufferCapacity = capacity;
    }

    public void add(T proto) {
        int protoLength = this.mProtoProvider.getItemSize(proto);
        if (protoLength > this.mBufferCapacity) {
            throw new IllegalStateException("Trace object too large for the buffer. Buffer size:" + this.mBufferCapacity + " Object size: " + protoLength);
        }
        synchronized (this.mBufferLock) {
            discardOldest(protoLength);
            this.mBuffer.add(proto);
            this.mBufferUsedSize += protoLength;
            this.mBufferLock.notify();
        }
    }

    public boolean contains(final byte[] other) {
        return this.mBuffer.stream().anyMatch(new Predicate() { // from class: com.android.internal.util.TraceBuffer$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return this.f$0.m7152lambda$contains$0$comandroidinternalutilTraceBuffer(other, obj);
            }
        });
    }

    /* renamed from: lambda$contains$0$com-android-internal-util-TraceBuffer, reason: not valid java name */
    /* synthetic */ boolean m7152lambda$contains$0$comandroidinternalutilTraceBuffer(byte[] other, Object p) {
        return Arrays.equals(this.mProtoProvider.getBytes(p), other);
    }

    public void writeTraceToFile(File traceFile, S encapsulatingProto) throws IOException {
        synchronized (this.mBufferLock) {
            traceFile.delete();
            OutputStream os = new FileOutputStream(traceFile);
            try {
                traceFile.setReadable(true, false);
                this.mProtoProvider.write(encapsulatingProto, this.mBuffer, os);
                os.flush();
                os.close();
            } finally {
            }
        }
    }

    private void discardOldest(int protoLength) {
        long availableSpace = getAvailableSpace();
        while (availableSpace < protoLength) {
            T tPoll = this.mBuffer.poll();
            if (tPoll == null) {
                throw new IllegalStateException("No element to discard from buffer");
            }
            this.mBufferUsedSize -= this.mProtoProvider.getItemSize(tPoll);
            availableSpace = getAvailableSpace();
            Consumer consumer = this.mProtoDequeuedCallback;
            if (consumer != null) {
                consumer.accept(tPoll);
            }
        }
    }

    public void resetBuffer() {
        synchronized (this.mBufferLock) {
            if (this.mProtoDequeuedCallback != null) {
                for (T item : this.mBuffer) {
                    this.mProtoDequeuedCallback.accept(item);
                }
            }
            this.mBuffer.clear();
            this.mBufferUsedSize = 0;
        }
    }

    public int getBufferSize() {
        return this.mBufferUsedSize;
    }

    public String getStatus() {
        String str;
        synchronized (this.mBufferLock) {
            str = "Buffer size: " + this.mBufferCapacity + " bytes\nBuffer usage: " + this.mBufferUsedSize + " bytes\nElements in the buffer: " + this.mBuffer.size();
        }
        return str;
    }
}
