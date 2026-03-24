package android.bluetooth;

import android.content.AttributionSource;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothMcpServiceManager extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothMcpServiceManager";

    void setDeviceAuthorized(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource) throws RemoteException;

    public static class Default implements IBluetoothMcpServiceManager {
        @Override // android.bluetooth.IBluetoothMcpServiceManager
        public void setDeviceAuthorized(BluetoothDevice device, boolean isAuthorized, AttributionSource source) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothMcpServiceManager {
        static final int TRANSACTION_setDeviceAuthorized = 1;

        public Stub() {
            attachInterface(this, IBluetoothMcpServiceManager.DESCRIPTOR);
        }

        public static IBluetoothMcpServiceManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothMcpServiceManager.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothMcpServiceManager)) {
                return (IBluetoothMcpServiceManager) iin;
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
                    return "setDeviceAuthorized";
                default:
                    return null;
            }
        }

        @Override // android.os.Binder
        public String getTransactionName(int transactionCode) {
            return getDefaultTransactionName(transactionCode);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(IBluetoothMcpServiceManager.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothMcpServiceManager.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg1 = data.readBoolean();
                            AttributionSource _arg2 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            data.enforceNoDataAvail();
                            setDeviceAuthorized(_arg0, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothMcpServiceManager {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothMcpServiceManager.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothMcpServiceManager
            public void setDeviceAuthorized(BluetoothDevice device, boolean isAuthorized, AttributionSource source) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothMcpServiceManager.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(isAuthorized);
                    _data.writeTypedObject(source, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 0;
        }
    }
}
