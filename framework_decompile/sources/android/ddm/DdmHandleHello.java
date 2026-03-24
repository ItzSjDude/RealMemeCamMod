package android.ddm;

import android.ddm.DdmHandleAppName;
import android.inputmethodservice.navigationbar.NavigationBarInflaterView;
import android.os.Debug;
import android.os.Process;
import android.os.UserHandle;
import dalvik.system.VMRuntime;
import java.nio.ByteBuffer;
import org.apache.harmony.dalvik.ddmc.Chunk;
import org.apache.harmony.dalvik.ddmc.ChunkHandler;
import org.apache.harmony.dalvik.ddmc.DdmServer;

/* loaded from: classes.dex */
public class DdmHandleHello extends DdmHandle {
    private static final int CLIENT_PROTOCOL_VERSION = 1;
    public static final int CHUNK_HELO = ChunkHandler.type("HELO");
    public static final int CHUNK_WAIT = ChunkHandler.type("WAIT");
    public static final int CHUNK_FEAT = ChunkHandler.type("FEAT");
    private static DdmHandleHello mInstance = new DdmHandleHello();
    private static final String[] FRAMEWORK_FEATURES = {"opengl-tracing", "view-hierarchy"};

    private DdmHandleHello() {
    }

    public static void register() {
        DdmServer.registerHandler(CHUNK_HELO, mInstance);
        DdmServer.registerHandler(CHUNK_FEAT, mInstance);
    }

    public void onConnected() {
    }

    public void onDisconnected() {
    }

    public Chunk handleChunk(Chunk request) {
        int type = request.type;
        if (type == CHUNK_HELO) {
            return handleHELO(request);
        }
        if (type == CHUNK_FEAT) {
            return handleFEAT(request);
        }
        throw new RuntimeException("Unknown packet " + name(type));
    }

    private Chunk handleHELO(Chunk chunk) {
        wrapChunk(chunk).getInt();
        String str = System.getProperty("java.vm.name", "?") + " v" + System.getProperty("java.vm.version", "?");
        DdmHandleAppName.Names names = DdmHandleAppName.getNames();
        String appName = names.getAppName();
        String pkgName = names.getPkgName();
        VMRuntime runtime = VMRuntime.getRuntime();
        String str2 = runtime.is64Bit() ? "64-bit" : "32-bit";
        String strVmInstructionSet = runtime.vmInstructionSet();
        if (strVmInstructionSet != null && strVmInstructionSet.length() > 0) {
            str2 = str2 + " (" + strVmInstructionSet + NavigationBarInflaterView.KEY_CODE_END;
        }
        String str3 = "CheckJNI=" + (runtime.isCheckJniEnabled() ? "true" : "false");
        boolean zIsNativeDebuggable = runtime.isNativeDebuggable();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate((str.length() * 2) + 32 + (appName.length() * 2) + (str2.length() * 2) + (str3.length() * 2) + 1 + (pkgName.length() * 2));
        byteBufferAllocate.order(ChunkHandler.CHUNK_ORDER);
        byteBufferAllocate.putInt(1);
        byteBufferAllocate.putInt(Process.myPid());
        byteBufferAllocate.putInt(str.length());
        byteBufferAllocate.putInt(appName.length());
        putString(byteBufferAllocate, str);
        putString(byteBufferAllocate, appName);
        byteBufferAllocate.putInt(UserHandle.myUserId());
        byteBufferAllocate.putInt(str2.length());
        putString(byteBufferAllocate, str2);
        byteBufferAllocate.putInt(str3.length());
        putString(byteBufferAllocate, str3);
        byteBufferAllocate.put(zIsNativeDebuggable ? (byte) 1 : (byte) 0);
        byteBufferAllocate.putInt(pkgName.length());
        putString(byteBufferAllocate, pkgName);
        Chunk chunk2 = new Chunk(CHUNK_HELO, byteBufferAllocate);
        if (Debug.waitingForDebugger()) {
            sendWAIT(0);
        }
        return chunk2;
    }

    private Chunk handleFEAT(Chunk request) {
        String[] vmFeatures = Debug.getVmFeatureList();
        int size = ((vmFeatures.length + FRAMEWORK_FEATURES.length) * 4) + 4;
        for (int i = vmFeatures.length - 1; i >= 0; i--) {
            size += vmFeatures[i].length() * 2;
        }
        for (int i2 = FRAMEWORK_FEATURES.length - 1; i2 >= 0; i2--) {
            size += FRAMEWORK_FEATURES[i2].length() * 2;
        }
        ByteBuffer out = ByteBuffer.allocate(size);
        out.order(ChunkHandler.CHUNK_ORDER);
        out.putInt(vmFeatures.length + FRAMEWORK_FEATURES.length);
        for (int i3 = vmFeatures.length - 1; i3 >= 0; i3--) {
            out.putInt(vmFeatures[i3].length());
            putString(out, vmFeatures[i3]);
        }
        for (int i4 = FRAMEWORK_FEATURES.length - 1; i4 >= 0; i4--) {
            String[] strArr = FRAMEWORK_FEATURES;
            out.putInt(strArr[i4].length());
            putString(out, strArr[i4]);
        }
        return new Chunk(CHUNK_FEAT, out);
    }

    public static void sendWAIT(int reason) {
        byte[] data = {(byte) reason};
        Chunk waitChunk = new Chunk(CHUNK_WAIT, data, 0, 1);
        DdmServer.sendChunk(waitChunk);
    }
}
