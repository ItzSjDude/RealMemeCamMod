package android.bluetooth;

import android.bluetooth.le.ScanResult;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public interface IBleBroadcastAudioScanAssistCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBleBroadcastAudioScanAssistCallback";

    void onBleBroadcastAudioSourceAdded(BluetoothDevice bluetoothDevice, byte b, int i) throws RemoteException;

    void onBleBroadcastAudioSourceRemoved(BluetoothDevice bluetoothDevice, byte b, int i) throws RemoteException;

    void onBleBroadcastAudioSourceSelected(BluetoothDevice bluetoothDevice, int i, List<BleBroadcastSourceChannel> list) throws RemoteException;

    void onBleBroadcastAudioSourceUpdated(BluetoothDevice bluetoothDevice, byte b, int i) throws RemoteException;

    void onBleBroadcastPinUpdated(BluetoothDevice bluetoothDevice, byte b, int i) throws RemoteException;

    void onBleBroadcastSourceFound(ScanResult scanResult) throws RemoteException;

    public static class Default implements IBleBroadcastAudioScanAssistCallback {
        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastSourceFound(ScanResult scanres) throws RemoteException {
        }

        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastAudioSourceSelected(BluetoothDevice device, int status, List<BleBroadcastSourceChannel> broadcastSourceChannels) throws RemoteException {
        }

        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastAudioSourceAdded(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastAudioSourceUpdated(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastPinUpdated(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
        }

        @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
        public void onBleBroadcastAudioSourceRemoved(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBleBroadcastAudioScanAssistCallback {
        static final int TRANSACTION_onBleBroadcastAudioSourceAdded = 3;
        static final int TRANSACTION_onBleBroadcastAudioSourceRemoved = 6;
        static final int TRANSACTION_onBleBroadcastAudioSourceSelected = 2;
        static final int TRANSACTION_onBleBroadcastAudioSourceUpdated = 4;
        static final int TRANSACTION_onBleBroadcastPinUpdated = 5;
        static final int TRANSACTION_onBleBroadcastSourceFound = 1;

        public Stub() {
            attachInterface(this, IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
        }

        public static IBleBroadcastAudioScanAssistCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBleBroadcastAudioScanAssistCallback)) {
                return (IBleBroadcastAudioScanAssistCallback) iin;
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
                    return "onBleBroadcastSourceFound";
                case 2:
                    return "onBleBroadcastAudioSourceSelected";
                case 3:
                    return "onBleBroadcastAudioSourceAdded";
                case 4:
                    return "onBleBroadcastAudioSourceUpdated";
                case 5:
                    return "onBleBroadcastPinUpdated";
                case 6:
                    return "onBleBroadcastAudioSourceRemoved";
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
                data.enforceInterface(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            ScanResult _arg0 = (ScanResult) data.readTypedObject(ScanResult.CREATOR);
                            data.enforceNoDataAvail();
                            onBleBroadcastSourceFound(_arg0);
                            reply.writeNoException();
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg1 = data.readInt();
                            List<BleBroadcastSourceChannel> _arg2 = data.createTypedArrayList(BleBroadcastSourceChannel.CREATOR);
                            data.enforceNoDataAvail();
                            onBleBroadcastAudioSourceSelected(_arg02, _arg1, _arg2);
                            reply.writeNoException();
                            return true;
                        case 3:
                            BluetoothDevice _arg03 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg12 = data.readByte();
                            int _arg22 = data.readInt();
                            data.enforceNoDataAvail();
                            onBleBroadcastAudioSourceAdded(_arg03, _arg12, _arg22);
                            reply.writeNoException();
                            return true;
                        case 4:
                            BluetoothDevice _arg04 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg13 = data.readByte();
                            int _arg23 = data.readInt();
                            data.enforceNoDataAvail();
                            onBleBroadcastAudioSourceUpdated(_arg04, _arg13, _arg23);
                            reply.writeNoException();
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg14 = data.readByte();
                            int _arg24 = data.readInt();
                            data.enforceNoDataAvail();
                            onBleBroadcastPinUpdated(_arg05, _arg14, _arg24);
                            reply.writeNoException();
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg15 = data.readByte();
                            int _arg25 = data.readInt();
                            data.enforceNoDataAvail();
                            onBleBroadcastAudioSourceRemoved(_arg06, _arg15, _arg25);
                            reply.writeNoException();
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBleBroadcastAudioScanAssistCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBleBroadcastAudioScanAssistCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastSourceFound(ScanResult scanres) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(scanres, 0);
                    this.mRemote.transact(1, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastAudioSourceSelected(BluetoothDevice device, int status, List<BleBroadcastSourceChannel> broadcastSourceChannels) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(status);
                    _data.writeTypedList(broadcastSourceChannels);
                    this.mRemote.transact(2, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastAudioSourceAdded(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(rcvr, 0);
                    _data.writeByte(srcId);
                    _data.writeInt(status);
                    this.mRemote.transact(3, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastAudioSourceUpdated(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(rcvr, 0);
                    _data.writeByte(srcId);
                    _data.writeInt(status);
                    this.mRemote.transact(4, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastPinUpdated(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(rcvr, 0);
                    _data.writeByte(srcId);
                    _data.writeInt(status);
                    this.mRemote.transact(5, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBleBroadcastAudioScanAssistCallback
            public void onBleBroadcastAudioSourceRemoved(BluetoothDevice rcvr, byte srcId, int status) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBleBroadcastAudioScanAssistCallback.DESCRIPTOR);
                    _data.writeTypedObject(rcvr, 0);
                    _data.writeByte(srcId);
                    _data.writeInt(status);
                    this.mRemote.transact(6, _data, _reply, 0);
                    _reply.readException();
                } finally {
                    _reply.recycle();
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
