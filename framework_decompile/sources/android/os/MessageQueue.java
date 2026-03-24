package android.os;

import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import java.io.FileDescriptor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class MessageQueue {
    private static final boolean DEBUG = false;
    static boolean DEBUG_MESSAGE = SystemProperties.getBoolean("persist.sys.assert.panic", false);
    private static final int DUMP_MESSAGE_MAX = 10;
    private static final String TAG = "MessageQueue";
    private boolean mBlocked;
    private SparseArray<FileDescriptorRecord> mFileDescriptorRecords;
    Message mMessages;
    private int mNextBarrierToken;
    private IdleHandler[] mPendingIdleHandlers;
    private final boolean mQuitAllowed;
    private boolean mQuitting;
    private final ArrayList<IdleHandler> mIdleHandlers = new ArrayList<>();
    private long mPtr = nativeInit();

    public interface IdleHandler {
        boolean queueIdle();
    }

    public interface OnFileDescriptorEventListener {
        public static final int EVENT_ERROR = 4;
        public static final int EVENT_INPUT = 1;
        public static final int EVENT_OUTPUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Events {
        }

        int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i);
    }

    private static native void nativeDestroy(long j);

    private static native long nativeInit();

    private static native boolean nativeIsPolling(long j);

    private native void nativePollOnce(long j, int i);

    private static native void nativeSetFileDescriptorEvents(long j, int i, int i2);

    private static native void nativeWake(long j);

    MessageQueue(boolean quitAllowed) {
        this.mQuitAllowed = quitAllowed;
    }

    protected void finalize() throws Throwable {
        try {
            dispose();
        } finally {
            super.finalize();
        }
    }

    private void dispose() {
        long j = this.mPtr;
        if (j != 0) {
            nativeDestroy(j);
            this.mPtr = 0L;
        }
    }

    public boolean isIdle() {
        boolean z;
        synchronized (this) {
            long now = SystemClock.uptimeMillis();
            Message message = this.mMessages;
            z = message == null || now < message.when;
        }
        return z;
    }

    public void addIdleHandler(IdleHandler handler) {
        if (handler == null) {
            throw new NullPointerException("Can't add a null IdleHandler");
        }
        synchronized (this) {
            this.mIdleHandlers.add(handler);
        }
    }

    public void removeIdleHandler(IdleHandler handler) {
        synchronized (this) {
            this.mIdleHandlers.remove(handler);
        }
    }

    public boolean isPolling() {
        boolean zIsPollingLocked;
        synchronized (this) {
            zIsPollingLocked = isPollingLocked();
        }
        return zIsPollingLocked;
    }

    private boolean isPollingLocked() {
        return !this.mQuitting && nativeIsPolling(this.mPtr);
    }

    public void addOnFileDescriptorEventListener(FileDescriptor fd, int events, OnFileDescriptorEventListener listener) {
        if (fd == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        if (listener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fd, events, listener);
        }
    }

    public void removeOnFileDescriptorEventListener(FileDescriptor fd) {
        if (fd == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fd, 0, null);
        }
    }

    private void updateOnFileDescriptorEventListenerLocked(FileDescriptor fd, int events, OnFileDescriptorEventListener listener) {
        int fdNum = fd.getInt$();
        int index = -1;
        FileDescriptorRecord record = null;
        SparseArray<FileDescriptorRecord> sparseArray = this.mFileDescriptorRecords;
        if (sparseArray != null && (index = sparseArray.indexOfKey(fdNum)) >= 0 && (record = this.mFileDescriptorRecords.valueAt(index)) != null && record.mEvents == events) {
            return;
        }
        if (events != 0) {
            int events2 = events | 4;
            if (record == null) {
                if (this.mFileDescriptorRecords == null) {
                    this.mFileDescriptorRecords = new SparseArray<>();
                }
                this.mFileDescriptorRecords.put(fdNum, new FileDescriptorRecord(fd, events2, listener));
            } else {
                record.mListener = listener;
                record.mEvents = events2;
                record.mSeq++;
            }
            nativeSetFileDescriptorEvents(this.mPtr, fdNum, events2);
            return;
        }
        if (record != null) {
            record.mEvents = 0;
            this.mFileDescriptorRecords.removeAt(index);
            nativeSetFileDescriptorEvents(this.mPtr, fdNum, 0);
        }
    }

    private int dispatchEvents(int fd, int events) {
        synchronized (this) {
            FileDescriptorRecord record = this.mFileDescriptorRecords.get(fd);
            if (record == null) {
                return 0;
            }
            int oldWatchedEvents = record.mEvents;
            int events2 = events & oldWatchedEvents;
            if (events2 == 0) {
                return oldWatchedEvents;
            }
            OnFileDescriptorEventListener listener = record.mListener;
            int seq = record.mSeq;
            int newWatchedEvents = listener.onFileDescriptorEvents(record.mDescriptor, events2);
            if (newWatchedEvents != 0) {
                newWatchedEvents |= 4;
            }
            if (newWatchedEvents != oldWatchedEvents) {
                synchronized (this) {
                    int index = this.mFileDescriptorRecords.indexOfKey(fd);
                    if (index >= 0 && this.mFileDescriptorRecords.valueAt(index) == record && record.mSeq == seq) {
                        record.mEvents = newWatchedEvents;
                        if (newWatchedEvents == 0) {
                            this.mFileDescriptorRecords.removeAt(index);
                        }
                    }
                }
            }
            return newWatchedEvents;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0095, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0096, code lost:
    
        if (r5 >= r2) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0098, code lost:
    
        r6 = r13.mPendingIdleHandlers;
        r7 = r6[r5];
        r6[r5] = null;
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a3, code lost:
    
        r6 = r7.queueIdle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a5, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a6, code lost:
    
        android.util.Log.wtf(android.os.MessageQueue.TAG, "IdleHandler threw exception", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00bd, code lost:
    
        r2 = 0;
        r4 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    android.os.Message next() {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.MessageQueue.next():android.os.Message");
    }

    void quit(boolean safe) {
        if (!this.mQuitAllowed) {
            throw new IllegalStateException("Main thread not allowed to quit.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                return;
            }
            this.mQuitting = true;
            if (safe) {
                removeAllFutureMessagesLocked();
            } else {
                removeAllMessagesLocked();
            }
            nativeWake(this.mPtr);
        }
    }

    public int postSyncBarrier() {
        return postSyncBarrier(SystemClock.uptimeMillis());
    }

    private int postSyncBarrier(long when) {
        int token;
        synchronized (this) {
            token = this.mNextBarrierToken;
            this.mNextBarrierToken = token + 1;
            Message msg = Message.obtain();
            msg.markInUse();
            msg.when = when;
            msg.arg1 = token;
            Message prev = null;
            Message p = this.mMessages;
            if (when != 0) {
                int msgCount = 0;
                while (p != null && p.when <= when) {
                    msgCount++;
                    if (msgCount >= 10000 && msgCount % 10000 == 0) {
                        Log.i(TAG, "searched " + msgCount + " m=" + p);
                    }
                    prev = p;
                    p = p.next;
                }
            }
            if (prev != null) {
                msg.next = p;
                prev.next = msg;
            } else {
                msg.next = p;
                this.mMessages = msg;
            }
        }
        return token;
    }

    public void removeSyncBarrier(int token) {
        boolean needWake;
        synchronized (this) {
            Message prev = null;
            Message p = this.mMessages;
            while (p != null && (p.target != null || p.arg1 != token)) {
                prev = p;
                p = p.next;
            }
            if (p == null) {
                throw new IllegalStateException("The specified message queue synchronization  barrier token has not been posted or has already been removed.");
            }
            if (prev != null) {
                prev.next = p.next;
                needWake = false;
            } else {
                Message message = p.next;
                this.mMessages = message;
                needWake = message == null || message.target != null;
            }
            p.recycleUnchecked();
            if (needWake && !this.mQuitting) {
                nativeWake(this.mPtr);
            }
        }
    }

    boolean enqueueMessage(Message msg, long when) {
        Message prev;
        if (msg.target == null) {
            throw new IllegalArgumentException("Message must have a target.");
        }
        synchronized (this) {
            if (msg.isInUse()) {
                throw new IllegalStateException(msg + " This message is already in use.");
            }
            boolean needWake = false;
            if (this.mQuitting) {
                IllegalStateException e = new IllegalStateException(msg.target + " sending message to a Handler on a dead thread");
                Log.w(TAG, e.getMessage(), e);
                msg.recycle();
                return false;
            }
            msg.markInUse();
            msg.when = when;
            Message p = this.mMessages;
            if (p == null || when == 0 || when < p.when) {
                msg.next = p;
                this.mMessages = msg;
                needWake = this.mBlocked;
            } else {
                if (this.mBlocked && p.target == null && msg.isAsynchronous()) {
                    needWake = true;
                }
                int msgCount = 0;
                Message headMessage = null;
                while (true) {
                    prev = p;
                    p = p.next;
                    if (p == null || when < p.when) {
                        break;
                    }
                    if (needWake && p.isAsynchronous()) {
                        needWake = false;
                    }
                    msgCount++;
                    if (msgCount >= 10000 && msgCount % 10000 == 0) {
                        Log.i(TAG, "searched " + msgCount + "messages,recent msg is " + p + "head message is " + headMessage);
                    }
                    if (msgCount == 1) {
                        headMessage = p;
                    }
                }
                msg.next = p;
                prev.next = msg;
            }
            if (needWake) {
                nativeWake(this.mPtr);
            }
            return true;
        }
    }

    boolean hasMessages(Handler h, int what, Object object) {
        if (h == null) {
            return false;
        }
        synchronized (this) {
            for (Message p = this.mMessages; p != null; p = p.next) {
                if (p.target == h && p.what == what && (object == null || p.obj == object)) {
                    return true;
                }
            }
            return false;
        }
    }

    boolean hasEqualMessages(Handler h, int what, Object object) {
        if (h == null) {
            return false;
        }
        synchronized (this) {
            for (Message p = this.mMessages; p != null; p = p.next) {
                if (p.target == h && p.what == what && (object == null || object.equals(p.obj))) {
                    return true;
                }
            }
            return false;
        }
    }

    boolean hasMessages(Handler h, Runnable r, Object object) {
        if (h == null) {
            return false;
        }
        synchronized (this) {
            for (Message p = this.mMessages; p != null; p = p.next) {
                if (p.target == h && p.callback == r && (object == null || p.obj == object)) {
                    return true;
                }
            }
            return false;
        }
    }

    boolean hasMessages(Handler h) {
        if (h == null) {
            return false;
        }
        synchronized (this) {
            for (Message p = this.mMessages; p != null; p = p.next) {
                if (p.target == h) {
                    return true;
                }
            }
            return false;
        }
    }

    void removeMessages(Handler h, int what, Object object) {
        if (h == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && p.what == what && (object == null || p.obj == object)) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && n2.what == what && (object == null || n2.obj == object)) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    void removeEqualMessages(Handler h, int what, Object object) {
        if (h == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && p.what == what && (object == null || object.equals(p.obj))) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && n2.what == what && (object == null || object.equals(n2.obj))) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    void removeMessages(Handler h, Runnable r, Object object) {
        if (h == null || r == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && p.callback == r && (object == null || p.obj == object)) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && n2.callback == r && (object == null || n2.obj == object)) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    void removeEqualMessages(Handler h, Runnable r, Object object) {
        if (h == null || r == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && p.callback == r && (object == null || object.equals(p.obj))) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && n2.callback == r && (object == null || object.equals(n2.obj))) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    void removeCallbacksAndMessages(Handler h, Object object) {
        if (h == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && (object == null || p.obj == object)) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && (object == null || n2.obj == object)) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    void removeCallbacksAndEqualMessages(Handler h, Object object) {
        if (h == null) {
            return;
        }
        synchronized (this) {
            Message p = this.mMessages;
            while (p != null && p.target == h && (object == null || object.equals(p.obj))) {
                Message n = p.next;
                this.mMessages = n;
                p.recycleUnchecked();
                p = n;
            }
            while (p != null) {
                Message n2 = p.next;
                if (n2 != null && n2.target == h && (object == null || object.equals(n2.obj))) {
                    Message nn = n2.next;
                    n2.recycleUnchecked();
                    p.next = nn;
                } else {
                    p = n2;
                }
            }
        }
    }

    private void removeAllMessagesLocked() {
        Message p = this.mMessages;
        while (p != null) {
            Message n = p.next;
            p.recycleUnchecked();
            p = n;
        }
        this.mMessages = null;
    }

    private void removeAllFutureMessagesLocked() {
        long now = SystemClock.uptimeMillis();
        Message p = this.mMessages;
        if (p == null) {
            return;
        }
        if (p.when > now) {
            removeAllMessagesLocked();
            return;
        }
        while (true) {
            Message n = p.next;
            if (n == null) {
                return;
            }
            if (n.when <= now) {
                p = n;
            } else {
                p.next = null;
                do {
                    Message p2 = n;
                    n = p2.next;
                    p2.recycleUnchecked();
                } while (n != null);
                return;
            }
        }
    }

    void dump(Printer pw, String prefix, Handler h) {
        synchronized (this) {
            long now = SystemClock.uptimeMillis();
            int n = 0;
            for (Message msg = this.mMessages; msg != null; msg = msg.next) {
                if (h == null || h == msg.target) {
                    pw.println(prefix + "Message " + n + ": " + msg.toString(now));
                }
                n++;
            }
            pw.println(prefix + "(Total messages: " + n + ", polling=" + isPollingLocked() + ", quitting=" + this.mQuitting + NavigationBarInflaterView.KEY_CODE_END);
        }
    }

    void dumpDebug(ProtoOutputStream proto, long fieldId) {
        long messageQueueToken = proto.start(fieldId);
        synchronized (this) {
            for (Message msg = this.mMessages; msg != null; msg = msg.next) {
                msg.dumpDebug(proto, 2246267895809L);
            }
            proto.write(1133871366146L, isPollingLocked());
            proto.write(1133871366147L, this.mQuitting);
        }
        proto.end(messageQueueToken);
    }

    private static final class FileDescriptorRecord {
        public final FileDescriptor mDescriptor;
        public int mEvents;
        public OnFileDescriptorEventListener mListener;
        public int mSeq;

        public FileDescriptorRecord(FileDescriptor descriptor, int events, OnFileDescriptorEventListener listener) {
            this.mDescriptor = descriptor;
            this.mEvents = events;
            this.mListener = listener;
        }
    }

    public final void dumpMessage() {
        synchronized (this) {
            if (this.mMessages != null) {
                long time = SystemClock.uptimeMillis();
                Log.e(TAG, "Dump messages in Queue: ");
                int count = 0;
                for (Message tempMsg = this.mMessages; tempMsg != null; tempMsg = tempMsg.next) {
                    count++;
                    if (count > 10) {
                        break;
                    }
                    Log.e(TAG, "Current msg <" + count + ">  = " + tempMsg.toStringLite(time, false));
                }
            } else {
                Log.d(TAG, "mMessages is null");
            }
        }
    }
}
