.class public Lcom/oplus/camera/aps/service/ApsService;
.super Landroid/app/Service;
.source "ApsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/aps/service/ApsService$ApsFailure;,
        Lcom/oplus/camera/aps/service/ApsService$LocalBinder;
    }
.end annotation


# static fields
.field private static final BURST_SHOT_TEMP_DIRECTORY_FLAG:Ljava/lang/String; = ".cshot"

.field private static final SELF_PROTECT_ADD_TIME:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "ApsService"

.field private static final WAIT_THUMBNAIL_UPDATE_TIME_LIMIT:I = 0x1770


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mBurstShotPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

.field private final mBurstShotTempDirectoryLock:Ljava/lang/Object;

.field private mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

.field private mCameraPictureListener:Lcom/oplus/ocs/camera/CameraPictureCallback;

.field private mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

.field private mCaptureCallback:Lcom/oplus/camera/e/d$a;

.field private mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

.field private mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

.field private mLastProcessTimeStamp:J

.field private mLatestThumbnailIdentity:J

.field private mMaxBurstShotIdentity:J

.field private final mOplusWhiteListLock:Ljava/lang/Object;

.field private mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

.field private mStateObserver:Lcom/oplus/camera/e/d$e;

.field private mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/oplus/camera/aps/service/ThumbnailCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mThumbnailMapLock:Ljava/lang/Object;

.field private mThumbnailUpdateSig:Landroid/os/ConditionVariable;

.field private mbCapturing:Z

.field private mbHeicCodecOpen:Z

.field private mbHighPictureSize:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Lcom/oplus/camera/aps/service/ApsService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/oplus/camera/aps/service/ApsService$LocalBinder;-><init>(Lcom/oplus/camera/aps/service/ApsService;)V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBinder:Landroid/os/IBinder;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotTempDirectoryLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    .line 79
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0x0

    .line 80
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    .line 81
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailUpdateSig:Landroid/os/ConditionVariable;

    const/4 v3, 0x0

    .line 82
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mbCapturing:Z

    .line 84
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureCallback:Lcom/oplus/camera/e/d$a;

    .line 85
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mStateObserver:Lcom/oplus/camera/e/d$e;

    .line 86
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    .line 87
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureListener:Lcom/oplus/ocs/camera/CameraPictureCallback;

    .line 88
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 89
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHeicCodecOpen:Z

    .line 90
    iput-boolean v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHighPictureSize:Z

    .line 91
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLastProcessTimeStamp:J

    .line 92
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 93
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mMaxBurstShotIdentity:J

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 96
    new-instance v0, Lcom/oplus/camera/aps/service/ApsService$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/aps/service/ApsService$1;-><init>(Lcom/oplus/camera/aps/service/ApsService;)V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$a;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureCallback:Lcom/oplus/camera/e/d$a;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oplus/camera/aps/service/ApsService;J)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->createBurstShotFlagFile(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/oplus/camera/aps/service/ApsService;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mbCapturing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oplus/camera/aps/service/ApsService;J)Z
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->deleteBurstShotFlagFile(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/oplus/camera/aps/service/ApsService;)J
    .locals 2

    .line 68
    iget-wide v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mLastProcessTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/oplus/camera/aps/service/ApsService;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLastProcessTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/oplus/camera/aps/service/ApsService;J)J
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/statistics/model/CaptureMsgData;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oplus/camera/aps/service/ApsService;ILjava/util/Map;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->fillParameters(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureListener:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/aps/service/CaptureRequestParam;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oplus/camera/aps/service/ApsService;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oplus/camera/aps/service/ApsService;)Lcom/oplus/camera/e/d$e;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mStateObserver:Lcom/oplus/camera/e/d$e;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oplus/camera/aps/service/ApsService;)Ljava/lang/Object;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oplus/camera/aps/service/ApsService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oplus/camera/aps/service/ApsService;Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/aps/service/ApsService;->savePicture(Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oplus/camera/aps/service/ApsService;JLcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/aps/service/ApsService;->pictureSaveEnd(JLcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    return-void
.end method

.method private addStageProtectInfo(Ljava/lang/String;)V
    .locals 6

    .line 775
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/OplusWhiteListManager;->getStageProtectListFromPkg(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 778
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StageProtectList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "["

    .line 781
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, "ApsService"

    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addStageProtectInfo, nameBuilder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ApsService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    const-wide/32 v1, 0x927c0

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/OplusWhiteListManager;->addStageProtectInfo(Ljava/lang/String;J)V

    .line 790
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private closeParcelFD(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 997
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeParcelFD, close parcelFD error, parcelFD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsService"

    invoke-static {v0, p1, p0}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private createBurstShotFlagFile(J)Z
    .locals 5

    .line 618
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotTempDirectoryLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    const-string v0, "ApsService"

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBurstShotFlagFile, burstShotFlagId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 627
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/oplus/camera/Storage;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 634
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 635
    new-instance v2, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 638
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "ApsService"

    const-string p2, "createBurstShotFlagFile, make directory"

    .line 639
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 644
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const-string p1, "ApsService"

    .line 645
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createBurstShotFlagFile, path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 650
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    const-string p1, "ApsService"

    const-string p2, "createBurstShotFlagFile, Exception"

    .line 654
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_4
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 658
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 765
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p2, -0xff0100

    .line 766
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 767
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p2, "notification"

    .line 768
    invoke-virtual {p0, p2}, Lcom/oplus/camera/aps/service/ApsService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 769
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object p1
.end method

.method private deleteBurstShotFlagFile(J)Z
    .locals 6

    .line 662
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotTempDirectoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApsService"

    .line 663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteBurstShotFlagFile, burstShotFlagId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 671
    :try_start_1
    invoke-static {}, Lcom/oplus/camera/Storage;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/oplus/camera/Storage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 673
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/oplus/camera/Storage;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 677
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 678
    new-instance v3, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ApsService"

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteBurstShotFlagFile, path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v2, "ApsService"

    const-string v3, "deleteBurstShotFlagFile, notify gallery start"

    .line 686
    invoke-static {v2, v3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ApsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "on"

    .line 689
    sget-object v3, Lcom/oplus/camera/Storage;->u:Ljava/lang/String;

    .line 690
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/oplus/camera/Storage;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v1

    .line 689
    :goto_1
    invoke-static {p2}, Lcom/oplus/camera/Storage;->c(Z)Landroid/net/Uri;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p0, "ApsService"

    const-string p2, "deleteBurstShotFlagFile, notify gallery end"

    .line 692
    invoke-static {p0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, p1

    goto :goto_2

    :cond_2
    move v1, p2

    goto :goto_2

    :catch_0
    move-exception p0

    .line 695
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "ApsService"

    const-string p1, "deleteBurstShotFlagFile, Exception"

    .line 699
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 703
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private fillHeifFD(Lcom/oplus/camera/aps/service/ThumbnailItem;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/aps/service/ThumbnailItem;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1010
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "ApsService"

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "fillHeifFD"

    .line 1016
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/oplus/camera/aps/service/ApsService;->getParcelFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "fillHeifFD, parcelfd is null."

    .line 1021
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1026
    :cond_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "heif_fd"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1031
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void

    .line 1011
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fillHeifFD, param invalid, item: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillParameters(ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "identity"

    .line 538
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->getThumbnailItem(J)Lcom/oplus/camera/aps/service/ThumbnailItem;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ApsService"

    if-nez v1, :cond_1

    .line 541
    iget-boolean v4, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHeicCodecOpen:Z

    if-eqz v4, :cond_1

    const-string v4, "burst_shot"

    .line 543
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "fillApsParameters, get proper thumbnail null, wait."

    .line 544
    invoke-static {v3, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/aps/service/ApsService;->getThumbnailItem(J)Lcom/oplus/camera/aps/service/ThumbnailItem;

    move-result-object v2

    .line 547
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailUpdateSig:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 548
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailUpdateSig:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x1770

    invoke-virtual {v1, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 549
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/oplus/camera/aps/service/ApsService;->getThumbnailItem(J)Lcom/oplus/camera/aps/service/ThumbnailItem;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string p1, "fillApsParameters, use last thumbnailItem"

    .line 553
    invoke-static {v3, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_5

    .line 559
    iget-object p1, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    const-string v2, "heic_8bits"

    .line 560
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    const-string v2, "heic_10bits"

    .line 561
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_3
    const-string p1, "com.oplus.only.high.picture.size.heif.in.aps"

    .line 562
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHighPictureSize:Z

    if-eqz p1, :cond_5

    .line 564
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "heif_enable"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-direct {p0, v1, p2}, Lcom/oplus/camera/aps/service/ApsService;->fillHeifFD(Lcom/oplus/camera/aps/service/ThumbnailItem;Ljava/util/Map;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private getParcelFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const-string v0, "ApsService"

    const-string v1, "getParcelFileDescriptor, begin"

    .line 974
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "rw"

    .line 977
    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDescriptor, dup fd error, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    const-string v2, "getParcelFileDescriptor, end"

    .line 982
    invoke-static {v0, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileDescriptor, fd error, uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0, p1}, Lcom/oplus/camera/aps/service/ApsService;->closeParcelFD(Landroid/os/ParcelFileDescriptor;)V

    move-object p1, v1

    :cond_0
    return-object p1
.end method

.method private handleCaptureFailed(JII)V
    .locals 2

    .line 900
    iget-object p3, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    monitor-enter p3

    .line 901
    :try_start_0
    iget-object p4, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 902
    iget-object p4, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    iget-object p4, p4, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    invoke-virtual {p0, p4}, Lcom/oplus/camera/aps/service/ApsService;->deleteThumbnailAndCache(Lcom/oplus/camera/aps/service/ThumbnailItem;)V

    .line 905
    :cond_0
    iget-wide v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mLastProcessTimeStamp:J

    cmp-long p4, p1, v0

    if-eqz p4, :cond_1

    .line 906
    iget-object p4, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p4, "ApsService"

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCaptureFailed, timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", mThumbnailMap size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 911
    iput-wide p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    .line 912
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handlePreviewFailed(J)V
    .locals 0

    return-void
.end method

.method private pictureSaveEnd(JLcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 577
    sget-object v0, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {p3, v0}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 579
    iget-wide v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mMaxBurstShotIdentity:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 580
    iput-wide p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mMaxBurstShotIdentity:J

    .line 581
    iput-object p3, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const-wide/16 p1, 0x0

    .line 585
    iput-wide p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    .line 586
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ApsService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/aps/service/ApsService;->removeStageProtectInfo(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz p1, :cond_2

    .line 589
    iget-object p2, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraPictureCallback;->onBurstShotEnd(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mBurstShotPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 594
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pictureSaveEnd, remaining thumb info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApsService"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeStageProtectInfo(Ljava/lang/String;)V
    .locals 4

    .line 794
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    if-eqz v1, :cond_0

    const-string v1, "ApsService"

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStageProtectInfo, pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    invoke-virtual {p0, p1}, Landroid/app/OplusWhiteListManager;->removeStageProtectInfo(Ljava/lang/String;)V

    .line 800
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private savePicture(Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureX savePicture size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/oplus/camera/d;->d:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "32ct_savePicture"

    invoke-static {v2, v7, v5, v6}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getTimestamp()J

    move-result-wide v5

    .line 404
    iget-object v2, v1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    .line 405
    iget-object v8, v1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 407
    new-instance v9, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {v9}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 408
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 409
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mJpegName:Ljava/lang/String;

    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->g:Ljava/lang/String;

    .line 410
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getImage()[B

    move-result-object v10

    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    .line 411
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    .line 412
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v10

    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->o:I

    .line 413
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v10

    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->p:I

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getScanline()I

    move-result v10

    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->r:I

    .line 415
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getStride()I

    move-result v10

    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->q:I

    .line 416
    new-instance v10, Lcom/oplus/camera/aps/util/CameraApsExifData;

    iget-object v11, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    invoke-direct {v10, v11}, Lcom/oplus/camera/aps/util/CameraApsExifData;-><init>(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->b:Lcom/oplus/camera/aps/util/CameraApsExifData;

    if-eqz v2, :cond_0

    .line 419
    sget-object v10, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_REC_BURST_NUMBER:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v10}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_0

    :cond_0
    const/4 v10, -0x1

    :goto_0
    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->n:I

    .line 420
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getFormat()I

    move-result v10

    const/16 v11, 0x100

    if-ne v10, v11, :cond_1

    const-string v10, "jpeg"

    goto :goto_1

    :cond_1
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mPictureFormat:Ljava/lang/String;

    :goto_1
    iput-object v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const/4 v10, 0x1

    .line 421
    iput-boolean v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    .line 422
    iget-wide v11, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mTimeStamp:J

    iput-wide v11, v9, Lcom/oplus/camera/Storage$CameraPicture;->H:J

    .line 423
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getTimestamp()J

    move-result-wide v11

    iput-wide v11, v9, Lcom/oplus/camera/Storage$CameraPicture;->I:J

    .line 424
    iget-boolean v11, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbLockScreen:Z

    iput-boolean v11, v9, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    if-eqz v2, :cond_2

    .line 426
    sget-object v11, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_BURST_SHOT_FLAG_ID:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v11}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    goto :goto_2

    :cond_2
    const-wide/16 v11, -0x1

    :goto_2
    iput-wide v11, v9, Lcom/oplus/camera/Storage$CameraPicture;->m:J

    const/4 v11, 0x0

    if-eqz v2, :cond_3

    .line 428
    sget-object v12, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_CSHOT_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v12}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v12, v11

    :goto_3
    iput-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->k:Ljava/lang/String;

    .line 429
    iget-boolean v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbUltraHighResolution:Z

    iput-boolean v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->R:Z

    .line 430
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v13, Lcom/oplus/ocs/camera/CameraParameter;->HEIF_PROCESS_IN_APS:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v12, v13}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iput-boolean v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->W:Z

    .line 431
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v13, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v12, v13}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v13, Lcom/oplus/ocs/camera/CameraParameter;->RESULT_REQUEST_TAG:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    .line 432
    invoke-virtual {v12, v13}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oplus/camera/e/c;

    iget-boolean v12, v12, Lcom/oplus/camera/e/c;->aa:Z

    if-eqz v12, :cond_4

    move v12, v10

    goto :goto_4

    :cond_4
    const/4 v12, 0x0

    :goto_4
    iput-boolean v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->Y:Z

    .line 434
    iget-wide v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mDate:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 435
    iget-wide v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mDate:J

    iput-wide v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    goto :goto_5

    .line 437
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->l:J

    .line 440
    :goto_5
    iget-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->e:[B

    invoke-static {v12}, Lcom/oplus/camera/util/Util;->b([B)I

    move-result v12

    iput v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->t:I

    .line 441
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget-object v12, v12, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mPictureTakenCallback:Lcom/oplus/camera/a/d;

    iput-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->N:Lcom/oplus/camera/a/d;

    .line 442
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget-boolean v12, v12, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mbSuperTextOpen:Z

    iput-boolean v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->T:Z

    .line 444
    iget-wide v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    iget-wide v14, v0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_6

    .line 445
    iput-boolean v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->J:Z

    .line 448
    :cond_6
    iget-object v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mCameraUiUpdateThumbnail:Lcom/oplus/camera/ui/control/e$b;

    if-eqz v12, :cond_7

    .line 449
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget v12, v12, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mThumbWidth:I

    iput v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->u:I

    .line 450
    iget-object v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mCameraUiUpdateThumbnail:Lcom/oplus/camera/ui/control/e$b;

    iput-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->y:Lcom/oplus/camera/ui/control/e$b;

    .line 453
    :cond_7
    iget-object v12, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    if-nez v12, :cond_9

    iget-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v13, "heic_8bits"

    .line 454
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    iget-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->h:Ljava/lang/String;

    const-string v13, "heic_10bits"

    .line 455
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 456
    :cond_8
    iput-boolean v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->D:Z

    .line 459
    :cond_9
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v13, Lcom/oplus/ocs/camera/CameraParameter;->HAS_SUPER_TEXT_RESULT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v12, v13}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 460
    iget-object v13, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v14, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_WIDTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v13, v14}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 461
    iget-object v14, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v15, Lcom/oplus/ocs/camera/CameraParameter;->SUPER_TEXT_HEIGHT:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v14, v15}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v12, :cond_a

    .line 463
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget-object v12, v12, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

    if-eqz v12, :cond_a

    .line 464
    iget-object v12, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget-object v12, v12, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mSuperTextResultProcessor:Lcom/oplus/camera/a/e;

    iput-object v12, v9, Lcom/oplus/camera/Storage$CameraPicture;->K:Lcom/oplus/camera/a/e;

    .line 465
    iput-boolean v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->P:Z

    .line 466
    iget-object v10, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget v10, v10, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mCaptureOrientation:I

    iput v10, v9, Lcom/oplus/camera/Storage$CameraPicture;->Q:I

    .line 468
    new-instance v10, Lcom/oplus/camera/aps/service/ApsService$2;

    invoke-direct {v10, v0, v14, v13, v9}, Lcom/oplus/camera/aps/service/ApsService$2;-><init>(Lcom/oplus/camera/aps/service/ApsService;IILcom/oplus/camera/Storage$CameraPicture;)V

    invoke-static {v10}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    .line 507
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "savePicture, picture: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", thumbnailItem: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "ApsService"

    invoke-static {v12, v10}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mProductProcessor:Lcom/oplus/camera/a/b;

    if-eqz v10, :cond_b

    .line 510
    iget-object v10, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mProductProcessor:Lcom/oplus/camera/a/b;

    invoke-interface {v10, v9}, Lcom/oplus/camera/a/b;->a(Lcom/oplus/camera/Storage$CameraPicture;)V

    goto :goto_6

    .line 512
    :cond_b
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/oplus/camera/m/b;->c(Lcom/oplus/camera/Storage$CameraPicture;)V

    .line 515
    :goto_6
    iget-boolean v8, v8, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbBurstShot:Z

    if-nez v8, :cond_c

    iget-object v8, v1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    if-eqz v8, :cond_c

    .line 516
    iget-object v8, v0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    sget-object v10, Lcom/oplus/ocs/camera/CameraParameter;->NOISE_REDUCTION_STRENGTH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v8, v10}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 517
    iget-object v10, v1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    shr-int/lit8 v12, v8, 0x4

    and-int/lit8 v12, v12, 0xf

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v10, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mMultiFrameNum:Ljava/lang/String;

    .line 518
    iget-object v10, v1, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    and-int/lit8 v8, v8, 0xf

    sub-int/2addr v12, v8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/oplus/camera/statistics/model/CaptureMsgData;->mLostFrameNum:Ljava/lang/String;

    .line 520
    iget-object v8, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    iget-object v8, v8, Lcom/oplus/camera/aps/service/CaptureRequestParam;->mApsServiceListener:Lcom/oplus/camera/CameraManager$a;

    invoke-virtual {v8, v1, v9}, Lcom/oplus/camera/CameraManager$a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 521
    iput-object v11, v0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    .line 524
    :cond_c
    invoke-direct {v0, v5, v6, v2}, Lcom/oplus/camera/aps/service/ApsService;->pictureSaveEnd(JLcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/oplus/camera/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startForeground()V
    .locals 3

    .line 750
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-le v0, v2, :cond_0

    const v0, 0x7f1000b2

    .line 751
    invoke-virtual {p0, v0}, Lcom/oplus/camera/aps/service/ApsService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.ocs.camera"

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/aps/service/ApsService;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v2, Landroidx/core/app/h$d;

    invoke-direct {v2, p0, v0}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v2, v1}, Landroidx/core/app/h$d;->a(Z)Landroidx/core/app/h$d;

    move-result-object v0

    const/4 v2, -0x2

    .line 754
    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object v0

    const-string v2, "service"

    .line 755
    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->a(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v0

    .line 757
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/aps/service/ApsService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 759
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/aps/service/ApsService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addThumbnailInfo(Lcom/oplus/camera/aps/service/ThumbnailItem;)V
    .locals 6

    .line 828
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 829
    :try_start_0
    iget-wide v1, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mIdentity:J

    const-string v3, "ApsService"

    .line 831
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addThumbnailInfo, timeStamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mThumbnailMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget-object v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_2

    .line 836
    iget-wide v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 837
    iput-wide v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mLatestThumbnailIdentity:J

    .line 840
    :cond_0
    iget-object v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 841
    iget-object v3, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    .line 842
    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 844
    invoke-virtual {v3}, Lcom/oplus/camera/aps/service/ThumbnailCategory;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCameraPictureImage:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    if-eqz p1, :cond_2

    .line 845
    iget-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mCameraPictureImage:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;

    invoke-direct {p0, v3, p1}, Lcom/oplus/camera/aps/service/ApsService;->savePicture(Lcom/oplus/camera/aps/service/ThumbnailCategory;Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureImage;)V

    .line 846
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 849
    :cond_1
    new-instance v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    invoke-direct {v3}, Lcom/oplus/camera/aps/service/ThumbnailCategory;-><init>()V

    .line 850
    iput-object p1, v3, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    .line 851
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ApsService;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/camera/aps/service/ApsService;->addStageProtectInfo(Ljava/lang/String;)V

    .line 856
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailUpdateSig:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 857
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containThumbnailInfo(J)Z
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 863
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deleteThumbnailAndCache(Lcom/oplus/camera/aps/service/ThumbnailItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 868
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteThumbnailAndCache, thumbnailItem: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/aps/service/ThumbnailItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ApsService"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    new-instance p0, Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Lcom/oplus/camera/Storage$CameraPicture;-><init>()V

    .line 871
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->a:Landroid/content/ContentResolver;

    .line 872
    iget-object v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 873
    iput-boolean v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->v:Z

    .line 874
    iget-boolean v0, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mbLockScreen:Z

    iput-boolean v0, p0, Lcom/oplus/camera/Storage$CameraPicture;->E:Z

    .line 875
    iget-object p1, p1, Lcom/oplus/camera/aps/service/ThumbnailItem;->mUpdateLastThumbTask:Lcom/oplus/camera/ui/control/e$b;

    iput-object p1, p0, Lcom/oplus/camera/Storage$CameraPicture;->z:Lcom/oplus/camera/ui/control/e$b;

    .line 878
    invoke-static {}, Lcom/oplus/camera/m/b;->a()Lcom/oplus/camera/m/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/camera/m/b;->c(Lcom/oplus/camera/Storage$CameraPicture;)V

    :cond_0
    return-void
.end method

.method public getCameraPictureCallback()Lcom/oplus/ocs/camera/CameraPictureCallback;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureCallback:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-object p0
.end method

.method public getSloganPathsInUse()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 804
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 806
    iget-object v1, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 807
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    .line 812
    iget-object v2, v2, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mPictureResult:Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;

    if-eqz v2, :cond_1

    .line 815
    sget-object v3, Lcom/oplus/ocs/camera/CameraParameter;->IMAGE_CATEGORY_WATERMARK_PATH:Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;

    invoke-virtual {v2, v3}, Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;->get(Lcom/oplus/ocs/camera/CameraParameter$CaptureResultKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :cond_2
    monitor-exit v1

    return-object v0

    .line 808
    :cond_3
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    .line 818
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getThumbnailItem(J)Lcom/oplus/camera/aps/service/ThumbnailItem;
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mThumbnailMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;

    if-eqz p0, :cond_0

    .line 965
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ThumbnailCategory;->mThumbnailItem:Lcom/oplus/camera/aps/service/ThumbnailItem;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isApsProcessing()Z
    .locals 0

    .line 824
    iget-boolean p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mbCapturing:Z

    return p0
.end method

.method public notifyErrorType(Lcom/oplus/camera/aps/service/ApsService$ApsFailure;)V
    .locals 3

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyErrorType, failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsService"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget v0, p1, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 891
    :cond_0
    iget-wide v0, p1, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mFrameNumber:J

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/aps/service/ApsService;->handlePreviewFailed(J)V

    goto :goto_0

    .line 887
    :cond_1
    iget-wide v0, p1, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mTimestamp:J

    iget v2, p1, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mImageNums:I

    iget p1, p1, Lcom/oplus/camera/aps/service/ApsService$ApsFailure;->mMergeNums:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/oplus/camera/aps/service/ApsService;->handleCaptureFailed(JII)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 709
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBind, this: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsService"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListLock:Ljava/lang/Object;

    monitor-enter p1

    .line 712
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Landroid/app/OplusWhiteListManager;

    invoke-direct {v0, p0}, Landroid/app/OplusWhiteListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/camera/aps/service/ApsService;->mOplusWhiteListManager:Landroid/app/OplusWhiteListManager;

    .line 715
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget-object p0, p0, Lcom/oplus/camera/aps/service/ApsService;->mBinder:Landroid/os/IBinder;

    return-object p0

    :catchall_0
    move-exception p0

    .line 715
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "ApsService"

    const-string v1, "onCreate"

    .line 722
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 726
    invoke-direct {p0}, Lcom/oplus/camera/aps/service/ApsService;->startForeground()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ApsService"

    const-string v1, "onDestroy"

    .line 731
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 733
    invoke-virtual {p0, v0}, Lcom/oplus/camera/aps/service/ApsService;->stopForeground(Z)V

    .line 735
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "ApsService"

    const-string v1, "onStartCommand"

    .line 740
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 744
    invoke-direct {p0}, Lcom/oplus/camera/aps/service/ApsService;->startForeground()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCameraPictureListener(Lcom/oplus/ocs/camera/CameraPictureCallback;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mCameraPictureListener:Lcom/oplus/ocs/camera/CameraPictureCallback;

    return-void
.end method

.method public setCaptureCallback(Lcom/oplus/camera/e/d$a;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureCallback:Lcom/oplus/camera/e/d$a;

    return-void
.end method

.method public setCaptureMsgData(Lcom/oplus/camera/statistics/model/CaptureMsgData;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureMsgData:Lcom/oplus/camera/statistics/model/CaptureMsgData;

    return-void
.end method

.method public setCaptureRequestParam(Lcom/oplus/camera/aps/service/CaptureRequestParam;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mCaptureRequestParam:Lcom/oplus/camera/aps/service/CaptureRequestParam;

    return-void
.end method

.method public setHeicCodecOpen(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHeicCodecOpen:Z

    return-void
.end method

.method public setHighPictureSize(Z)V
    .locals 0

    .line 1040
    iput-boolean p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mbHighPictureSize:Z

    return-void
.end method

.method public setStateObserver(Lcom/oplus/camera/e/d$e;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/oplus/camera/aps/service/ApsService;->mStateObserver:Lcom/oplus/camera/e/d$e;

    return-void
.end method
