package com.oplus.compat.content.pm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.IntentSender;
import android.content.pm.PackageInstaller;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.oplus.compat.annotation.Blocked;
import com.oplus.compat.annotation.Grey;
import com.oplus.compat.annotation.Permission;
import com.oplus.compat.annotation.System;
import com.oplus.compat.utils.util.UnSupportedApiVersionException;
import com.oplus.compat.utils.util.VersionUtils;
import com.oplus.epona.Epona;
import com.oplus.epona.Request;
import com.oplus.epona.Response;
import com.oplus.tingle.ipc.Slave;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import libcore.io.Streams;
/* loaded from: classes.dex */
public class PackageInstallerNative {
    private static final String COMPONENT_NAME = "android.content.pm.PackageInstaller.Session";
    private static final String TAG = "PackageInstallerNative";

    @Permission(authStr = "installBackground", type = "epona")
    @RequiresApi(api = 30)
    @System
    public static void install(PackageInstaller.SessionParams sessionParams, File file, PendingIntent pendingIntent) throws Exception {
        if (VersionUtils.isR()) {
            Response execute = Epona.newCall(new Request.Builder().setComponentName("android.content.pm.PackageInstaller").setActionName("installBackground").withLong("size", file.length()).withParcelable("descriptor", ParcelFileDescriptor.open(file, 268435456)).withParcelable("sessionParams", sessionParams).withParcelable("broadcastIntent", pendingIntent).build()).execute();
            if (execute.isSuccessful()) {
                return;
            }
            execute.checkThrowable(Exception.class);
            throw new Exception("response has exception");
        } else if (VersionUtils.isQ()) {
            PackageInstaller packageInstaller = Epona.getContext().getPackageManager().getPackageInstaller();
            try {
                PackageInstaller.Session openSession = packageInstaller.openSession(packageInstaller.createSession(sessionParams));
                ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
                long length = file.length();
                FileInputStream fileInputStream = new FileInputStream(open.getFileDescriptor());
                OutputStream openWrite = openSession.openWrite("PackageInstaller", 0L, length);
                try {
                    Streams.copy(fileInputStream, openWrite);
                    if (openWrite != null) {
                        openWrite.close();
                    }
                    fileInputStream.close();
                    openSession.commit(pendingIntent.getIntentSender());
                    if (openSession != null) {
                        openSession.close();
                    }
                } catch (Throwable th) {
                    if (openWrite != null) {
                        try {
                            openWrite.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            } catch (Exception e) {
                Log.d(TAG, e.getMessage());
            }
        }
    }

    @Permission(authStr = "PackageInstaller.Session", type = "tingle")
    @RequiresApi(api = 21)
    @System
    public static int createSession(Context context, PackageInstaller.SessionParams sessionParams) throws IOException, UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Slave.preparePackageInstaller(context);
            return context.getPackageManager().getPackageInstaller().createSession(sessionParams);
        } else if (VersionUtils.isL()) {
            return context.getPackageManager().getPackageInstaller().createSession(sessionParams);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "PackageInstaller.Session", type = "tingle")
    @RequiresApi(api = 21)
    @System
    public static PackageInstaller.Session openSession(Context context, int i) throws UnSupportedApiVersionException, IOException {
        if (VersionUtils.isR()) {
            Slave.preparePackageInstaller(context);
            PackageInstaller.Session openSession = context.getPackageManager().getPackageInstaller().openSession(i);
            Slave.preparePackageInstallerSession(openSession);
            return openSession;
        } else if (VersionUtils.isL()) {
            return context.getPackageManager().getPackageInstaller().openSession(i);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "PackageInstaller.Session", type = "tingle")
    @RequiresApi(api = 21)
    @System
    public static void abandonSession(Context context, int i) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Slave.preparePackageInstaller(context);
            context.getPackageManager().getPackageInstaller().abandonSession(i);
        } else if (VersionUtils.isL()) {
            context.getPackageManager().getPackageInstaller().abandonSession(i);
        } else {
            throw new UnSupportedApiVersionException("Not Supported Before L");
        }
    }

    @Permission(authStr = "PackageInstaller.Session", type = "tingle")
    @Grey
    @RequiresApi(api = 30)
    @System
    public static void installExistingPackage(Context context, String str, int i, IntentSender intentSender) throws UnSupportedApiVersionException {
        if (VersionUtils.isR()) {
            Slave.preparePackageInstaller(context);
            context.getPackageManager().getPackageInstaller().installExistingPackage(str, i, intentSender);
            return;
        }
        throw new UnSupportedApiVersionException("not supported before R");
    }

    /* loaded from: classes.dex */
    public static class SessionNative {
        @Permission(authStr = "PackageInstaller.Session", type = "tingle")
        @RequiresApi(api = 21)
        public static void commit(PackageInstaller.Session session, IntentSender intentSender) throws UnSupportedApiVersionException {
            if (VersionUtils.isR()) {
                Slave.preparePackageInstallerSession(session);
                session.commit(intentSender);
            } else if (VersionUtils.isL()) {
                session.commit(intentSender);
            } else {
                throw new UnSupportedApiVersionException("Not Supported Before L");
            }
        }

        @Permission(authStr = "write", type = "epona")
        @Blocked
        @RequiresApi(api = 28)
        @System
        public static void write(int i, String str, long j, long j2, ParcelFileDescriptor parcelFileDescriptor) throws UnSupportedApiVersionException, IOException {
            if (VersionUtils.isR()) {
                Request build = new Request.Builder().setComponentName(PackageInstallerNative.COMPONENT_NAME).setActionName("write").build();
                Bundle bundle = new Bundle();
                bundle.putInt("sessionId", i);
                bundle.putString("name", str);
                bundle.putLong("offsetBytes", j);
                bundle.putLong("lengthBytes", j2);
                bundle.putParcelable("fd", parcelFileDescriptor);
                build.putBundle(bundle);
                Response execute = Epona.newCall(build).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                Log.e(PackageInstallerNative.TAG, "response error:" + execute.getMessage());
            } else if (VersionUtils.isP()) {
                Epona.getContext().getPackageManager().getPackageInstaller().openSession(i).write(str, j, j2, parcelFileDescriptor);
            } else {
                throw new UnSupportedApiVersionException("Not Supported Before P");
            }
        }
    }
}
