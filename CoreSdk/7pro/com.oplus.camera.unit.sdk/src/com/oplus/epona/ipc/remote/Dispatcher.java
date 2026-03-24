package com.oplus.epona.ipc.remote;

import android.os.IBinder;
import com.android.tools.r8.annotations.SynthesizedClassMap;
import com.oplus.epona.Dumper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class Dispatcher implements Dumper {
    private static final String TAG = "Dispatcher";
    private static volatile Dispatcher sInstance;
    private Map<String, IBinder> mTransferBinders = new ConcurrentHashMap();
    private Map<String, List<String>> mComponents = new ConcurrentHashMap();

    @Override // com.oplus.epona.Dumper
    public String key() {
        return "oplus_epona";
    }

    private Dispatcher() {
    }

    public static Dispatcher getInstance() {
        if (sInstance == null) {
            synchronized (Dispatcher.class) {
                if (sInstance == null) {
                    sInstance = new Dispatcher();
                }
            }
        }
        return sInstance;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r5.mTransferBinders.containsKey(r6) != false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        com.oplus.epona.utils.Logger.d(com.oplus.epona.ipc.remote.Dispatcher.TAG, "registerRemoteTransfer: registerSuccess:" + r0, new java.lang.Object[0]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean registerRemoteTransfer(final java.lang.String r6, android.os.IBinder r7, final java.lang.String r8) {
        /*
            r5 = this;
            r0 = 1
            r1 = 0
            com.oplus.epona.ipc.remote.-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0 r2 = new com.oplus.epona.ipc.remote.-$$Lambda$Dispatcher$ZEmuGOYbS1g9y_A3_hZbYuWWiN0     // Catch: java.lang.Throwable -> L1b android.os.RemoteException -> L1d
            r2.<init>()     // Catch: java.lang.Throwable -> L1b android.os.RemoteException -> L1d
            r7.linkToDeath(r2, r1)     // Catch: java.lang.Throwable -> L1b android.os.RemoteException -> L1d
            java.util.Map<java.lang.String, android.os.IBinder> r2 = r5.mTransferBinders
            boolean r2 = r2.containsKey(r6)
            if (r2 != 0) goto L32
        L12:
            java.util.Map<java.lang.String, android.os.IBinder> r2 = r5.mTransferBinders
            r2.put(r6, r7)
            r5.updateComponent(r6, r8)
            goto L33
        L1b:
            r0 = move-exception
            goto L4c
        L1d:
            r2 = move-exception
            java.lang.String r3 = "Dispatcher"
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L1b
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L1b
            com.oplus.epona.utils.Logger.w(r3, r2, r4)     // Catch: java.lang.Throwable -> L1b
            java.util.Map<java.lang.String, android.os.IBinder> r2 = r5.mTransferBinders
            boolean r2 = r2.containsKey(r6)
            if (r2 != 0) goto L32
            goto L12
        L32:
            r0 = r1
        L33:
            java.lang.String r5 = "Dispatcher"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "registerRemoteTransfer: registerSuccess:"
            r6.append(r7)
            r6.append(r0)
            java.lang.String r6 = r6.toString()
            java.lang.Object[] r7 = new java.lang.Object[r1]
            com.oplus.epona.utils.Logger.d(r5, r6, r7)
            return r0
        L4c:
            java.util.Map<java.lang.String, android.os.IBinder> r1 = r5.mTransferBinders
            boolean r1 = r1.containsKey(r6)
            if (r1 != 0) goto L5c
            java.util.Map<java.lang.String, android.os.IBinder> r1 = r5.mTransferBinders
            r1.put(r6, r7)
            r5.updateComponent(r6, r8)
        L5c:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oplus.epona.ipc.remote.Dispatcher.registerRemoteTransfer(java.lang.String, android.os.IBinder, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void teardown(String str, String str2) {
        this.mTransferBinders.remove(str);
        this.mComponents.remove(str2);
    }

    private void printRegisterComponentName(PrintWriter printWriter, List<String> list) {
        if (list == null) {
            return;
        }
        for (String str : list) {
            if (isComponentValid(str)) {
                printWriter.println("    -> " + str);
            }
        }
    }

    private boolean isComponentValid(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    private void updateComponent(String str, String str2) {
        List<String> list = this.mComponents.get(str2);
        if (list == null) {
            list = new ArrayList<>();
            this.mComponents.put(str2, list);
        }
        list.add(str);
    }

    public IBinder findRemoteTransfer(String str) {
        return this.mTransferBinders.get(str);
    }

    @Override // com.oplus.epona.Dumper
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("--- dump package register components info ---");
        for (Map.Entry<String, List<String>> entry : this.mComponents.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                printWriter.println(key);
                printRegisterComponentName(printWriter, entry.getValue());
            }
        }
        printWriter.println("------------------- end ---------------------");
    }
}
