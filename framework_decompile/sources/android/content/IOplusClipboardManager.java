package android.content;

import android.content.IOplusClipboardManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.IntConsumer;
import java.util.stream.IntStream;

/* loaded from: classes.dex */
public interface IOplusClipboardManager extends IInterface {
    public static final String DESCRIPTOR = "android.content.IOplusClipboardManager";

    Map<String, String> getUserPathInfo() throws RemoteException;

    ClipData getUserPrimaryClip(String str, int i) throws RemoteException;

    public static class Default implements IOplusClipboardManager {
        @Override // android.content.IOplusClipboardManager
        public ClipData getUserPrimaryClip(String pkg, int userId) throws RemoteException {
            return null;
        }

        @Override // android.content.IOplusClipboardManager
        public Map<String, String> getUserPathInfo() throws RemoteException {
            return null;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IOplusClipboardManager {
        static final int TRANSACTION_getUserPathInfo = 2;
        static final int TRANSACTION_getUserPrimaryClip = 1;

        public Stub() {
            attachInterface(this, IOplusClipboardManager.DESCRIPTOR);
        }

        public static IOplusClipboardManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IOplusClipboardManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IOplusClipboardManager)) {
                return (IOplusClipboardManager) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public static String getDefaultTransactionName(int transactionCode) {
            switch (transactionCode) {
                case 1:
                    return "getUserPrimaryClip";
                case 2:
                    return "getUserPathInfo";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, final Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IOplusClipboardManager.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IOplusClipboardManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            String _arg0 = data.readString();
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            ClipData _result = getUserPrimaryClip(_arg0, _arg1);
                            reply.writeNoException();
                            reply.writeTypedObject(_result, 1);
                            return true;
                        case 2:
                            Map<String, String> _result2 = getUserPathInfo();
                            reply.writeNoException();
                            if (_result2 == null) {
                                reply.writeInt(-1);
                            } else {
                                reply.writeInt(_result2.size());
                                _result2.forEach(new BiConsumer() { // from class: android.content.IOplusClipboardManager$Stub$$ExternalSyntheticLambda0
                                    @Override // java.util.function.BiConsumer
                                    public final void accept(Object obj, Object obj2) {
                                        IOplusClipboardManager.Stub.lambda$onTransact$0(reply, (String) obj, (String) obj2);
                                    }
                                });
                            }
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        static /* synthetic */ void lambda$onTransact$0(Parcel reply, String k, String v) {
            reply.writeString(k);
            reply.writeString(v);
        }

        /* JADX INFO: Access modifiers changed from: private */
        static class Proxy implements IOplusClipboardManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IOplusClipboardManager.DESCRIPTOR;
            }

            @Override // android.content.IOplusClipboardManager
            public ClipData getUserPrimaryClip(String pkg, int userId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusClipboardManager.DESCRIPTOR);
                    _data.writeString(pkg);
                    _data.writeInt(userId);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                    ClipData _result = (ClipData) _reply.readTypedObject(ClipData.CREATOR);
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.content.IOplusClipboardManager
            public Map<String, String> getUserPathInfo() throws RemoteException {
                Parcel _data = Parcel.obtain();
                final Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IOplusClipboardManager.DESCRIPTOR);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                    int N = _reply.readInt();
                    final Map<String, String> _result = N < 0 ? null : new HashMap<>();
                    IntStream.range(0, N).forEach(new IntConsumer() { // from class: android.content.IOplusClipboardManager$Stub$Proxy$$ExternalSyntheticLambda0
                        @Override // java.util.function.IntConsumer
                        public final void accept(int i) {
                            IOplusClipboardManager.Stub.Proxy.lambda$getUserPathInfo$0(_reply, _result, i);
                        }
                    });
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            static /* synthetic */ void lambda$getUserPathInfo$0(Parcel _reply, Map _result, int i) {
                String k = _reply.readString();
                String v = _reply.readString();
                _result.put(k, v);
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 1;
        }
    }
}
