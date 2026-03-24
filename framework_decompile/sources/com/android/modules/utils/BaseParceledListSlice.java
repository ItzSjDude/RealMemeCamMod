package com.android.modules.utils;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes4.dex */
abstract class BaseParceledListSlice<T> implements Parcelable {
    private int mInlineCountLimit = Integer.MAX_VALUE;
    private final List<T> mList;
    private static String TAG = "ParceledListSlice";
    private static boolean DEBUG = false;
    private static final int MAX_IPC_SIZE = IBinder.getSuggestedMaxIpcSizeBytes();

    protected abstract Parcelable.Creator<?> readParcelableCreator(Parcel parcel, ClassLoader classLoader);

    protected abstract void writeElement(T t, Parcel parcel, int i);

    protected abstract void writeParcelableCreator(T t, Parcel parcel);

    public BaseParceledListSlice(List<T> list) {
        this.mList = list;
    }

    BaseParceledListSlice(Parcel p, ClassLoader loader) {
        int N = p.readInt();
        this.mList = new ArrayList(N);
        if (DEBUG) {
            Log.d(TAG, "Retrieving " + N + " items");
        }
        if (N <= 0) {
            return;
        }
        Parcelable.Creator<?> creator = readParcelableCreator(p, loader);
        Class<?> listElementClass = null;
        int i = 0;
        while (i < N && p.readInt() != 0) {
            T parcelable = readCreator(creator, p, loader);
            if (listElementClass == null) {
                listElementClass = parcelable.getClass();
            } else {
                verifySameType(listElementClass, parcelable.getClass());
            }
            this.mList.add(parcelable);
            if (DEBUG) {
                String str = TAG;
                StringBuilder sbAppend = new StringBuilder().append("Read inline #").append(i).append(": ");
                List<T> list = this.mList;
                Log.d(str, sbAppend.append(list.get(list.size() - 1)).toString());
            }
            i++;
        }
        if (i >= N) {
            return;
        }
        IBinder retriever = p.readStrongBinder();
        int i2 = i;
        while (i2 < N) {
            if (DEBUG) {
                Log.d(TAG, "Reading more @" + i2 + " of " + N + ": retriever=" + retriever);
            }
            Parcel data = Parcel.obtain();
            Parcel reply = Parcel.obtain();
            data.writeInt(i2);
            try {
                retriever.transact(1, data, reply, 0);
                while (i2 < N && reply.readInt() != 0) {
                    T parcelable2 = readCreator(creator, reply, loader);
                    verifySameType(listElementClass, parcelable2.getClass());
                    this.mList.add(parcelable2);
                    if (DEBUG) {
                        Log.d(TAG, new StringBuilder().append("Read extra #").append(i2).append(": ").append(this.mList.get(r15.size() - 1)).toString());
                    }
                    i2++;
                }
                reply.recycle();
                data.recycle();
            } catch (RemoteException e) {
                Log.w(TAG, "Failure retrieving array; only received " + i2 + " of " + N, e);
                return;
            }
        }
    }

    private T readCreator(Parcelable.Creator<?> creator, Parcel parcel, ClassLoader classLoader) {
        if (creator instanceof Parcelable.ClassLoaderCreator) {
            return (T) ((Parcelable.ClassLoaderCreator) creator).createFromParcel(parcel, classLoader);
        }
        return (T) creator.createFromParcel(parcel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void verifySameType(Class<?> expected, Class<?> actual) {
        if (!actual.equals(expected)) {
            throw new IllegalArgumentException("Can't unparcel type " + (actual == null ? null : actual.getName()) + " in list of type " + (expected != null ? expected.getName() : null));
        }
    }

    public List<T> getList() {
        return this.mList;
    }

    public void setInlineCountLimit(int maxCount) {
        this.mInlineCountLimit = maxCount;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, final int flags) {
        final int N = this.mList.size();
        dest.writeInt(N);
        if (DEBUG) {
            Log.d(TAG, "Writing " + N + " items");
        }
        if (N > 0) {
            final Class<?> listElementClass = this.mList.get(0).getClass();
            writeParcelableCreator(this.mList.get(0), dest);
            int i = 0;
            while (i < N && i < this.mInlineCountLimit && dest.dataSize() < MAX_IPC_SIZE) {
                dest.writeInt(1);
                T parcelable = this.mList.get(i);
                verifySameType(listElementClass, parcelable.getClass());
                writeElement(parcelable, dest, flags);
                if (DEBUG) {
                    Log.d(TAG, "Wrote inline #" + i + ": " + this.mList.get(i));
                }
                i++;
            }
            if (i < N) {
                dest.writeInt(0);
                Binder retriever = new Binder() { // from class: com.android.modules.utils.BaseParceledListSlice.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // android.os.Binder
                    protected boolean onTransact(int code, Parcel data, Parcel reply, int flags2) throws RemoteException {
                        if (code != 1) {
                            return super.onTransact(code, data, reply, flags2);
                        }
                        int i2 = data.readInt();
                        if (BaseParceledListSlice.DEBUG) {
                            Log.d(BaseParceledListSlice.TAG, "Writing more @" + i2 + " of " + N);
                        }
                        while (i2 < N && reply.dataSize() < BaseParceledListSlice.MAX_IPC_SIZE) {
                            reply.writeInt(1);
                            Object obj = BaseParceledListSlice.this.mList.get(i2);
                            BaseParceledListSlice.verifySameType(listElementClass, obj.getClass());
                            BaseParceledListSlice.this.writeElement(obj, reply, flags);
                            if (BaseParceledListSlice.DEBUG) {
                                Log.d(BaseParceledListSlice.TAG, "Wrote extra #" + i2 + ": " + BaseParceledListSlice.this.mList.get(i2));
                            }
                            i2++;
                        }
                        if (i2 < N) {
                            if (BaseParceledListSlice.DEBUG) {
                                Log.d(BaseParceledListSlice.TAG, "Breaking @" + i2 + " of " + N);
                            }
                            reply.writeInt(0);
                        }
                        return true;
                    }
                };
                if (DEBUG) {
                    Log.d(TAG, "Breaking @" + i + " of " + N + ": retriever=" + retriever);
                }
                dest.writeStrongBinder(retriever);
            }
        }
    }
}
