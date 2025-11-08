.class public final Lcom/oplus/ocs/camera/CameraUnitClient;
.super Lcom/oplus/ocs/base/common/api/g;
.source "CameraUnitClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/camera/CameraUnitClient$BokehState;,
        Lcom/oplus/ocs/camera/CameraUnitClient$CameraMode;,
        Lcom/oplus/ocs/camera/CameraUnitClient$CameraType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/ocs/base/common/api/g<",
        "Ljava/lang/Object;",
        "Lcom/oplus/ocs/camera/CameraUnitClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final API:Lcom/oplus/ocs/base/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final BLUR_VALUE_DEFAULT:I = 0x3c

.field private static final CLIENT_BUILDER:Lcom/oplus/ocs/base/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/a$a<",
            "Lcom/oplus/ocs/camera/CameraClient;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_TEMPERATURE_AUTO:I = -0x1

.field private static final CUSTOMER_CODE:Lcom/oplus/ocs/base/common/api/a$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/common/api/a$f<",
            "Lcom/oplus/ocs/camera/CameraClient;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_BOKEH_STATE:Ljava/lang/String; = "BOKEH_STATE"

.field private static final SUPPORT_ASYNC_AUTH_VERSION:I = 0x493e1

.field private static final TAG:Ljava/lang/String; = "CameraUnitClient"

.field private static final mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/common/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sbAuthed:Z

.field private static sbSupportAsyncAuthenticate:Z


# instance fields
.field private mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

.field private mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

.field private mFailHandler:Landroid/os/Handler;

.field private mFailListener:Lcom/oplus/ocs/base/common/api/e;

.field private mSuccessHandler:Landroid/os/Handler;

.field private mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

.field private mbAuthFailedBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mbAuthFailedCode:I

.field private mbAuthSuccessBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFeatures:Ljava/util/List;

    .line 89
    new-instance v0, Lcom/oplus/ocs/base/common/api/a$f;

    invoke-direct {v0}, Lcom/oplus/ocs/base/common/api/a$f;-><init>()V

    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->CUSTOMER_CODE:Lcom/oplus/ocs/base/common/api/a$f;

    .line 90
    new-instance v0, Lcom/oplus/ocs/camera/CameraClientBuilder;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/CameraClientBuilder;-><init>()V

    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->CLIENT_BUILDER:Lcom/oplus/ocs/base/common/api/a$a;

    .line 92
    new-instance v0, Lcom/oplus/ocs/base/common/api/a;

    sget-object v1, Lcom/oplus/ocs/camera/CameraUnitClient;->CLIENT_BUILDER:Lcom/oplus/ocs/base/common/api/a$a;

    sget-object v2, Lcom/oplus/ocs/camera/CameraUnitClient;->CUSTOMER_CODE:Lcom/oplus/ocs/base/common/api/a$f;

    const-string v3, "CameraClient.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/ocs/base/common/api/a;-><init>(Ljava/lang/String;Lcom/oplus/ocs/base/common/api/a$a;Lcom/oplus/ocs/base/common/api/a$f;)V

    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->API:Lcom/oplus/ocs/base/common/api/a;

    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    const/4 v0, 0x0

    .line 97
    sput-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    .line 98
    sput-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/oplus/ocs/camera/CameraUnitClientAdapter;)V
    .locals 7

    .line 112
    sget-object v2, Lcom/oplus/ocs/camera/CameraUnitClient;->API:Lcom/oplus/ocs/base/common/api/a;

    new-instance v4, Lcom/oplus/ocs/base/internal/a;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/ocs/camera/CameraUnitClient;->mFeatures:Ljava/util/List;

    const v3, 0x53408

    invoke-direct {v4, v0, v3, v1}, Lcom/oplus/ocs/base/internal/a;-><init>(Ljava/lang/String;ILjava/util/List;)V

    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    const/4 v6, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/ocs/base/common/api/g;-><init>(Landroid/content/Context;Lcom/oplus/ocs/base/common/api/a;Lcom/oplus/ocs/base/common/api/a$c;Lcom/oplus/ocs/base/internal/a;Z)V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    .line 101
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    .line 102
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

    .line 103
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailListener:Lcom/oplus/ocs/base/common/api/e;

    .line 104
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessHandler:Landroid/os/Handler;

    .line 105
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthSuccessBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, -0x1

    .line 108
    iput v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedCode:I

    .line 114
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    .line 115
    iget-object p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    invoke-virtual {p2, p1}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->initialize(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->handleAuthenticate(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oplus/ocs/camera/CameraUnitClient;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->authSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/ocs/camera/CameraUnitClient;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->authFail(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oplus/ocs/camera/CameraUnitClient;)Lcom/oplus/ocs/base/common/api/f;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oplus/ocs/camera/CameraUnitClient;)Lcom/oplus/ocs/base/common/api/e;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailListener:Lcom/oplus/ocs/base/common/api/e;

    return-object p0
.end method

.method private authFail(I)V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailListener:Lcom/oplus/ocs/base/common/api/e;

    if-eqz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 387
    new-instance p0, Lcom/oplus/ocs/base/common/a;

    invoke-direct {p0, p1}, Lcom/oplus/ocs/base/common/a;-><init>(I)V

    invoke-interface {v0, p0}, Lcom/oplus/ocs/base/common/api/e;->a(Lcom/oplus/ocs/base/common/a;)V

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lcom/oplus/ocs/camera/CameraUnitClient$3;

    invoke-direct {v0, p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient$3;-><init>(Lcom/oplus/ocs/camera/CameraUnitClient;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 397
    :cond_1
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method private authSuccess()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

    if-eqz v0, :cond_1

    .line 369
    iget-object v1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 370
    invoke-interface {v0}, Lcom/oplus/ocs/base/common/api/f;->a()V

    goto :goto_0

    .line 372
    :cond_0
    new-instance v0, Lcom/oplus/ocs/camera/CameraUnitClient$2;

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/CameraUnitClient$2;-><init>(Lcom/oplus/ocs/camera/CameraUnitClient;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 380
    :cond_1
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthSuccessBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method private static checkRuntimeEnvironment(Landroid/content/Context;)V
    .locals 5

    .line 196
    :try_start_0
    new-instance v0, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;-><init>()V

    const-string v1, "3.490.24"

    const v2, 0x53408

    .line 198
    invoke-virtual {v0, p0, v1, v2}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->checkAuthenticationPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "CameraUnitClient"

    if-eqz v1, :cond_0

    .line 201
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->isAuthedClient(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 203
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current sdk does not have isAuthedClient interface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->isSupportAsyncAuthenticate(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    .line 207
    new-instance v1, Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-direct {v1, p0, v0}, Lcom/oplus/ocs/camera/CameraUnitClient;-><init>(Landroid/content/Context;Lcom/oplus/ocs/camera/CameraUnitClientAdapter;)V

    sput-object v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    goto :goto_1

    :cond_0
    const-string p0, "checkRuntimeEnvironment, checkAuthenticationPermission fail"

    .line 209
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private destroy()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->release()V

    const/4 v0, 0x0

    .line 317
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    .line 318
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraStateCallback:Lcom/oplus/ocs/camera/CameraStateCallback;

    .line 319
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

    .line 320
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailListener:Lcom/oplus/ocs/base/common/api/e;

    .line 321
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessHandler:Landroid/os/Handler;

    .line 322
    iput-object v0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailHandler:Landroid/os/Handler;

    const/4 p0, 0x0

    .line 323
    sput-boolean p0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    .line 324
    sput-boolean p0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    :cond_0
    return-void
.end method

.method private handleAsyncAuthenticate(Landroid/content/Context;)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/ocs/camera/CameraUnitClient$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient$1;-><init>(Lcom/oplus/ocs/camera/CameraUnitClient;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 364
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private handleAuthenticate(Landroid/content/Context;)V
    .locals 2

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAuthenticate, isAuthed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportAsyncAuth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUnitClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-direct {p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->handleAsyncAuthenticate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static initLog(Landroid/content/Context;)V
    .locals 0

    .line 270
    invoke-static {p0}, Lcom/oplus/ocs/camera/common/util/CameraUnitLog;->initLog(Landroid/content/Context;)V

    return-void
.end method

.method protected static declared-synchronized initialize(Landroid/content/Context;)Lcom/oplus/ocs/camera/CameraUnitClient;
    .locals 2

    const-class v0, Lcom/oplus/ocs/camera/CameraUnitClient;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    if-eqz v1, :cond_0

    .line 143
    sget-object p0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->addThis2Cache()V

    .line 144
    sget-object p0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 146
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->checkRuntimeEnvironment(Landroid/content/Context;)V

    .line 148
    sget-object p0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSupportAsyncAuthenticate(Landroid/content/Context;)Z
    .locals 0

    .line 274
    invoke-static {p0}, Lcom/oplus/ocs/base/common/api/g;->checkInternal(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static release()V
    .locals 1

    .line 256
    sget-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {v0}, Lcom/oplus/ocs/camera/CameraUnitClient;->destroy()V

    const/4 v0, 0x0

    .line 258
    sput-object v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sCameraUnitClient:Lcom/oplus/ocs/camera/CameraUnitClient;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/g;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraUnitClient;->addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object p0

    return-object p0
.end method

.method public addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)Lcom/oplus/ocs/camera/CameraUnitClient;
    .locals 1

    .line 296
    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/g;->addOnConnectionFailedListener(Lcom/oplus/ocs/base/common/api/e;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/g;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/CameraUnitClient;

    return-object p0

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailListener:Lcom/oplus/ocs/base/common/api/e;

    .line 301
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mFailHandler:Landroid/os/Handler;

    .line 303
    iget-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    iget p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedCode:I

    invoke-direct {p0, p1}, Lcom/oplus/ocs/camera/CameraUnitClient;->authFail(I)V

    .line 305
    iget-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthFailedBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/g;
    .locals 0

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraUnitClient;->addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/oplus/ocs/camera/CameraUnitClient;

    move-result-object p0

    return-object p0
.end method

.method public addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/oplus/ocs/camera/CameraUnitClient;
    .locals 1

    .line 279
    sget-boolean v0, Lcom/oplus/ocs/camera/CameraUnitClient;->sbSupportAsyncAuthenticate:Z

    if-nez v0, :cond_0

    .line 280
    invoke-super {p0, p1, p2}, Lcom/oplus/ocs/base/common/api/g;->addOnConnectionSucceedListener(Lcom/oplus/ocs/base/common/api/f;Landroid/os/Handler;)Lcom/oplus/ocs/base/common/api/g;

    move-result-object p0

    check-cast p0, Lcom/oplus/ocs/camera/CameraUnitClient;

    return-object p0

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessListener:Lcom/oplus/ocs/base/common/api/f;

    .line 284
    iput-object p2, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mSuccessHandler:Landroid/os/Handler;

    .line 286
    sget-boolean p1, Lcom/oplus/ocs/camera/CameraUnitClient;->sbAuthed:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthSuccessBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 287
    :cond_1
    iget-object p1, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mbAuthSuccessBeforeCallbackSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    invoke-direct {p0}, Lcom/oplus/ocs/camera/CameraUnitClient;->authSuccess()V

    :cond_2
    return-object p0
.end method

.method public getAllSupportCameraMode()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->getAllSupportCameraMode()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "CameraUnitInterface has already destroyed, call it before destroy() "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllSupportCameraType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->getAllSupportCameraType()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "CameraUnitInterface has already destroyed, call it before destroy() "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfo;
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    if-eqz p0, :cond_0

    .line 180
    :try_start_0
    new-instance v0, Lcom/oplus/ocs/camera/CameraDeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->getCameraDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/ocs/camera/CameraDeviceInfo;-><init>(Lcom/oplus/ocs/camera/CameraDeviceInfoAdapter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraUnitInterface has already destroyed, call it before destroy() "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion()I
    .locals 0

    const p0, 0x53408

    return p0
.end method

.method public hasFeature(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected init()V
    .locals 0

    return-void
.end method

.method public openCamera(Ljava/lang/String;Lcom/oplus/ocs/camera/CameraStateCallback;Landroid/os/Handler;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/oplus/ocs/camera/CameraUnitClient;->mCameraUnitClientAdapter:Lcom/oplus/ocs/camera/CameraUnitClientAdapter;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/ocs/camera/CameraUnitClientAdapter;->openCamera(Ljava/lang/String;Lcom/oplus/ocs/camera/CameraStateCallback;Landroid/os/Handler;)V

    return-void

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraUnitInterface has already destroyed, call it before destroy() "

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
