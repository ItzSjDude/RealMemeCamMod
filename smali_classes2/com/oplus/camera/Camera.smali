.class public Lcom/oplus/camera/Camera;
.super Landroidx/appcompat/app/c;
.source "Camera.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/oplus/camera/d;
.implements Lcom/oplus/camera/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/Camera$b;,
        Lcom/oplus/camera/Camera$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field private static p:I

.field private static q:Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/oplus/camera/ComboPreferences;

.field private C:Lcom/oplus/camera/Camera$b;

.field private D:Landroid/content/ServiceConnection;

.field private E:J

.field private F:Z

.field private G:Landroid/os/ConditionVariable;

.field private H:Lcom/oplus/camera/entry/b;

.field private I:Lcom/oplus/camera/h;

.field private J:Landroid/content/ServiceConnection;

.field private K:Landroid/app/KeyguardManager;

.field private L:Ljava/lang/Runnable;

.field private final M:Landroid/content/BroadcastReceiver;

.field private final N:Landroid/content/BroadcastReceiver;

.field private O:Landroid/content/BroadcastReceiver;

.field private final P:Landroid/content/BroadcastReceiver;

.field private Q:Landroid/content/BroadcastReceiver;

.field private R:Landroid/content/BroadcastReceiver;

.field private S:Landroid/content/BroadcastReceiver;

.field private T:Landroid/content/BroadcastReceiver;

.field private U:Landroid/content/BroadcastReceiver;

.field private V:Landroid/content/BroadcastReceiver;

.field private W:Lcom/oplus/camera/update/UpdateReceiver;

.field private X:Ljava/lang/Runnable;

.field private Y:Landroid/database/ContentObserver;

.field private Z:Ljava/lang/Runnable;

.field private mCameraManager:Lcom/oplus/camera/CameraManager;

.field private final r:Landroid/os/Handler;

.field private s:I

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/Camera;->k:Ljava/util/List;

    const/4 v0, 0x0

    .line 106
    sput-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    .line 107
    sput-boolean v0, Lcom/oplus/camera/Camera;->m:Z

    .line 108
    sput-boolean v0, Lcom/oplus/camera/Camera;->n:Z

    .line 109
    sput-boolean v0, Lcom/oplus/camera/Camera;->o:Z

    const v0, 0x1d4c0

    .line 123
    sput v0, Lcom/oplus/camera/Camera;->p:I

    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/oplus/camera/Camera;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 367
    invoke-direct {p0}, Landroidx/appcompat/app/c;-><init>()V

    .line 126
    new-instance v0, Lcom/oplus/camera/Camera$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/Camera$a;-><init>(Lcom/oplus/camera/Camera;Lcom/oplus/camera/Camera$1;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 129
    iput v0, p0, Lcom/oplus/camera/Camera;->s:I

    .line 130
    iput v0, p0, Lcom/oplus/camera/Camera;->t:I

    const/4 v0, 0x0

    .line 131
    iput v0, p0, Lcom/oplus/camera/Camera;->u:I

    const/4 v2, 0x1

    .line 134
    iput-boolean v2, p0, Lcom/oplus/camera/Camera;->w:Z

    .line 135
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->x:Z

    .line 136
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->y:Z

    .line 137
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->z:Z

    .line 139
    iput-object v1, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    .line 144
    iput-object v1, p0, Lcom/oplus/camera/Camera;->D:Landroid/content/ServiceConnection;

    .line 146
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->F:Z

    .line 147
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->G:Landroid/os/ConditionVariable;

    .line 148
    new-instance v0, Lcom/oplus/camera/entry/b;

    invoke-direct {v0}, Lcom/oplus/camera/entry/b;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    .line 149
    iput-object v1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    .line 150
    iput-object v1, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    .line 151
    iput-object v1, p0, Lcom/oplus/camera/Camera;->K:Landroid/app/KeyguardManager;

    .line 153
    new-instance v0, Lcom/oplus/camera/Camera$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$1;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->L:Ljava/lang/Runnable;

    .line 1223
    new-instance v0, Lcom/oplus/camera/Camera$23;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$23;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    .line 1234
    new-instance v0, Lcom/oplus/camera/Camera$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$2;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->N:Landroid/content/BroadcastReceiver;

    .line 1243
    new-instance v0, Lcom/oplus/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$3;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->O:Landroid/content/BroadcastReceiver;

    .line 1252
    new-instance v0, Lcom/oplus/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$4;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->P:Landroid/content/BroadcastReceiver;

    .line 1267
    new-instance v0, Lcom/oplus/camera/Camera$5;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$5;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->Q:Landroid/content/BroadcastReceiver;

    .line 1276
    new-instance v0, Lcom/oplus/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$6;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->R:Landroid/content/BroadcastReceiver;

    .line 1285
    new-instance v0, Lcom/oplus/camera/Camera$7;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$7;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->S:Landroid/content/BroadcastReceiver;

    .line 1298
    new-instance v0, Lcom/oplus/camera/Camera$8;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$8;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->T:Landroid/content/BroadcastReceiver;

    .line 1307
    new-instance v0, Lcom/oplus/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$9;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->U:Landroid/content/BroadcastReceiver;

    .line 1316
    new-instance v0, Lcom/oplus/camera/Camera$10;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$10;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->V:Landroid/content/BroadcastReceiver;

    .line 1325
    new-instance v0, Lcom/oplus/camera/update/UpdateReceiver;

    invoke-direct {v0}, Lcom/oplus/camera/update/UpdateReceiver;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->W:Lcom/oplus/camera/update/UpdateReceiver;

    .line 1327
    new-instance v0, Lcom/oplus/camera/Camera$11;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$11;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->X:Ljava/lang/Runnable;

    .line 1347
    new-instance v0, Lcom/oplus/camera/Camera$13;

    iget-object v1, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/Camera$13;-><init>(Lcom/oplus/camera/Camera;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->Y:Landroid/database/ContentObserver;

    .line 1359
    new-instance v0, Lcom/oplus/camera/Camera$14;

    invoke-direct {v0, p0}, Lcom/oplus/camera/Camera$14;-><init>(Lcom/oplus/camera/Camera;)V

    iput-object v0, p0, Lcom/oplus/camera/Camera;->Z:Ljava/lang/Runnable;

    .line 369
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/Camera$17;

    invoke-direct {v1, p0}, Lcom/oplus/camera/Camera$17;-><init>(Lcom/oplus/camera/Camera;)V

    const-string p0, "CameraManager instance"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method private A()Z
    .locals 0

    .line 1637
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->X()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private B()V
    .locals 4

    .line 1739
    new-instance v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "enter"

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1740
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->K()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterTimeGap:J

    .line 1741
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mEnterCallPackage:Ljava/lang/String;

    .line 1742
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->I()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mShortcutType:Ljava/lang/String;

    .line 1743
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->M()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1744
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->P()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbFromLock:Z

    .line 1745
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1746
    invoke-static {}, Lcom/oplus/camera/util/Util;->aI()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    goto :goto_0

    :cond_0
    const-string v1, "off"

    :goto_0
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mMagneticShellStatus:Ljava/lang/String;

    .line 1747
    iget-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    const/high16 v2, -0x40800000    # -1.0f

    const-string v3, "key_cur_temperature"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mEnterTemperature:F

    .line 1750
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result v1

    .line 1751
    iput v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraId:I

    .line 1752
    invoke-static {v1}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "front"

    goto :goto_1

    :cond_1
    const-string v1, "rear"

    :goto_1
    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mRearOrFront:Ljava/lang/String;

    const-string v1, "com.oplus.feature.explorer.support"

    .line 1754
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1755
    iget-object p0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x1

    const-string v2, "key_explorer_chip_state"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mChipStatus:I

    .line 1758
    :cond_2
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->onResume()V

    .line 1759
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method private C()V
    .locals 5

    .line 1763
    new-instance v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;

    const-string v1, "exit"

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mExitCallPackage:Ljava/lang/String;

    .line 1765
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->I()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mShortcutType:Ljava/lang/String;

    .line 1766
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->Z()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mbToGallery:Z

    .line 1767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/camera/Camera;->E:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mResumePauseTime:J

    .line 1768
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->J()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 1769
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aL()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mResumePauseVideoTime:J

    .line 1770
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCaptureMode:Ljava/lang/String;

    .line 1771
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result p0

    iput p0, v0, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->mCameraId:I

    .line 1772
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->onPause()V

    .line 1773
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/EnterExitDcsMsgData;->report()V

    return-void
.end method

.method private D()V
    .locals 3

    .line 1801
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oplus/camera/aps/service/ApsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string v1, "OplusCamera"

    const-string v2, "startDaemonService, stopService and startForegroundService"

    .line 1804
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->stopService(Landroid/content/Intent;)Z

    .line 1807
    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1809
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic E()V
    .locals 12

    const-string v0, "sticker"

    .line 321
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "my_tmp"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "OplusCamera"

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    :try_start_0
    invoke-static {p0}, Landroid/content/pm/OplusPackageManager;->getOplusPackageManager(Landroid/content/Context;)Landroid/content/pm/OplusPackageManager;

    move-result-object v2

    .line 326
    const-class v4, Landroid/content/pm/OplusPackageManager;

    const-string v5, "fixupAppData"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 328
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "com.oplus.camera"

    aput-object v6, v5, v9

    const-string v6, "/my_tmp/sticker"

    aput-object v6, v5, v10

    .line 330
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    .line 328
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "onCreate, Success to fix app data"

    .line 333
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const-string v0, "onCreate, Rename failed"

    .line 341
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "onCreate, Fail to fix app data"

    .line 344
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onCreate, Cannot to fix app data"

    .line 347
    invoke-static {v3, v1, v0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    const-string v0, "onCreate, Sticker temp folder not exist, no need to fix app data"

    .line 351
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/-$$Lambda$Camera$UrfHqZ-jawnYiV_-odTkCW7FG_k;

    invoke-direct {v1, p0}, Lcom/oplus/camera/-$$Lambda$Camera$UrfHqZ-jawnYiV_-odTkCW7FG_k;-><init>(Lcom/oplus/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic F()V
    .locals 2

    .line 356
    iget-object p0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    if-eqz p0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "pref_is_android_s_data_migrated"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/oplus/camera/Camera;->t:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;)Landroid/content/ServiceConnection;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->D:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/Camera;->D:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;Lcom/oplus/camera/Camera$b;)Lcom/oplus/camera/Camera$b;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/Camera;->C:Lcom/oplus/camera/Camera$b;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    return-object p1
.end method

.method private a(J)V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 1444
    iget-object p0, p0, Lcom/oplus/camera/Camera;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;Landroid/content/Intent;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera;->c(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 538
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishActivityWithToast, toastMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusCamera"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 543
    iput-boolean p1, p0, Lcom/oplus/camera/Camera;->v:Z

    .line 544
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/Camera;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oplus/camera/Camera;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/Camera;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/oplus/camera/Camera;->s:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/Camera;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/Camera;)Landroid/os/ConditionVariable;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->G:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/Camera;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/oplus/camera/Camera;->w:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1621
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    return-object p0
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndBindWatchAgent, mWatchConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sbConnectAlive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 201
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    .line 199
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    new-instance v0, Lcom/oplus/camera/Camera$12;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/Camera$12;-><init>(Lcom/oplus/camera/Camera;Landroid/content/Intent;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/Camera;)Landroid/content/ServiceConnection;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "need_screen_on"

    .line 584
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 586
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 589
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkIfNeedScreenOn, isNeedScreenOn: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusCamera"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/Camera$b;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->C:Lcom/oplus/camera/Camera$b;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/Camera;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oplus/camera/Camera;->v:Z

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/h;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/Camera;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oplus/camera/Camera;->z:Z

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->N:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->P:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic k(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->Q:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic l(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->U:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static synthetic lambda$UrfHqZ-jawnYiV_-odTkCW7FG_k(Lcom/oplus/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/Camera;->F()V

    return-void
.end method

.method public static synthetic lambda$nRdCWuXp-Ce96hN_BATejEh1EtM(Lcom/oplus/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/Camera;->E()V

    return-void
.end method

.method static synthetic m(Lcom/oplus/camera/Camera;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/oplus/camera/Camera;->V:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/Camera;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/oplus/camera/Camera;->w:Z

    return p0
.end method

.method static synthetic o(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->v()V

    return-void
.end method

.method static synthetic p(Lcom/oplus/camera/Camera;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/oplus/camera/Camera;->t:I

    return p0
.end method

.method static synthetic q(Lcom/oplus/camera/Camera;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/oplus/camera/Camera;->s:I

    return p0
.end method

.method private t()V
    .locals 8

    .line 243
    invoke-static {}, Lcom/oplus/camera/util/Util;->aJ()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    const/4 v1, 0x0

    const-string v2, "pref_is_android_s_data_migrated"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "checkAndroidSDataMigration"

    .line 244
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const-string v2, "op_legacy_com.oneplus.camera_preferences"

    .line 247
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "Version"

    .line 249
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string v4, "AspectRatio.Photo"

    .line 251
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v4, "NORMAL"

    .line 254
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "pref_camera_photo_ratio_key"

    if-eqz v4, :cond_0

    .line 255
    iget-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "standard"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string v4, "SQUARE"

    .line 256
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    iget-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "square"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const-string v4, "FULL_SCREEN"

    .line 258
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "full"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    const-string v2, "op_legacy_video"

    .line 264
    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/Camera;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "Resolution.Video.Back"

    .line 265
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "3840x"

    .line 268
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3, p0, v1}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_video_size_key"

    const-string v5, "video_size_4kuhd"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    const-string v3, "@60"

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 273
    iget-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2, p0, v1}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_video_fps_key"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/oplus/camera/ComboPreferences;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_mirror_key"

    .line 289
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "off"

    .line 290
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "on"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "pref_mirror_setting_key"

    if-eqz v5, :cond_5

    .line 291
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 292
    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 293
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 295
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 296
    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 297
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    :cond_6
    :goto_1
    sget-object v3, Lcom/oplus/camera/j;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/oplus/camera/j;->a:Ljava/lang/String;

    .line 309
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 310
    :cond_7
    sget-object v3, Lcom/oplus/camera/j;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 311
    sget-object v4, Lcom/oplus/camera/j;->a:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 312
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "com.oplus.camera.CLICK_ULTRA_WIDE"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.oplus.camera.OPEN_CAMERA_TIME"

    .line 313
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/oplus/camera/j;->b:Ljava/lang/String;

    .line 314
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/oplus/camera/j;->a:Ljava/lang/String;

    .line 315
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_8
    const/4 v1, 0x1

    .line 320
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/-$$Lambda$Camera$nRdCWuXp-Ce96hN_BATejEh1EtM;

    invoke-direct {v2, p0}, Lcom/oplus/camera/-$$Lambda$Camera$nRdCWuXp-Ce96hN_BATejEh1EtM;-><init>(Lcom/oplus/camera/Camera;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 362
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private u()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/Camera;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    const-string v1, "OplusCamera"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {p0, v2}, Lcom/oplus/camera/Camera;->setShowWhenLocked(Z)V

    const-string v0, "blackGestureOpen, setShowWhenLocked true"

    .line 600
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_1
    invoke-virtual {p0, v2}, Lcom/oplus/camera/Camera;->setTurnScreenOn(Z)V

    const-string p0, "blackGestureOpen, setTurnScreenOn true"

    .line 605
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private v()V
    .locals 1

    .line 1215
    invoke-static {p0}, Lcom/oplus/camera/MyApplication;->a(Landroid/content/Context;)V

    .line 1216
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(Landroid/content/Context;)V

    .line 1218
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aJ()V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 5

    .line 1406
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 1407
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 1408
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 1409
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/oplus/camera/Camera;->O:Landroid/content/BroadcastReceiver;

    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1412
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.heytap.speechassist.intent.action.WINDOW_MANAGER_OCCUPIED"

    .line 1413
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.heytap.speechassist.intent.action.FLOAT_ACTIVITY_START"

    .line 1414
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1415
    iget-object v1, p0, Lcom/oplus/camera/Camera;->R:Landroid/content/BroadcastReceiver;

    const-string v4, "heytap.speechassist.permission.FLOAT_WINDOW_STATUS"

    invoke-virtual {p0, v1, v0, v4, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1417
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    .line 1418
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oplus.intent.action.OPLUS_OTA_UPDATE_SUCCESSED"

    .line 1419
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/oplus/camera/Camera;->W:Lcom/oplus/camera/update/UpdateReceiver;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1422
    iget-object v0, p0, Lcom/oplus/camera/Camera;->S:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1424
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/Camera;->T:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.oplus.camera.TIPS_MANAGER_BR_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1425
    invoke-virtual {v0, v1, v2}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1427
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/g;->a(Landroid/app/Activity;)V

    .line 1428
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "filter_bind_watch_agent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1431
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/images/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/Camera;->Y:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1432
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/external/video/media"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/Camera;->Y:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private x()V
    .locals 3

    .line 1436
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/oplus/camera/Camera;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;)V

    .line 1438
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    iget-object p0, p0, Lcom/oplus/camera/Camera;->Z:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    .line 1450
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    iget-object v1, p0, Lcom/oplus/camera/Camera;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 1454
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/Camera;->a(J)V

    .line 1455
    iget-object v0, p0, Lcom/oplus/camera/Camera;->O:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1456
    iget-object v0, p0, Lcom/oplus/camera/Camera;->R:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1457
    iget-object v0, p0, Lcom/oplus/camera/Camera;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1458
    iget-object v0, p0, Lcom/oplus/camera/Camera;->W:Lcom/oplus/camera/update/UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1460
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/Camera;->T:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 1462
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/Camera;->M:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/e/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 1463
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/g;->a(Landroid/content/Context;)Lcom/oplus/camera/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/g;->b(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1465
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1468
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/Camera;->Y:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private z()Z
    .locals 1

    .line 1629
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->Z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/Camera;->b(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    .line 380
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    const-string v0, "OplusCamera"

    const-string v1, "attachBaseContext, dpi not same, so change it"

    .line 383
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1042
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1056
    :cond_0
    :pswitch_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->ae()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1066
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1071
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->c(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1077
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->a(Landroid/view/MotionEvent;)V

    .line 1079
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const-string v2, "OplusCamera"

    if-eq v1, v0, :cond_2

    .line 1080
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 1081
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dispatchTouchEvent, X: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", Y: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1086
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->e(Landroid/view/MotionEvent;)V

    .line 1088
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "dispatchTouchEvent, camera on switching...."

    .line 1089
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1094
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const-string v3, "key_need_intercept_touch"

    invoke-virtual {v1, v3}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "dispatchTouchEvent, need intercept touch..."

    .line 1095
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1100
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aF()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "dispatchTouchEvent, camera on video stopping..."

    .line 1101
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1105
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->d(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/app/c;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "dispatchTouchEvent, consume by super"

    .line 1106
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->g(Landroid/view/MotionEvent;)V

    .line 1109
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->N()V

    return v0

    .line 1114
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, p1}, Lcom/oplus/camera/CameraManager;->b(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p0, "dispatchTouchEvent, consume by double finger capture"

    .line 1115
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1120
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->f(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public finish()V
    .locals 4

    .line 963
    invoke-super {p0}, Landroidx/appcompat/app/c;->finish()V

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish, isFinishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->w:Z

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/entry/b;->a(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 971
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->y:Z

    .line 973
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 974
    invoke-virtual {p0, v2}, Lcom/oplus/camera/Camera;->setShowWhenLocked(Z)V

    .line 976
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 980
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v3, 0x200000

    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    const-string v0, "finish, clearFlag success finish"

    .line 982
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "open_from_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 990
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz v2, :cond_3

    const v0, 0x7f0100ac

    const v1, 0x7f0100ad

    .line 994
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/Camera;->overridePendingTransition(II)V

    :cond_3
    return-void
.end method

.method public k()Lcom/oplus/camera/entry/b;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    return-object p0
.end method

.method public l()Z
    .locals 0

    .line 814
    iget-boolean p0, p0, Lcom/oplus/camera/Camera;->w:Z

    return p0
.end method

.method public m()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/Camera;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/CameraManager;->b(ZZ)V

    :cond_0
    const-string p0, "OplusCamera"

    const-string v0, "killCameraProcess"

    .line 1477
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public n()V
    .locals 6

    const-string v0, "OplusCamera"

    const-string v1, "onPreviewOKMessage"

    .line 1484
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    :try_start_0
    sget-object v1, Lcom/oplus/camera/Camera;->q:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1488
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1489
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1490
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/16 v3, 0x80

    .line 1491
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    .line 1494
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "versionCommit"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1495
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "versionDate"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "_"

    if-eqz v1, :cond_0

    .line 1500
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1502
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1503
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1508
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1511
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/Camera;->q:Ljava/lang/String;

    .line 1513
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreviewOKMessage, Camera versionInfo: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/camera/Camera;->q:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1517
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    invoke-virtual {v0}, Lcom/oplus/camera/h;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->w:Z

    .line 1525
    iget-boolean p0, p0, Lcom/oplus/camera/Camera;->w:Z

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult, resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 1175
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_0

    .line 1178
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 1181
    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1185
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1186
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    const-string p1, "crop-temp"

    .line 1188
    invoke-virtual {p0, p1}, Lcom/oplus/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1189
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x2b67

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p1, p2, :cond_3

    if-eqz p3, :cond_3

    .line 1192
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string p1, "_data"

    .line 1193
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    .line 1194
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 1195
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1196
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1197
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1199
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityResult, videoPath: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1202
    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/String;)V

    .line 1205
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1207
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_4

    .line 1208
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->b()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 872
    invoke-super {p0}, Landroidx/appcompat/app/c;->onAttachedToWindow()V

    const-string p0, "OplusCamera"

    const-string v0, "onAttachedToWindow"

    .line 874
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "OplusCamera"

    const-string v1, "onBackPressed"

    .line 1000
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1006
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->x:Z

    .line 1007
    invoke-super {p0}, Landroidx/appcompat/app/c;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1143
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1145
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    iput v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 1146
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged, config sDefaultDensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uiMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysDensityDpi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/camera/util/Util;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0}, Lcom/oplus/camera/h;->g()V

    .line 1155
    :cond_0
    iget v0, p0, Lcom/oplus/camera/Camera;->u:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, v1, :cond_2

    .line 1156
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/oplus/camera/Camera;->u:I

    .line 1158
    iget-object p1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    if-eqz p1, :cond_1

    .line 1159
    invoke-virtual {p1}, Lcom/oplus/camera/h;->h()V

    .line 1162
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_2

    .line 1163
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->au()V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-string v0, "CameraStartupPerformance.onCameraActivityCreate"

    .line 391
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCamera"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "beforeOpenCamera"

    .line 395
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const-string v3, "launch_on_create"

    .line 397
    invoke-static {v3}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oplus/camera/perf/LaunchPerformance;->setMemBeforeCreate(J)V

    .line 400
    iget-object v3, p0, Lcom/oplus/camera/Camera;->L:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 401
    invoke-static {v3}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/oplus/camera/Camera;->K:Landroid/app/KeyguardManager;

    if-nez v3, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/oplus/camera/Camera;->K:Landroid/app/KeyguardManager;

    .line 409
    :cond_1
    iget-object v3, p0, Lcom/oplus/camera/Camera;->K:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate, isKeyguardLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_2

    .line 414
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f100205

    .line 416
    invoke-virtual {p0, p1}, Lcom/oplus/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera;->a(Ljava/lang/String;)V

    return-void

    .line 422
    :cond_2
    :try_start_0
    new-instance v3, Lcom/oplus/camera/ComboPreferences;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    .line 425
    new-instance v4, Lcom/oplus/camera/ComboPreferences;

    invoke-direct {v4, v3}, Lcom/oplus/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    .line 428
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->t()V

    .line 429
    iget-object v3, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v3, v4, p0, v5, p1}, Lcom/oplus/camera/entry/b;->a(Landroid/content/Intent;Landroid/app/Activity;Landroid/content/SharedPreferences;Landroid/os/Bundle;)V

    .line 430
    new-instance v3, Lcom/oplus/camera/h;

    iget-object v4, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-direct {v3, p0, v4}, Lcom/oplus/camera/h;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;)V

    iput-object v3, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    .line 431
    iget-object v3, p0, Lcom/oplus/camera/Camera;->G:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 433
    iget-object v3, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    const/4 v4, 0x0

    const-string v5, "pref_camera_statement_key"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    iput-boolean v4, p0, Lcom/oplus/camera/Camera;->w:Z

    goto :goto_1

    .line 436
    :cond_3
    iget-object v3, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    invoke-virtual {v3}, Lcom/oplus/camera/h;->e()Z

    move-result v3

    iput-boolean v3, p0, Lcom/oplus/camera/Camera;->w:Z

    .line 439
    :goto_1
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/MyApplication;->a(Landroid/content/Context;)V

    .line 440
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/e/a;->a(Landroid/content/Context;)V

    .line 441
    iget-object v3, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/oplus/camera/CameraManager;->y(Z)V

    .line 443
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    iget-object v3, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    iget-object v6, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    iget-boolean v7, p0, Lcom/oplus/camera/Camera;->w:Z

    invoke-virtual {v1, v3, v6, v7}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/entry/b;Z)V

    const-string v1, "beforeSetContentView"

    .line 447
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 449
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Landroid/app/Activity;)V

    .line 450
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/camera/util/Util;->e(Landroid/content/Context;)V

    .line 452
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->u()V

    .line 454
    iget-object v3, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    iget-object v6, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v6}, Lcom/oplus/camera/CameraManager;->aX()Lcom/oplus/camera/h$a;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h$a;)V

    .line 456
    iget-object v3, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v3}, Lcom/oplus/camera/entry/b;->m()I

    move-result v3

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    .line 457
    invoke-virtual {v3, v5}, Lcom/oplus/camera/entry/b;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "portrait"

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "com.oplus.aysnc.init.blur.algo.support"

    .line 458
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "onCreate, OplusBlurInitThread, start"

    .line 459
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v3

    new-instance v5, Lcom/oplus/camera/Camera$18;

    invoke-direct {v5, p0}, Lcom/oplus/camera/Camera$18;-><init>(Lcom/oplus/camera/Camera;)V

    const-string v6, "OplusBlurInitThread"

    invoke-virtual {v3, v5, v6}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_4
    const-string v3, "com.oplus.feature.screen.bright.support"

    .line 470
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 471
    sget-object v5, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v3, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v3}, Lcom/oplus/camera/entry/b;->J()I

    move-result v7

    const-string v3, "com.oplus.feature.torch.softlight.support"

    .line 472
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v8

    const-string v3, "com.oplus.feature.screen.bright.value"

    .line 473
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v9

    const-string v3, "com.oplus.feature.screen.bright.video.value"

    .line 474
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v10

    const-string v3, "com.oplus.feature.screen.bright.threshold"

    .line 475
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v11

    const-string v3, "com.oplus.feature.screen.bright.recover.threshold"

    .line 476
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v12

    const-string v3, "com.oplus.front.inverse.color"

    .line 477
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigColorValue(Ljava/lang/String;)I

    move-result v13

    move-object v6, p0

    .line 471
    invoke-virtual/range {v5 .. v13}, Lcom/oplus/camera/ui/inverse/e;->init(Landroid/content/Context;IZIIIII)V

    .line 480
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    sget v5, Lcom/oplus/camera/util/Util;->a:I

    if-eq v3, v5, :cond_6

    .line 481
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 484
    :cond_6
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->n(Landroid/content/Context;)V

    .line 486
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v3

    new-instance v5, Lcom/oplus/camera/Camera$19;

    invoke-direct {v5, p0}, Lcom/oplus/camera/Camera$19;-><init>(Lcom/oplus/camera/Camera;)V

    const-string v6, "CameraInit"

    invoke-virtual {v3, v5, v6}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 494
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 496
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p1

    if-nez p1, :cond_7

    .line 497
    invoke-static {}, Lcom/coui/appcompat/a/t;->a()Lcom/coui/appcompat/a/t;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/a/t;->a(Landroid/content/Context;)V

    goto :goto_2

    :cond_7
    const p1, 0x7f110329

    .line 499
    invoke-virtual {p0, p1}, Lcom/oplus/camera/Camera;->setTheme(I)V

    .line 502
    :goto_2
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const-string p1, "setContentView"

    .line 504
    invoke-static {p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const v1, 0x7f0c0031

    .line 506
    invoke-virtual {p0, v1}, Lcom/oplus/camera/Camera;->setContentView(I)V

    .line 508
    invoke-static {p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setForceDarkAllowed(Z)V

    .line 511
    iget-object p1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ae()V

    .line 512
    iget-object p1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    invoke-virtual {p1}, Lcom/oplus/camera/h;->a()V

    .line 515
    :try_start_1
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "keyguard_start_timestamp"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 517
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    :goto_3
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->w()V

    .line 521
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera;->c(Landroid/content/Intent;)V

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/oplus/camera/perf/FluencyPerformance;->a(J)V

    .line 523
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    iput p1, p0, Lcom/oplus/camera/Camera;->u:I

    .line 524
    invoke-static {}, Lcom/oplus/camera/util/Util;->aE()V

    .line 525
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->j(Landroid/content/Context;)V

    .line 527
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate X, this: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/oplus/camera/h;->b()V

    .line 890
    iput-object v2, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    .line 893
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->y:Z

    if-nez v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->ag()V

    .line 897
    :cond_1
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDestroy()V

    .line 899
    invoke-static {}, Lcom/oplus/camera/update/UpdateUtil;->release()V

    .line 900
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->y()V

    const/4 v0, 0x1

    .line 902
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->v:Z

    const/4 v0, 0x0

    .line 903
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->y:Z

    .line 905
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/inverse/e;->release(Landroid/content/Context;)V

    .line 906
    invoke-static {p0}, Lcom/oplus/camera/ui/a;->b(Landroid/content/Context;)V

    .line 908
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_3

    .line 909
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    if-eqz v0, :cond_2

    .line 910
    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onDestroy, forceResetDeviceStateClosed when isLockScreenStart"

    .line 912
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->ba()V

    .line 917
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->ak()V

    .line 918
    iput-object v2, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    .line 921
    :cond_3
    invoke-static {}, Lcom/oplus/camera/aps/config/CameraConfig;->release()V

    .line 922
    invoke-static {}, Lcom/oplus/camera/util/Util;->aF()V

    .line 923
    invoke-static {}, Lcom/oplus/camera/util/Util;->n()V

    .line 924
    invoke-static {}, Lcom/oplus/camera/ui/preview/a/j;->y()V

    .line 926
    iget-object v0, p0, Lcom/oplus/camera/Camera;->D:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_4

    .line 927
    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 928
    iput-object v2, p0, Lcom/oplus/camera/Camera;->D:Landroid/content/ServiceConnection;

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_5

    .line 932
    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->unbindService(Landroid/content/ServiceConnection;)V

    .line 933
    iput-object v2, p0, Lcom/oplus/camera/Camera;->J:Landroid/content/ServiceConnection;

    :cond_5
    const-string v0, "com.oplus.stop.service.on.destroy.support"

    .line 936
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 937
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->D()V

    .line 940
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    if-eqz v0, :cond_7

    .line 941
    invoke-virtual {v0, p0}, Lcom/oplus/camera/ComboPreferences;->a(Landroid/content/Context;)V

    .line 942
    iput-object v2, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    .line 945
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    if-eqz v0, :cond_8

    .line 946
    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->G()V

    .line 947
    iput-object v2, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    .line 950
    :cond_8
    invoke-static {}, Lcom/oplus/camera/MyApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 951
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 954
    :cond_9
    invoke-static {}, Lcom/oplus/camera/util/Util;->ae()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 955
    invoke-static {}, Lcom/oplus/camera/MyApplication;->h()V

    .line 958
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 879
    invoke-super {p0}, Landroidx/appcompat/app/c;->onDetachedFromWindow()V

    const-string p0, "OplusCamera"

    const-string v0, "onDetachedFromWindow"

    .line 881
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyDown, keycode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->v:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1018
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/CameraManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1022
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp, keyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->v:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/CameraManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 1037
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 549
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    const p1, 0x7f100205

    .line 552
    invoke-virtual {p0, p1}, Lcom/oplus/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->y(Z)V

    .line 559
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "OplusCamera"

    const-string v1, "onNewIntent"

    .line 561
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/entry/b;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->u()V

    :try_start_0
    const-string v0, "keyguard_start_timestamp"

    .line 570
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/CameraManager;->a(Landroid/content/Intent;)V

    .line 577
    invoke-direct {p0, p1}, Lcom/oplus/camera/Camera;->c(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 6

    const-string v0, "camera_exit_onpause_start"

    .line 751
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/oplus/camera/perf/FluencyPerformance;->b(JZ)V

    .line 757
    iget-object v2, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oplus/camera/CameraManager;->y(Z)V

    .line 758
    iget-object v2, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->ab()V

    .line 760
    invoke-static {}, Lcom/oplus/camera/ui/control/g;->a()V

    .line 762
    iput-boolean v0, p0, Lcom/oplus/camera/Camera;->v:Z

    .line 764
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    new-instance v2, Lcom/oplus/camera/Camera$22;

    invoke-direct {v2, p0}, Lcom/oplus/camera/Camera$22;-><init>(Lcom/oplus/camera/Camera;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;J)V

    .line 776
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Lcom/oplus/camera/Camera;->z()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->o(Z)V

    .line 778
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oplus/camera/Camera;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "onPause, clear light gallery cache"

    .line 779
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/c/a/a;->a(Landroid/content/Context;)V

    .line 782
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/c/a/a;->b(Landroid/content/Context;)V

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ComboPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    const-wide/16 v4, 0x7d0

    .line 787
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/Camera;->a(J)V

    .line 789
    invoke-super {p0}, Landroidx/appcompat/app/c;->onPause()V

    .line 791
    iget-object v0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->E()V

    .line 794
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->w:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aY()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    .line 795
    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->i()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    .line 796
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aY()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->g()Z

    move-result v0

    if-nez v0, :cond_4

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/entry/b;->c(Z)V

    .line 800
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->B()V

    .line 801
    invoke-static {}, Lcom/oplus/camera/util/Util;->s()V

    .line 802
    invoke-static {p0}, Lcom/oplus/camera/update/UpdateUtil;->getInstance(Landroid/content/Context;)Lcom/oplus/camera/update/UpdateUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/update/UpdateUtil;->onPause()V

    .line 803
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->C()V

    .line 805
    iget-object v0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    if-eqz v0, :cond_5

    .line 806
    invoke-virtual {v0}, Lcom/oplus/camera/h;->c()V

    .line 809
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1563
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult, requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    .line 1565
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    if-eqz v0, :cond_0

    .line 1569
    new-instance v1, Lcom/oplus/camera/Camera$15;

    invoke-direct {v1, p0}, Lcom/oplus/camera/Camera$15;-><init>(Lcom/oplus/camera/Camera;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oplus/camera/h;->a(I[Ljava/lang/String;[ILcom/oplus/camera/h$e;)V

    .line 1592
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/h;->a(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const-string v0, "CameraStartupPerformance.onCameraActivityResume"

    .line 620
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume, this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbDisplayOnLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mVersionInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/camera/Camera;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OplusCamera"

    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->F()V

    .line 627
    invoke-super {p0}, Landroidx/appcompat/app/c;->onResume()V

    .line 630
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-string v1, "device_policy"

    .line 631
    invoke-virtual {p0, v1}, Lcom/oplus/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    const/4 v5, 0x0

    .line 633
    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "onResume, camera disabled, finish"

    .line 634
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iput-boolean v4, p0, Lcom/oplus/camera/Camera;->v:Z

    .line 637
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    const-string v5, "pref_camera_statement_key"

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1, v5, v6}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 645
    iput-boolean v6, p0, Lcom/oplus/camera/Camera;->w:Z

    goto :goto_0

    .line 647
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    invoke-virtual {v1}, Lcom/oplus/camera/h;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/camera/Camera;->w:Z

    .line 650
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1, v5, v6}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    iget-object v7, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v7}, Lcom/oplus/camera/CameraManager;->aW()Lcom/oplus/camera/h$b;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h$b;)V

    .line 655
    :cond_2
    iget-boolean v1, p0, Lcom/oplus/camera/Camera;->w:Z

    if-eqz v1, :cond_3

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->v()V

    .line 659
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/Camera;->I:Lcom/oplus/camera/h;

    if-eqz v1, :cond_4

    .line 660
    invoke-virtual {v1}, Lcom/oplus/camera/h;->d()V

    .line 663
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    sget v7, Lcom/oplus/camera/util/Util;->a:I

    if-eq v1, v7, :cond_5

    .line 664
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 667
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    sget v7, Lcom/oplus/camera/util/Util;->a:I

    if-eq v1, v7, :cond_6

    .line 669
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/util/Util;->q(Landroid/content/Context;)Landroid/content/Context;

    .line 672
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1, v5, v6}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_7

    .line 673
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->s()V

    .line 676
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/oplus/camera/Camera;->E:J

    .line 677
    iput-boolean v6, p0, Lcom/oplus/camera/Camera;->v:Z

    .line 678
    iput-boolean v6, p0, Lcom/oplus/camera/Camera;->x:Z

    .line 680
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    new-instance v5, Lcom/oplus/camera/Camera$20;

    invoke-direct {v5, p0}, Lcom/oplus/camera/Camera$20;-><init>(Lcom/oplus/camera/Camera;)V

    const-wide/16 v7, 0x0

    invoke-virtual {v1, v5, v7, v8}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/Runnable;J)V

    .line 693
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/camera/Storage;->b(Landroid/content/Context;)V

    .line 694
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->n(Landroid/content/Context;)V

    .line 696
    iget-object v1, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {v1, p0}, Lcom/oplus/camera/ComboPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 697
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    iget-boolean v5, p0, Lcom/oplus/camera/Camera;->w:Z

    invoke-static {}, Lcom/oplus/camera/util/Util;->aP()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/camera/Camera;->b(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v1, v5, v7}, Lcom/oplus/camera/CameraManager;->d(ZZ)V

    .line 698
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->B()V

    .line 699
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, v6}, Lcom/oplus/camera/CameraManager;->q(Z)V

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->b()Z

    move-result v1

    iget-object v5, p0, Lcom/oplus/camera/Camera;->B:Lcom/oplus/camera/ComboPreferences;

    iget-object v7, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    .line 701
    invoke-virtual {v7}, Lcom/oplus/camera/entry/b;->J()I

    move-result v7

    .line 700
    invoke-static {p0, v1, v5, v7}, Lcom/oplus/camera/l/c;->a(Landroid/app/Activity;ZLcom/oplus/camera/ComboPreferences;I)V

    .line 702
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->p()V

    .line 703
    invoke-direct {p0}, Lcom/oplus/camera/Camera;->x()V

    .line 704
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/oplus/camera/l/c;->a(Landroid/content/ContentResolver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 705
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 705
    :goto_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->r()V

    .line 707
    iget-boolean v1, p0, Lcom/oplus/camera/Camera;->F:Z

    if-nez v1, :cond_a

    .line 708
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 709
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v5, 0x100

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    .line 710
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v5, -0x10001

    const/high16 v7, 0x10000

    invoke-virtual {v1, v5, v7}, Landroid/view/Window;->setFlags(II)V

    .line 712
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v5, -0x80000000

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    .line 713
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 714
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setNavigationBarColor(I)V

    :cond_8
    const/16 v1, 0x1b

    .line 717
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v5, :cond_9

    .line 718
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v5, 0x1604

    invoke-virtual {v1, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 722
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 723
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 724
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 727
    :cond_9
    iput-boolean v4, p0, Lcom/oplus/camera/Camera;->F:Z

    .line 730
    :cond_a
    invoke-static {}, Lcom/oplus/camera/util/Util;->aL()V

    .line 732
    invoke-static {}, Lcom/oplus/camera/MyApplication;->e()V

    .line 733
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, v4}, Lcom/oplus/camera/CameraManager;->z(Z)V

    .line 735
    iget-object v1, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->bb()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 736
    iget-object v1, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    new-instance v4, Lcom/oplus/camera/Camera$21;

    invoke-direct {v4, p0}, Lcom/oplus/camera/Camera$21;-><init>(Lcom/oplus/camera/Camera;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 744
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume X, this: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1603
    iget-boolean v0, p0, Lcom/oplus/camera/Camera;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "pref_subsetting_key"

    .line 1604
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_pi_ai_mode_key"

    .line 1605
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1609
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_1

    .line 1610
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 611
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStart()V

    .line 613
    invoke-static {}, Lcom/oplus/camera/MyApplication;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 5

    const-string v0, "camera_exit_onstop_start"

    .line 819
    invoke-static {v0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    .line 820
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/perf/FluencyPerformance;->b(JZ)V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbExitCameraUseBackKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/camera/Camera;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mKeyguardStartTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusCamera"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    iget-object v3, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->aT()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Lcom/oplus/camera/entry/b;->d(Z)V

    .line 826
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/inverse/e;->clear()V

    .line 828
    invoke-super {p0}, Landroidx/appcompat/app/c;->onStop()V

    .line 830
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_1

    .line 831
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->a()V

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/oplus/camera/l/c;->a(Landroid/content/ContentResolver;I)V

    .line 837
    iget-object v0, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move-object v3, v2

    goto :goto_1

    .line 840
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 843
    :goto_1
    iput-object v2, p0, Lcom/oplus/camera/Camera;->A:Ljava/lang/String;

    .line 845
    iget-object v0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->Z()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 846
    invoke-virtual {p0, v4}, Lcom/oplus/camera/Camera;->setTurnScreenOn(Z)V

    const-string v0, "onStop, setTurnScreenOn false"

    .line 848
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.oplus.camera.extra.IS_VOICE_INTERACTION_ROOT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 857
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 860
    :goto_2
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 861
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->finish()V

    .line 864
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop X, this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", timeStamp: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->k(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/oplus/camera/perf/CameraExitPerformance;->setOnStopMemory(J)V

    const-string p0, "camera_exit_onstop_end"

    .line 867
    invoke-static {p0}, Lcom/oplus/camera/perf/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .line 1125
    invoke-super {p0}, Landroidx/appcompat/app/c;->onUserInteraction()V

    .line 1126
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->p()V

    .line 1128
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->z()V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/oplus/camera/Camera;->H:Lcom/oplus/camera/entry/b;

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->t()V

    .line 1136
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/Camera;->mCameraManager:Lcom/oplus/camera/CameraManager;

    if-eqz p0, :cond_2

    .line 1137
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aZ()V

    :cond_2
    return-void
.end method

.method public p()V
    .locals 4

    const-string v0, "OplusCamera"

    const-string v1, "keepScreenOnAwhile"

    .line 1546
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget-object v0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1549
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1550
    iget-object p0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    sget v0, Lcom/oplus/camera/Camera;->p:I

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public q()V
    .locals 2

    const-string v0, "OplusCamera"

    const-string v1, "keepScreenOn"

    .line 1555
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/oplus/camera/Camera;->r:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1558
    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public r()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1597
    invoke-virtual {p0, v0}, Lcom/oplus/camera/Camera;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()V
    .locals 5

    const-string v0, "OplusCamera"

    const-string v1, "copyOdmFileToCache"

    .line 1777
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anc_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1783
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1784
    new-instance v2, Ljava/io/File;

    const-string v3, "odm/etc/camera/megvii/anc_cache"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1787
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1789
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v1

    new-instance v2, Lcom/oplus/camera/Camera$16;

    invoke-direct {v2, p0, v3, v0}, Lcom/oplus/camera/Camera$16;-><init>(Lcom/oplus/camera/Camera;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Video blur and retention cache copy"

    invoke-virtual {v1, v2, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
