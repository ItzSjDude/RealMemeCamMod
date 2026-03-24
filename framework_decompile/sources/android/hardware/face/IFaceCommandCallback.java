package android.hardware.face;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IFaceCommandCallback extends IInterface {
    public static final String DESCRIPTOR = "android.hardware.face.IFaceCommandCallback";

    void onFaceCmd(int i, byte[] bArr) throws RemoteException;

    public static class Default implements IFaceCommandCallback {
        @Override // android.hardware.face.IFaceCommandCallback
        public void onFaceCmd(int cmdId, byte[] result) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IFaceCommandCallback {
        static final int TRANSACTION_onFaceCmd = 1;

        public Stub() {
            attachInterface(this, IFaceCommandCallback.DESCRIPTOR);
        }

        public static IFaceCommandCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IFaceCommandCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IFaceCommandCallback)) {
                return (IFaceCommandCallback) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IFaceCommandCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IFaceCommandCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            byte[] _arg1 = data.createByteArray();
                            data.enforceNoDataAvail();
                            onFaceCmd(_arg0, _arg1);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IFaceCommandCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IFaceCommandCallback.DESCRIPTOR;
            }

            @Override // android.hardware.face.IFaceCommandCallback
            public void onFaceCmd(int cmdId, byte[] result) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IFaceCommandCallback.DESCRIPTOR);
                    _data.writeInt(cmdId);
                    _data.writeByteArray(result);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }
    }
}
