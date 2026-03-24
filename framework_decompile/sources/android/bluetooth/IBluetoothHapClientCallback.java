package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothHapClientCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothHapClientCallback";

    void onPresetInfoChanged(BluetoothDevice bluetoothDevice, List<BluetoothHapPresetInfo> list, int i) throws RemoteException;

    void onPresetSelected(BluetoothDevice bluetoothDevice, int i, int i2) throws RemoteException;

    void onPresetSelectionFailed(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void onPresetSelectionForGroupFailed(int i, int i2) throws RemoteException;

    void onSetPresetNameFailed(BluetoothDevice bluetoothDevice, int i) throws RemoteException;

    void onSetPresetNameForGroupFailed(int i, int i2) throws RemoteException;

    public static class Default implements IBluetoothHapClientCallback {
        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelected(BluetoothDevice device, int presetIndex, int reasonCode) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelectionFailed(BluetoothDevice device, int statusCode) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetSelectionForGroupFailed(int hapGroupId, int statusCode) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onPresetInfoChanged(BluetoothDevice device, List<BluetoothHapPresetInfo> presetInfoList, int statusCode) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onSetPresetNameFailed(BluetoothDevice device, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHapClientCallback
        public void onSetPresetNameForGroupFailed(int hapGroupId, int status) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothHapClientCallback {
        static final int TRANSACTION_onPresetInfoChanged = 4;
        static final int TRANSACTION_onPresetSelected = 1;
        static final int TRANSACTION_onPresetSelectionFailed = 2;
        static final int TRANSACTION_onPresetSelectionForGroupFailed = 3;
        static final int TRANSACTION_onSetPresetNameFailed = 5;
        static final int TRANSACTION_onSetPresetNameForGroupFailed = 6;

        public Stub() {
            attachInterface(this, IBluetoothHapClientCallback.DESCRIPTOR);
        }

        public static IBluetoothHapClientCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothHapClientCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothHapClientCallback)) {
                return (IBluetoothHapClientCallback) iin;
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
                    return "onPresetSelected";
                case 2:
                    return "onPresetSelectionFailed";
                case 3:
                    return "onPresetSelectionForGroupFailed";
                case 4:
                    return "onPresetInfoChanged";
                case 5:
                    return "onSetPresetNameFailed";
                case 6:
                    return "onSetPresetNameForGroupFailed";
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
                data.enforceInterface(IBluetoothHapClientCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothHapClientCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            int _arg2 = data.readInt();
                            data.enforceNoDataAvail();
                            onPresetSelected(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            onPresetSelectionFailed(_arg02, _arg12);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg13 = data.readInt();
                            data.enforceNoDataAvail();
                            onPresetSelectionForGroupFailed(_arg03, _arg13);
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            List<BluetoothHapPresetInfo> _arg14 = data.createTypedArrayList(BluetoothHapPresetInfo.CREATOR);
                            int _arg22 = data.readInt();
                            data.enforceNoDataAvail();
                            onPresetInfoChanged(_arg04, _arg14, _arg22);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg15 = data.readInt();
                            data.enforceNoDataAvail();
                            onSetPresetNameFailed(_arg05, _arg15);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            int _arg16 = data.readInt();
                            data.enforceNoDataAvail();
                            onSetPresetNameForGroupFailed(_arg06, _arg16);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothHapClientCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothHapClientCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onPresetSelected(BluetoothDevice device, int presetIndex, int reasonCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(presetIndex);
                    _data.writeInt(reasonCode);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onPresetSelectionFailed(BluetoothDevice device, int statusCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(statusCode);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onPresetSelectionForGroupFailed(int hapGroupId, int statusCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeInt(hapGroupId);
                    _data.writeInt(statusCode);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onPresetInfoChanged(BluetoothDevice device, List<BluetoothHapPresetInfo> presetInfoList, int statusCode) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedList(presetInfoList);
                    _data.writeInt(statusCode);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onSetPresetNameFailed(BluetoothDevice device, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(status);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHapClientCallback
            public void onSetPresetNameForGroupFailed(int hapGroupId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothHapClientCallback.DESCRIPTOR);
                    _data.writeInt(hapGroupId);
                    _data.writeInt(status);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 5;
        }
    }
}
