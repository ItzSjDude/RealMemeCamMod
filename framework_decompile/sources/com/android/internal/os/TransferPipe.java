package com.android.internal.os;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Slog;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import libcore.io.IoUtils;

/* loaded from: classes4.dex */
public class TransferPipe implements Runnable, Closeable {
    static final boolean DEBUG = false;
    static final long DEFAULT_TIMEOUT = 5000;
    static final String TAG = "TransferPipe";
    String mBufferPrefix;
    boolean mComplete;
    long mEndTime;
    String mFailure;
    final ParcelFileDescriptor[] mFds;
    FileDescriptor mOutFd;
    final Thread mThread;

    interface Caller {
        void go(IInterface iInterface, FileDescriptor fileDescriptor, String str, String[] strArr) throws RemoteException;
    }

    public TransferPipe() throws IOException {
        this(null);
    }

    public TransferPipe(String bufferPrefix) throws IOException {
        this(bufferPrefix, TAG);
    }

    protected TransferPipe(String bufferPrefix, String threadName) throws IOException {
        this.mThread = new Thread(this, threadName);
        this.mFds = ParcelFileDescriptor.createPipe();
        this.mBufferPrefix = bufferPrefix;
    }

    ParcelFileDescriptor getReadFd() {
        return this.mFds[0];
    }

    public ParcelFileDescriptor getWriteFd() {
        return this.mFds[1];
    }

    public void setBufferPrefix(String prefix) {
        this.mBufferPrefix = prefix;
    }

    public static void dumpAsync(IBinder binder, FileDescriptor out, String[] args) throws IOException, RemoteException {
        goDump(binder, out, args);
    }

    public static byte[] dumpAsync(IBinder binder, String... args) throws IOException, RemoteException {
        ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
        try {
            dumpAsync(binder, pipe[1].getFileDescriptor(), args);
            pipe[1].close();
            pipe[1] = null;
            byte[] buffer = new byte[4096];
            ByteArrayOutputStream combinedBuffer = new ByteArrayOutputStream();
            try {
                FileInputStream is = new FileInputStream(pipe[0].getFileDescriptor());
                while (true) {
                    try {
                        int numRead = is.read(buffer);
                        if (numRead != -1) {
                            combinedBuffer.write(buffer, 0, numRead);
                        } else {
                            is.close();
                            byte[] byteArray = combinedBuffer.toByteArray();
                            combinedBuffer.close();
                            return byteArray;
                        }
                    } finally {
                    }
                }
            } finally {
            }
        } finally {
            pipe[0].close();
            IoUtils.closeQuietly(pipe[1]);
        }
    }

    static void go(Caller caller, IInterface iface, FileDescriptor out, String prefix, String[] args) throws IOException, RemoteException {
        go(caller, iface, out, prefix, args, 5000L);
    }

    static void go(Caller caller, IInterface iface, FileDescriptor out, String prefix, String[] args, long timeout) throws IOException, RemoteException {
        if (iface.asBinder() instanceof Binder) {
            try {
                caller.go(iface, out, prefix, args);
                return;
            } catch (RemoteException e) {
                return;
            }
        }
        TransferPipe tp = new TransferPipe();
        try {
            caller.go(iface, tp.getWriteFd().getFileDescriptor(), prefix, args);
            tp.go(out, timeout);
            tp.close();
        } catch (Throwable th) {
            try {
                tp.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static void goDump(IBinder binder, FileDescriptor out, String[] args) throws IOException, RemoteException {
        goDump(binder, out, args, 5000L);
    }

    static void goDump(IBinder binder, FileDescriptor out, String[] args, long timeout) throws IOException, RemoteException {
        if (binder instanceof Binder) {
            try {
                binder.dump(out, args);
                return;
            } catch (RemoteException e) {
                return;
            }
        }
        TransferPipe tp = new TransferPipe();
        try {
            binder.dumpAsync(tp.getWriteFd().getFileDescriptor(), args);
            tp.go(out, timeout);
            tp.close();
        } catch (Throwable th) {
            try {
                tp.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public void go(FileDescriptor out) throws IOException {
        go(out, 5000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x003b, code lost:
    
        if (r0 != null) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
    
        throw new java.io.IOException(r4.mFailure);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void go(java.io.FileDescriptor r5, long r6) throws java.io.IOException {
        /*
            r4 = this;
            monitor-enter(r4)     // Catch: java.lang.Throwable -> L4e
            r4.mOutFd = r5     // Catch: java.lang.Throwable -> L4b
            long r0 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L4b
            long r0 = r0 + r6
            r4.mEndTime = r0     // Catch: java.lang.Throwable -> L4b
            r0 = 1
            r4.closeFd(r0)     // Catch: java.lang.Throwable -> L4b
            java.lang.Thread r0 = r4.mThread     // Catch: java.lang.Throwable -> L4b
            r0.start()     // Catch: java.lang.Throwable -> L4b
        L13:
            java.lang.String r0 = r4.mFailure     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L3b
            boolean r1 = r4.mComplete     // Catch: java.lang.Throwable -> L4b
            if (r1 != 0) goto L3b
            long r0 = r4.mEndTime     // Catch: java.lang.Throwable -> L4b
            long r2 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L4b
            long r0 = r0 - r2
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 <= 0) goto L2e
            r4.wait(r0)     // Catch: java.lang.InterruptedException -> L2c java.lang.Throwable -> L4b
            goto L2d
        L2c:
            r2 = move-exception
        L2d:
            goto L13
        L2e:
            java.lang.Thread r2 = r4.mThread     // Catch: java.lang.Throwable -> L4b
            r2.interrupt()     // Catch: java.lang.Throwable -> L4b
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L4b
            java.lang.String r3 = "Timeout"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L4b
            throw r2     // Catch: java.lang.Throwable -> L4b
        L3b:
            if (r0 != 0) goto L43
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L4b
            r4.kill()
            return
        L43:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L4b
            java.lang.String r1 = r4.mFailure     // Catch: java.lang.Throwable -> L4b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L4b
            throw r0     // Catch: java.lang.Throwable -> L4b
        L4b:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L4b
            throw r0     // Catch: java.lang.Throwable -> L4e
        L4e:
            r0 = move-exception
            r4.kill()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.TransferPipe.go(java.io.FileDescriptor, long):void");
    }

    void closeFd(int num) {
        ParcelFileDescriptor parcelFileDescriptor = this.mFds[num];
        if (parcelFileDescriptor != null) {
            try {
                parcelFileDescriptor.close();
            } catch (IOException e) {
            }
            this.mFds[num] = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        kill();
    }

    public void kill() {
        synchronized (this) {
            closeFd(0);
            closeFd(1);
        }
    }

    protected OutputStream getNewOutputStream() {
        return new FileOutputStream(this.mOutFd);
    }

    @Override // java.lang.Runnable
    public void run() throws IOException {
        byte[] buffer = new byte[1024];
        synchronized (this) {
            ParcelFileDescriptor readFd = getReadFd();
            if (readFd == null) {
                Slog.w(TAG, "Pipe has been closed...");
                return;
            }
            FileInputStream fis = new FileInputStream(readFd.getFileDescriptor());
            OutputStream fos = getNewOutputStream();
            byte[] bufferPrefix = null;
            boolean needPrefix = true;
            String str = this.mBufferPrefix;
            if (str != null) {
                bufferPrefix = str.getBytes();
            }
            while (true) {
                try {
                    int size = fis.read(buffer);
                    if (size > 0) {
                        if (bufferPrefix == null) {
                            fos.write(buffer, 0, size);
                        } else {
                            int start = 0;
                            int i = 0;
                            while (i < size) {
                                if (buffer[i] != 10) {
                                    if (i > start) {
                                        fos.write(buffer, start, i - start);
                                    }
                                    start = i;
                                    if (needPrefix) {
                                        fos.write(bufferPrefix);
                                        needPrefix = false;
                                    }
                                    do {
                                        i++;
                                        if (i >= size) {
                                            break;
                                        }
                                    } while (buffer[i] != 10);
                                    if (i < size) {
                                        needPrefix = true;
                                    }
                                }
                                i++;
                            }
                            if (size > start) {
                                fos.write(buffer, start, size - start);
                            }
                        }
                    } else {
                        this.mThread.isInterrupted();
                        synchronized (this) {
                            this.mComplete = true;
                            notifyAll();
                        }
                        return;
                    }
                } catch (IOException e) {
                    synchronized (this) {
                        this.mFailure = e.toString();
                        notifyAll();
                        return;
                    }
                }
            }
        }
    }
}
