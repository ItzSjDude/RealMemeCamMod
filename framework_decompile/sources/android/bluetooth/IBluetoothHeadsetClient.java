package android.bluetooth;

import android.content.AttributionSource;
import android.media.MediaMetrics;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.modules.utils.SynchronousResultReceiver;

/* loaded from: classes.dex */
public interface IBluetoothHeadsetClient extends IInterface {
    void acceptCall(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void connect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void connectAudio(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void dial(BluetoothDevice bluetoothDevice, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnect(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void disconnectAudio(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void enterPrivateMode(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void explicitCallTransfer(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getAudioRouteAllowed(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getAudioState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionPolicy(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getConnectionState(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getCurrentAgEvents(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getCurrentAgFeatures(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getCurrentCalls(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getDevicesMatchingConnectionStates(int[] iArr, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void getLastVoiceTagNumber(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void holdCall(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void rejectCall(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void sendDTMF(BluetoothDevice bluetoothDevice, byte b, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void sendVendorAtCommand(BluetoothDevice bluetoothDevice, int i, String str, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setAudioRouteAllowed(BluetoothDevice bluetoothDevice, boolean z, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void setConnectionPolicy(BluetoothDevice bluetoothDevice, int i, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void startVoiceRecognition(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void stopVoiceRecognition(BluetoothDevice bluetoothDevice, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    void terminateCall(BluetoothDevice bluetoothDevice, BluetoothHeadsetClientCall bluetoothHeadsetClientCall, AttributionSource attributionSource, SynchronousResultReceiver synchronousResultReceiver) throws RemoteException;

    public static class Default implements IBluetoothHeadsetClient {
        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void startVoiceRecognition(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void stopVoiceRecognition(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getCurrentCalls(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getCurrentAgEvents(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void acceptCall(BluetoothDevice device, int flag, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void holdCall(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void rejectCall(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void terminateCall(BluetoothDevice device, BluetoothHeadsetClientCall call, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void enterPrivateMode(BluetoothDevice device, int index, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void explicitCallTransfer(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void dial(BluetoothDevice device, String number, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void sendDTMF(BluetoothDevice device, byte code, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getLastVoiceTagNumber(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getAudioState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void connectAudio(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void disconnectAudio(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void setAudioRouteAllowed(BluetoothDevice device, boolean allowed, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getAudioRouteAllowed(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void sendVendorAtCommand(BluetoothDevice device, int vendorId, String atCommand, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.bluetooth.IBluetoothHeadsetClient
        public void getCurrentAgFeatures(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothHeadsetClient {
        public static final String DESCRIPTOR = "android.bluetooth.IBluetoothHeadsetClient";
        static final int TRANSACTION_acceptCall = 12;
        static final int TRANSACTION_connect = 1;
        static final int TRANSACTION_connectAudio = 22;
        static final int TRANSACTION_dial = 18;
        static final int TRANSACTION_disconnect = 2;
        static final int TRANSACTION_disconnectAudio = 23;
        static final int TRANSACTION_enterPrivateMode = 16;
        static final int TRANSACTION_explicitCallTransfer = 17;
        static final int TRANSACTION_getAudioRouteAllowed = 25;
        static final int TRANSACTION_getAudioState = 21;
        static final int TRANSACTION_getConnectedDevices = 3;
        static final int TRANSACTION_getConnectionPolicy = 7;
        static final int TRANSACTION_getConnectionState = 5;
        static final int TRANSACTION_getCurrentAgEvents = 11;
        static final int TRANSACTION_getCurrentAgFeatures = 27;
        static final int TRANSACTION_getCurrentCalls = 10;
        static final int TRANSACTION_getDevicesMatchingConnectionStates = 4;
        static final int TRANSACTION_getLastVoiceTagNumber = 20;
        static final int TRANSACTION_holdCall = 13;
        static final int TRANSACTION_rejectCall = 14;
        static final int TRANSACTION_sendDTMF = 19;
        static final int TRANSACTION_sendVendorAtCommand = 26;
        static final int TRANSACTION_setAudioRouteAllowed = 24;
        static final int TRANSACTION_setConnectionPolicy = 6;
        static final int TRANSACTION_startVoiceRecognition = 8;
        static final int TRANSACTION_stopVoiceRecognition = 9;
        static final int TRANSACTION_terminateCall = 15;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothHeadsetClient asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IBluetoothHeadsetClient)) {
                return (IBluetoothHeadsetClient) iin;
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
                    return MediaMetrics.Value.CONNECT;
                case 2:
                    return MediaMetrics.Value.DISCONNECT;
                case 3:
                    return "getConnectedDevices";
                case 4:
                    return "getDevicesMatchingConnectionStates";
                case 5:
                    return "getConnectionState";
                case 6:
                    return "setConnectionPolicy";
                case 7:
                    return "getConnectionPolicy";
                case 8:
                    return "startVoiceRecognition";
                case 9:
                    return "stopVoiceRecognition";
                case 10:
                    return "getCurrentCalls";
                case 11:
                    return "getCurrentAgEvents";
                case 12:
                    return "acceptCall";
                case 13:
                    return "holdCall";
                case 14:
                    return "rejectCall";
                case 15:
                    return "terminateCall";
                case 16:
                    return "enterPrivateMode";
                case 17:
                    return "explicitCallTransfer";
                case 18:
                    return "dial";
                case 19:
                    return "sendDTMF";
                case 20:
                    return "getLastVoiceTagNumber";
                case 21:
                    return "getAudioState";
                case 22:
                    return "connectAudio";
                case 23:
                    return "disconnectAudio";
                case 24:
                    return "setAudioRouteAllowed";
                case 25:
                    return "getAudioRouteAllowed";
                case 26:
                    return "sendVendorAtCommand";
                case 27:
                    return "getCurrentAgFeatures";
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
                data.enforceInterface(DESCRIPTOR);
            }
            switch (code) {
                case IBinder.INTERFACE_TRANSACTION /* 1598968902 */:
                    reply.writeString(DESCRIPTOR);
                    return true;
                default:
                    switch (code) {
                        case 1:
                            BluetoothDevice _arg0 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg1 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg2 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connect(_arg0, _arg1, _arg2);
                            return true;
                        case 2:
                            BluetoothDevice _arg02 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg12 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg22 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnect(_arg02, _arg12, _arg22);
                            return true;
                        case 3:
                            AttributionSource _arg03 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg13 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectedDevices(_arg03, _arg13);
                            return true;
                        case 4:
                            int[] _arg04 = data.createIntArray();
                            AttributionSource _arg14 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg23 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getDevicesMatchingConnectionStates(_arg04, _arg14, _arg23);
                            return true;
                        case 5:
                            BluetoothDevice _arg05 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg15 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg24 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionState(_arg05, _arg15, _arg24);
                            return true;
                        case 6:
                            BluetoothDevice _arg06 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg16 = data.readInt();
                            AttributionSource _arg25 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg3 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setConnectionPolicy(_arg06, _arg16, _arg25, _arg3);
                            return true;
                        case 7:
                            BluetoothDevice _arg07 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg17 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg26 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getConnectionPolicy(_arg07, _arg17, _arg26);
                            return true;
                        case 8:
                            BluetoothDevice _arg08 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg18 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg27 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            startVoiceRecognition(_arg08, _arg18, _arg27);
                            return true;
                        case 9:
                            BluetoothDevice _arg09 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg19 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg28 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            stopVoiceRecognition(_arg09, _arg19, _arg28);
                            return true;
                        case 10:
                            BluetoothDevice _arg010 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg110 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg29 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getCurrentCalls(_arg010, _arg110, _arg29);
                            return true;
                        case 11:
                            BluetoothDevice _arg011 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg111 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg210 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getCurrentAgEvents(_arg011, _arg111, _arg210);
                            return true;
                        case 12:
                            BluetoothDevice _arg012 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg112 = data.readInt();
                            AttributionSource _arg211 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg32 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            acceptCall(_arg012, _arg112, _arg211, _arg32);
                            return true;
                        case 13:
                            BluetoothDevice _arg013 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg113 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg212 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            holdCall(_arg013, _arg113, _arg212);
                            return true;
                        case 14:
                            BluetoothDevice _arg014 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg114 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg213 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            rejectCall(_arg014, _arg114, _arg213);
                            return true;
                        case 15:
                            BluetoothDevice _arg015 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            BluetoothHeadsetClientCall _arg115 = (BluetoothHeadsetClientCall) data.readTypedObject(BluetoothHeadsetClientCall.CREATOR);
                            AttributionSource _arg214 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg33 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            terminateCall(_arg015, _arg115, _arg214, _arg33);
                            return true;
                        case 16:
                            BluetoothDevice _arg016 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg116 = data.readInt();
                            AttributionSource _arg215 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg34 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            enterPrivateMode(_arg016, _arg116, _arg215, _arg34);
                            return true;
                        case 17:
                            BluetoothDevice _arg017 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg117 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg216 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            explicitCallTransfer(_arg017, _arg117, _arg216);
                            return true;
                        case 18:
                            BluetoothDevice _arg018 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            String _arg118 = data.readString();
                            AttributionSource _arg217 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg35 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            dial(_arg018, _arg118, _arg217, _arg35);
                            return true;
                        case 19:
                            BluetoothDevice _arg019 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            byte _arg119 = data.readByte();
                            AttributionSource _arg218 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg36 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            sendDTMF(_arg019, _arg119, _arg218, _arg36);
                            return true;
                        case 20:
                            BluetoothDevice _arg020 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg120 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg219 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getLastVoiceTagNumber(_arg020, _arg120, _arg219);
                            return true;
                        case 21:
                            BluetoothDevice _arg021 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg121 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg220 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAudioState(_arg021, _arg121, _arg220);
                            return true;
                        case 22:
                            BluetoothDevice _arg022 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg122 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg221 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            connectAudio(_arg022, _arg122, _arg221);
                            return true;
                        case 23:
                            BluetoothDevice _arg023 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg123 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg222 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            disconnectAudio(_arg023, _arg123, _arg222);
                            return true;
                        case 24:
                            BluetoothDevice _arg024 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            boolean _arg124 = data.readBoolean();
                            AttributionSource _arg223 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg37 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            setAudioRouteAllowed(_arg024, _arg124, _arg223, _arg37);
                            return true;
                        case 25:
                            BluetoothDevice _arg025 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg125 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg224 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getAudioRouteAllowed(_arg025, _arg125, _arg224);
                            return true;
                        case 26:
                            BluetoothDevice _arg026 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            int _arg126 = data.readInt();
                            String _arg225 = data.readString();
                            AttributionSource _arg38 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg4 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            sendVendorAtCommand(_arg026, _arg126, _arg225, _arg38, _arg4);
                            return true;
                        case 27:
                            BluetoothDevice _arg027 = (BluetoothDevice) data.readTypedObject(BluetoothDevice.CREATOR);
                            AttributionSource _arg127 = (AttributionSource) data.readTypedObject(AttributionSource.CREATOR);
                            SynchronousResultReceiver _arg226 = (SynchronousResultReceiver) data.readTypedObject(SynchronousResultReceiver.CREATOR);
                            data.enforceNoDataAvail();
                            getCurrentAgFeatures(_arg027, _arg127, _arg226);
                            return true;
                        default:
                            return super.onTransact(code, data, reply, flags);
                    }
            }
        }

        private static class Proxy implements IBluetoothHeadsetClient {
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void connect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(1, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void disconnect(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(2, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getConnectedDevices(AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(3, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getDevicesMatchingConnectionStates(int[] states, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeIntArray(states);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(4, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getConnectionState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(5, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void setConnectionPolicy(BluetoothDevice device, int connectionPolicy, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(connectionPolicy);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(6, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getConnectionPolicy(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(7, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void startVoiceRecognition(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(8, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void stopVoiceRecognition(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(9, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getCurrentCalls(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(10, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getCurrentAgEvents(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(11, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void acceptCall(BluetoothDevice device, int flag, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(flag);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(12, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void holdCall(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(13, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void rejectCall(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(14, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void terminateCall(BluetoothDevice device, BluetoothHeadsetClientCall call, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(call, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(15, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void enterPrivateMode(BluetoothDevice device, int index, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(index);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(16, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void explicitCallTransfer(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(17, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void dial(BluetoothDevice device, String number, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeString(number);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(18, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void sendDTMF(BluetoothDevice device, byte code, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeByte(code);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(19, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getLastVoiceTagNumber(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(20, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getAudioState(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(21, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void connectAudio(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(22, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void disconnectAudio(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(23, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void setAudioRouteAllowed(BluetoothDevice device, boolean allowed, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeBoolean(allowed);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(24, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getAudioRouteAllowed(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(25, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void sendVendorAtCommand(BluetoothDevice device, int vendorId, String atCommand, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeInt(vendorId);
                    _data.writeString(atCommand);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(26, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.bluetooth.IBluetoothHeadsetClient
            public void getCurrentAgFeatures(BluetoothDevice device, AttributionSource attributionSource, SynchronousResultReceiver receiver) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeTypedObject(device, 0);
                    _data.writeTypedObject(attributionSource, 0);
                    _data.writeTypedObject(receiver, 0);
                    this.mRemote.transact(27, _data, null, 1);
                } finally {
                    _data.recycle();
                }
            }
        }

        @Override // android.os.Binder
        public int getMaxTransactionId() {
            return 26;
        }
    }
}
