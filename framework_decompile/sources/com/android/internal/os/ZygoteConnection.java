package com.android.internal.os;

import android.content.pm.ApplicationInfo;
import android.net.Credentials;
import android.net.LocalSocket;
import android.os.Process;
import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;
import dalvik.system.VMRuntime;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* loaded from: classes4.dex */
class ZygoteConnection {
    private static final String TAG = "Zygote";
    private final String abiList;
    private boolean isEof;
    private final LocalSocket mSocket;
    private final DataOutputStream mSocketOutStream;
    private final IZygoteConnectionExt mZygoteConnectionExt = ZygoteConnectionExtPlugin.constructor.newInstance();
    private final Credentials peer;

    ZygoteConnection(LocalSocket socket, String abiList) throws IOException, ErrnoException {
        this.mSocket = socket;
        this.abiList = abiList;
        this.mSocketOutStream = new DataOutputStream(socket.getOutputStream());
        socket.setSoTimeout(1000);
        try {
            this.peer = socket.getPeerCredentials();
            this.isEof = false;
        } catch (IOException ex) {
            Log.e(TAG, "Cannot read peer credentials", ex);
            throw ex;
        }
    }

    FileDescriptor getFileDescriptor() {
        return this.mSocket.getFileDescriptor();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x019f, code lost:
    
        r3 = r0.mAppDataDir;
        r33 = r6;
        r6 = r0.mIsTopApp;
        r34 = r7;
        r7 = r0.mPkgDataInfoList;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01a9, code lost:
    
        r0 = com.android.internal.os.Zygote.forkAndSpecialize(r11, r12, r13, r14, r8, r0, r15, r5, r11, r29, r10, r2, r3, r6, r7, r0.mAllowlistedDataInfoList, r0.mBindMountAppDataDirs, r0.mBindMountAppStorageDirs);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01cf, code lost:
    
        if (r0 != 0) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d3, code lost:
    
        r36.mZygoteConnectionExt.afterForkAndSpecializeInChild(r0, r0.mZygoteArgumentsExt);
        r37.setForkChild();
        r37.closeServerSocket();
        libcore.io.IoUtils.closeQuietly(r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01e3, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e8, code lost:
    
        r0 = handleChildProc(r0, r33, r0.mStartChildZygote);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01ec, code lost:
    
        libcore.io.IoUtils.closeQuietly(r33);
        libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01f2, code lost:
    
        r32.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f5, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01f6, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x01f7, code lost:
    
        r6 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01fa, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01fb, code lost:
    
        r6 = r33;
        r7 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0200, code lost:
    
        r6 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0204, code lost:
    
        libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x020a, code lost:
    
        handleParentProc(r0, r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x020e, code lost:
    
        libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) null);
        libcore.io.IoUtils.closeQuietly(r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0214, code lost:
    
        r32.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0218, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0219, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x021b, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x021c, code lost:
    
        r7 = r34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x021e, code lost:
    
        libcore.io.IoUtils.closeQuietly(r6);
        libcore.io.IoUtils.closeQuietly(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0225, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0226, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x022a, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x025e, code lost:
    
        throw new com.android.internal.os.ZygoteSecurityException("Client may not specify capabilities: permitted=0x" + java.lang.Long.toHexString(r0.mPermittedCapabilities) + ", effective=0x" + java.lang.Long.toHexString(r0.mEffectiveCapabilities));
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x026b, code lost:
    
        r2 = r36;
        r32 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x026e, code lost:
    
        r32.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0273, code lost:
    
        if (r0.mUsapPoolStatusSpecified == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x027d, code lost:
    
        return r2.handleUsapPoolStatusChange(r37, r0.mUsapPoolEnabled);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0282, code lost:
    
        if (r0.mApiDenylistExemptions == null) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x028a, code lost:
    
        return r2.handleApiDenylistExemptions(r37, r0.mApiDenylistExemptions);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x028d, code lost:
    
        if (r0.mHiddenApiAccessLogSampleRate != (-1)) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0291, code lost:
    
        if (r0.mHiddenApiAccessStatslogSampleRate == (-1)) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x029b, code lost:
    
        throw new java.lang.AssertionError("Shouldn't get here");
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02a4, code lost:
    
        return r2.handleHiddenApiAccessLogSampleRate(r37, r0.mHiddenApiAccessLogSampleRate, r0.mHiddenApiAccessStatslogSampleRate);
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0189, code lost:
    
        r11 = r0.mUid;
        r12 = r0.mGid;
        r13 = r0.mGids;
        r14 = r0.mRuntimeFlags;
        r0 = r0.mMountExternal;
        r15 = r0.mSeInfo;
        r5 = r0.mNiceName;
        r10 = r0.mStartChildZygote;
        r2 = r0.mInstructionSet;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x019d, code lost:
    
        r32 = r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.FileDescriptor] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    java.lang.Runnable processCommand(com.android.internal.os.ZygoteServer r37, boolean r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 717
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteConnection.processCommand(com.android.internal.os.ZygoteServer, boolean):java.lang.Runnable");
    }

    private void handleAbiListQuery() throws IOException {
        try {
            byte[] abiListBytes = this.abiList.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(abiListBytes.length);
            this.mSocketOutStream.write(abiListBytes);
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handlePidQuery() throws IOException {
        try {
            String pidString = String.valueOf(Process.myPid());
            byte[] pidStringBytes = pidString.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(pidStringBytes.length);
            this.mSocketOutStream.write(pidStringBytes);
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handleBootCompleted() throws IOException {
        try {
            this.mSocketOutStream.writeInt(0);
            VMRuntime.bootCompleted();
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handlePreload() throws IOException {
        try {
            if (isPreloadComplete()) {
                this.mSocketOutStream.writeInt(1);
            } else {
                preload();
                this.mSocketOutStream.writeInt(0);
            }
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable stateChangeWithUsapPoolReset(ZygoteServer zygoteServer, Runnable stateChangeCode) throws IOException {
        try {
            if (zygoteServer.isUsapPoolEnabled()) {
                Log.i(TAG, "Emptying USAP Pool due to state change.");
                Zygote.emptyUsapPool();
            }
            stateChangeCode.run();
            if (zygoteServer.isUsapPoolEnabled()) {
                Runnable fpResult = zygoteServer.fillUsapPool(new int[]{this.mSocket.getFileDescriptor().getInt$()}, false);
                if (fpResult != null) {
                    zygoteServer.setForkChild();
                    return fpResult;
                }
                Log.i(TAG, "Finished refilling USAP Pool after state change.");
            }
            this.mSocketOutStream.writeInt(0);
            return null;
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable handleApiDenylistExemptions(ZygoteServer zygoteServer, final String[] exemptions) {
        return stateChangeWithUsapPoolReset(zygoteServer, new Runnable() { // from class: com.android.internal.os.ZygoteConnection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ZygoteInit.setApiDenylistExemptions(exemptions);
            }
        });
    }

    private Runnable handleUsapPoolStatusChange(ZygoteServer zygoteServer, boolean newStatus) throws IOException {
        try {
            Runnable fpResult = zygoteServer.setUsapPoolStatus(newStatus, this.mSocket);
            if (fpResult == null) {
                this.mSocketOutStream.writeInt(0);
            } else {
                zygoteServer.setForkChild();
            }
            return fpResult;
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable handleHiddenApiAccessLogSampleRate(ZygoteServer zygoteServer, final int samplingRate, final int statsdSamplingRate) {
        return stateChangeWithUsapPoolReset(zygoteServer, new Runnable() { // from class: com.android.internal.os.ZygoteConnection$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ZygoteConnection.lambda$handleHiddenApiAccessLogSampleRate$1(samplingRate, statsdSamplingRate);
            }
        });
    }

    static /* synthetic */ void lambda$handleHiddenApiAccessLogSampleRate$1(int samplingRate, int statsdSamplingRate) {
        int maxSamplingRate = Math.max(samplingRate, statsdSamplingRate);
        ZygoteInit.setHiddenApiAccessLogSampleRate(maxSamplingRate);
        StatsdHiddenApiUsageLogger.setHiddenApiAccessLogSampleRates(samplingRate, statsdSamplingRate);
        ZygoteInit.setHiddenApiUsageLogger(StatsdHiddenApiUsageLogger.getInstance());
    }

    protected void preload() {
        ZygoteInit.lazyPreload();
    }

    protected boolean isPreloadComplete() {
        return ZygoteInit.isPreloadComplete();
    }

    protected DataOutputStream getSocketOutputStream() {
        return this.mSocketOutStream;
    }

    protected void handlePreloadPackage(String packagePath, String libsPath, String libFileName, String cacheKey) {
        throw new RuntimeException("Zygote does not support package preloading");
    }

    protected boolean canPreloadApp() {
        return false;
    }

    protected void handlePreloadApp(ApplicationInfo aInfo) {
        throw new RuntimeException("Zygote does not support app preloading");
    }

    void closeSocket() {
        try {
            this.mSocket.close();
        } catch (IOException ex) {
            Log.e(TAG, "Exception while closing command socket in parent", ex);
        }
    }

    boolean isClosedByPeer() {
        return this.isEof;
    }

    private Runnable handleChildProc(ZygoteArguments parsedArgs, FileDescriptor pipeFd, boolean isZygote) {
        closeSocket();
        Zygote.setAppProcessName(parsedArgs, TAG);
        Trace.traceEnd(64L);
        if (parsedArgs.mInvokeWith != null) {
            WrapperInit.execApplication(parsedArgs.mInvokeWith, parsedArgs.mNiceName, parsedArgs.mTargetSdkVersion, VMRuntime.getCurrentInstructionSet(), pipeFd, parsedArgs.mRemainingArgs);
            throw new IllegalStateException("WrapperInit.execApplication unexpectedly returned");
        }
        if (!isZygote) {
            return ZygoteInit.zygoteInit(parsedArgs.mTargetSdkVersion, parsedArgs.mDisabledCompatChanges, parsedArgs.mRemainingArgs, null);
        }
        return ZygoteInit.childZygoteInit(parsedArgs.mRemainingArgs);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010a A[PHI: r18
      0x010a: PHI (r18v1 'usingWrapper' boolean) = (r18v0 'usingWrapper' boolean), (r18v4 'usingWrapper' boolean), (r18v4 'usingWrapper' boolean) binds: [B:54:0x0108, B:46:0x00c0, B:53:0x00e7] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleParentProc(int r22, java.io.FileDescriptor r23) throws java.io.IOException, android.system.ErrnoException {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteConnection.handleParentProc(int, java.io.FileDescriptor):void");
    }

    private void setChildPgid(int pid) {
        try {
            Os.setpgid(pid, Os.getpgid(this.peer.getPid()));
        } catch (ErrnoException e) {
            Log.i(TAG, "Zygote: setpgid failed. This is normal if peer is not in our session");
        }
    }
}
