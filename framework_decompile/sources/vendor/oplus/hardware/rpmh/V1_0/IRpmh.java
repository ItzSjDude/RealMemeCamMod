package vendor.oplus.hardware.rpmh.V1_0;

import android.internal.hidl.base.V1_0.DebugInfo;
import android.internal.hidl.base.V1_0.IBase;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.NativeHandle;
import android.os.RemoteException;
import com.android.internal.midi.MidiConstants;
import com.android.net.module.util.NetworkStackConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes5.dex */
public interface IRpmh extends IBase {
    public static final String kInterfaceName = "vendor.oplus.hardware.rpmh@1.0::IRpmh";

    @FunctionalInterface
    public interface getApResumeReasonStatisticsCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getProcInfoCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getRpmMasterStatsCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getRpmStatsStatisticsCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getRpmhMasterStatsCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getRpmhStatsCallback {
        void onValues(int i, String str);
    }

    @FunctionalInterface
    public interface getWakeLockProfilerCallback {
        void onValues(int i, String str);
    }

    @Override // android.internal.hidl.base.V1_0.IBase, android.os.IHwInterface
    IHwBinder asBinder();

    @Override // android.internal.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    String getAllApResumeReasonStatistics() throws RemoteException;

    void getApResumeReasonStatistics(getApResumeReasonStatisticsCallback getapresumereasonstatisticscallback) throws RemoteException;

    String getApWakelockSource() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    String getKernelWakelockSource() throws RemoteException;

    String getOplusRpmMasterStats() throws RemoteException;

    String getOplusRpmStats() throws RemoteException;

    void getProcInfo(String str, getProcInfoCallback getprocinfocallback) throws RemoteException;

    String getRawRpmhMasterStats() throws RemoteException;

    String getRawSocSleepStats() throws RemoteException;

    void getRpmMasterStats(getRpmMasterStatsCallback getrpmmasterstatscallback) throws RemoteException;

    void getRpmStatsStatistics(getRpmStatsStatisticsCallback getrpmstatsstatisticscallback) throws RemoteException;

    void getRpmhMasterStats(getRpmhMasterStatsCallback getrpmhmasterstatscallback) throws RemoteException;

    void getRpmhStats(getRpmhStatsCallback getrpmhstatscallback) throws RemoteException;

    void getWakeLockProfiler(getWakeLockProfilerCallback getwakelockprofilercallback) throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    int triggerDumpType(int i) throws RemoteException;

    @Override // android.internal.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IRpmh asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IRpmh)) {
            return (IRpmh) iface;
        }
        IRpmh proxy = new Proxy(binder);
        try {
            Iterator<String> it = proxy.interfaceChain().iterator();
            while (it.hasNext()) {
                String descriptor = it.next();
                if (descriptor.equals(kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    static IRpmh castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IRpmh getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IRpmh getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    @Deprecated
    static IRpmh getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    @Deprecated
    static IRpmh getService() throws RemoteException {
        return getService("default");
    }

    public static final class Proxy implements IRpmh {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.oplus.hardware.rpmh@1.0::IRpmh]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getProcInfo(String path, getProcInfoCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            _hidl_request.writeString(path);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getRpmhStats(getRpmhStatsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getRpmhMasterStats(getRpmhMasterStatsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getRpmStatsStatistics(getRpmStatsStatisticsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getRpmMasterStats(getRpmMasterStatsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getWakeLockProfiler(getWakeLockProfilerCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public void getApResumeReasonStatistics(getApResumeReasonStatisticsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                String _hidl_out_result = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_ret, _hidl_out_result);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getOplusRpmStats() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getOplusRpmMasterStats() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getKernelWakelockSource() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getApWakelockSource() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getAllApResumeReasonStatistics() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getRawRpmhMasterStats() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public String getRawSocSleepStats() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_result = _hidl_reply.readString();
                return _hidl_out_result;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh
        public int triggerDumpType(int type) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IRpmh.kInterfaceName);
            _hidl_request.writeInt32(type);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_ret = _hidl_reply.readInt32();
                return _hidl_out_ret;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256067662, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<String> _hidl_out_descriptors = _hidl_reply.readStringVector();
                return _hidl_out_descriptors;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            _hidl_request.writeNativeHandle(fd);
            _hidl_request.writeStringVector(options);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256131655, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public String interfaceDescriptor() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256136003, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_descriptor = _hidl_reply.readString();
                return _hidl_out_descriptor;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256398152, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<byte[]> _hidl_out_hashchain = new ArrayList<>();
                HwBlob _hidl_blob = _hidl_reply.readBuffer(16L);
                int _hidl_vec_size = _hidl_blob.getInt32(8L);
                HwBlob childBlob = _hidl_reply.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
                _hidl_out_hashchain.clear();
                for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                    byte[] _hidl_vec_element = new byte[32];
                    long _hidl_array_offset_1 = _hidl_index_0 * 32;
                    childBlob.copyToInt8Array(_hidl_array_offset_1, _hidl_vec_element, 32);
                    _hidl_out_hashchain.add(_hidl_vec_element);
                }
                return _hidl_out_hashchain;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public void setHALInstrumentation() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256462420, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public void ping() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256921159, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257049926, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                DebugInfo _hidl_out_info = new DebugInfo();
                _hidl_out_info.readFromParcel(_hidl_reply);
                return _hidl_out_info;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257120595, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IRpmh {
        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase, android.os.IHwInterface
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IRpmh.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IRpmh.kInterfaceName;
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{44, -21, 70, 85, -91, -40, -27, 50, -44, -46, 19, -58, -1, -5, 108, 55, 121, -16, NetworkStackConstants.TCPHDR_URG, 101, -63, -75, -106, 5, 40, -124, -68, -120, -116, -98, -122, -8}, new byte[]{-20, 127, -41, -98, MidiConstants.STATUS_CHANNEL_PRESSURE, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, MidiConstants.STATUS_SONG_SELECT, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.os.IHwBinder, android.hardware.cas.V1_0.ICas, android.internal.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh, android.internal.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.os.IHwBinder, android.hardware.cas.V1_0.ICas, android.internal.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        @Override // android.os.IHwBinder
        public IHwInterface queryLocalInterface(String descriptor) {
            if (IRpmh.kInterfaceName.equals(descriptor)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String serviceName) throws RemoteException {
            registerService(serviceName);
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        @Override // android.os.HwBinder
        public void onTransact(int _hidl_code, HwParcel _hidl_request, final HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            switch (_hidl_code) {
                case 1:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String path = _hidl_request.readString();
                    getProcInfo(path, new getProcInfoCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.1
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getProcInfoCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 2:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getRpmhStats(new getRpmhStatsCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.2
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getRpmhStatsCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 3:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getRpmhMasterStats(new getRpmhMasterStatsCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.3
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getRpmhMasterStatsCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 4:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getRpmStatsStatistics(new getRpmStatsStatisticsCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.4
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getRpmStatsStatisticsCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 5:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getRpmMasterStats(new getRpmMasterStatsCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.5
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getRpmMasterStatsCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 6:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getWakeLockProfiler(new getWakeLockProfilerCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.6
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getWakeLockProfilerCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 7:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    getApResumeReasonStatistics(new getApResumeReasonStatisticsCallback() { // from class: vendor.oplus.hardware.rpmh.V1_0.IRpmh.Stub.7
                        @Override // vendor.oplus.hardware.rpmh.V1_0.IRpmh.getApResumeReasonStatisticsCallback
                        public void onValues(int ret, String result) {
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeInt32(ret);
                            _hidl_reply.writeString(result);
                            _hidl_reply.send();
                        }
                    });
                    return;
                case 8:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result = getOplusRpmStats();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result);
                    _hidl_reply.send();
                    return;
                case 9:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result2 = getOplusRpmMasterStats();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result2);
                    _hidl_reply.send();
                    return;
                case 10:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result3 = getKernelWakelockSource();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result3);
                    _hidl_reply.send();
                    return;
                case 11:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result4 = getApWakelockSource();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result4);
                    _hidl_reply.send();
                    return;
                case 12:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result5 = getAllApResumeReasonStatistics();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result5);
                    _hidl_reply.send();
                    return;
                case 13:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result6 = getRawRpmhMasterStats();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result6);
                    _hidl_reply.send();
                    return;
                case 14:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    String _hidl_out_result7 = getRawSocSleepStats();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_result7);
                    _hidl_reply.send();
                    return;
                case 15:
                    _hidl_request.enforceInterface(IRpmh.kInterfaceName);
                    int type = _hidl_request.readInt32();
                    int _hidl_out_ret = triggerDumpType(type);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeInt32(_hidl_out_ret);
                    _hidl_reply.send();
                    return;
                case 256067662:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    ArrayList<String> _hidl_out_descriptors = interfaceChain();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeStringVector(_hidl_out_descriptors);
                    _hidl_reply.send();
                    return;
                case 256131655:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    NativeHandle fd = _hidl_request.readNativeHandle();
                    ArrayList<String> options = _hidl_request.readStringVector();
                    debug(fd, options);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.send();
                    return;
                case 256136003:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    String _hidl_out_descriptor = interfaceDescriptor();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_descriptor);
                    _hidl_reply.send();
                    return;
                case 256398152:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                    _hidl_reply.writeStatus(0);
                    HwBlob _hidl_blob = new HwBlob(16);
                    int _hidl_vec_size = _hidl_out_hashchain.size();
                    _hidl_blob.putInt32(8L, _hidl_vec_size);
                    _hidl_blob.putBool(12L, false);
                    HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                    for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                        long _hidl_array_offset_1 = _hidl_index_0 * 32;
                        byte[] _hidl_array_item_1 = _hidl_out_hashchain.get(_hidl_index_0);
                        if (_hidl_array_item_1 == null || _hidl_array_item_1.length != 32) {
                            throw new IllegalArgumentException("Array element is not of the expected length");
                        }
                        childBlob.putInt8Array(_hidl_array_offset_1, _hidl_array_item_1);
                    }
                    _hidl_blob.putBlob(0L, childBlob);
                    _hidl_reply.writeBuffer(_hidl_blob);
                    _hidl_reply.send();
                    return;
                case 256462420:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    setHALInstrumentation();
                    return;
                case 256660548:
                default:
                    return;
                case 256921159:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    ping();
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.send();
                    return;
                case 257049926:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    DebugInfo _hidl_out_info = getDebugInfo();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_info.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 257120595:
                    _hidl_request.enforceInterface(IBase.kInterfaceName);
                    notifySyspropsChanged();
                    return;
            }
        }
    }
}
