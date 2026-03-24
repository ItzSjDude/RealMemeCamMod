package android.bluetooth;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IBluetoothLeBroadcastCallback extends IInterface {
    public static final String DESCRIPTOR = "android.bluetooth.IBluetoothLeBroadcastCallback";

    void onBroadcastMetadataChanged(int i, BluetoothLeBroadcastMetadata bluetoothLeBroadcastMetadata) throws RemoteException;

    void onBroadcastStartFailed(int i) throws RemoteException;

    void onBroadcastStarted(int i, int i2) throws RemoteException;

    void onBroadcastStopFailed(int i) throws RemoteException;

    void onBroadcastStopped(int i, int i2) throws RemoteException;

    void onBroadcastUpdateFailed(int i, int i2) throws RemoteException;

    void onBroadcastUpdated(int i, int i2) throws RemoteException;

    void onPlaybackStarted(int i, int i2) throws RemoteException;

    void onPlaybackStopped(int i, int i2) throws RemoteException;

    public static class Default implements IBluetoothLeBroadcastCallback {
        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStarted(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStartFailed(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStopped(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastStopFailed(int reason) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onPlaybackStarted(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onPlaybackStopped(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastUpdated(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastUpdateFailed(int reason, int broadcastId) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothLeBroadcastCallback
        public void onBroadcastMetadataChanged(int broadcastId, BluetoothLeBroadcastMetadata metadata) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothLeBroadcastCallback {
        static final int TRANSACTION_onBroadcastMetadataChanged = 9;
        static final int TRANSACTION_onBroadcastStartFailed = 2;
        static final int TRANSACTION_onBroadcastStarted = 1;
        static final int TRANSACTION_onBroadcastStopFailed = 4;
        static final int TRANSACTION_onBroadcastStopped = 3;
        static final int TRANSACTION_onBroadcastUpdateFailed = 8;
        static final int TRANSACTION_onBroadcastUpdated = 7;
        static final int TRANSACTION_onPlaybackStarted = 5;
        static final int TRANSACTION_onPlaybackStopped = 6;

        public Stub() {
            attachInterface(this, IBluetoothLeBroadcastCallback.DESCRIPTOR);
        }

        public static IBluetoothLeBroadcastCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(IBluetoothLeBroadcastCallback.DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothLeBroadcastCallback)) {
                return (IBluetoothLeBroadcastCallback) iin;
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
                    return "onBroadcastStarted";
                case 2:
                    return "onBroadcastStartFailed";
                case 3:
                    return "onBroadcastStopped";
                case 4:
                    return "onBroadcastStopFailed";
                case 5:
                    return "onPlaybackStarted";
                case 6:
                    return "onPlaybackStopped";
                case 7:
                    return "onBroadcastUpdated";
                case 8:
                    return "onBroadcastUpdateFailed";
                case 9:
                    return "onBroadcastMetadataChanged";
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
                data.enforceInterface(IBluetoothLeBroadcastCallback.DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            int _arg0 = data.readInt();
                            int _arg1 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastStarted(_arg0, _arg1);
                            return true;
                        case 2:
                            int _arg02 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastStartFailed(_arg02);
                            return true;
                        case 3:
                            int _arg03 = data.readInt();
                            int _arg12 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastStopped(_arg03, _arg12);
                            return true;
                        case 4:
                            int _arg04 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastStopFailed(_arg04);
                            return true;
                        case 5:
                            int _arg05 = data.readInt();
                            int _arg13 = data.readInt();
                            data.enforceNoDataAvail();
                            onPlaybackStarted(_arg05, _arg13);
                            return true;
                        case 6:
                            int _arg06 = data.readInt();
                            int _arg14 = data.readInt();
                            data.enforceNoDataAvail();
                            onPlaybackStopped(_arg06, _arg14);
                            return true;
                        case 7:
                            int _arg07 = data.readInt();
                            int _arg15 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastUpdated(_arg07, _arg15);
                            return true;
                        case 8:
                            int _arg08 = data.readInt();
                            int _arg16 = data.readInt();
                            data.enforceNoDataAvail();
                            onBroadcastUpdateFailed(_arg08, _arg16);
                            return true;
                        case 9:
                            int _arg09 = data.readInt();
                            BluetoothLeBroadcastMetadata _arg17 = (BluetoothLeBroadcastMetadata) data.readTypedObject(BluetoothLeBroadcastMetadata.CREATOR);
                            data.enforceNoDataAvail();
                            onBroadcastMetadataChanged(_arg09, _arg17);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothLeBroadcastCallback {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IBluetoothLeBroadcastCallback.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastStarted(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastStartFailed(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastStopped(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastStopFailed(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onPlaybackStarted(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onPlaybackStopped(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastUpdated(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastUpdateFailed(int reason, int broadcastId) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(reason);
                    _data.writeInt(broadcastId);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothLeBroadcastCallback
            public void onBroadcastMetadataChanged(int broadcastId, BluetoothLeBroadcastMetadata metadata) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(IBluetoothLeBroadcastCallback.DESCRIPTOR);
                    _data.writeInt(broadcastId);
                    _data.writeTypedObject(metadata, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 8;
        }
    }
}
