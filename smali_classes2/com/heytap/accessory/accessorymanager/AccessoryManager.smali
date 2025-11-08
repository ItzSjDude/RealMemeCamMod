.class public Lcom/heytap/accessory/accessorymanager/AccessoryManager;
.super Ljava/lang/Object;
.source "AccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;,
        Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSORY_ATTACHED_EVENT:Ljava/lang/String; = "com.heytap.accessory.device.action.ACCESSORY_ATTACHED"

.field public static final ACTION_ACCESSORY_DETACHED_EVENT:Ljava/lang/String; = "com.heytap.accessory.device.action.ACCESSORY_DETACHED"

.field private static final KCS_LENGTH_16:I = 0x10

.field private static final RESULT_CODE_ERROR:I = 0x64

.field public static final RETRY_MODE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETRY_MODE_LIMITED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RETRY_MODE_STICKY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSPORT_ALL:I = 0xff

.field public static final TRANSPORT_BLE:I = 0x4

.field public static final TRANSPORT_BT:I = 0x2

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_LAN:I = 0x8

.field private static final VERSION:Ljava/lang/String;

.field private static volatile sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;


# instance fields
.field private mConnectionEventReceiver:Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

.field private final mContext:Landroid/content/Context;

.field private mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lcom/heytap/accessory/Config;->getSdkVersionName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->VERSION:Ljava/lang/String;

    .line 76
    const-class v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    .line 195
    iput-object p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    .line 196
    invoke-static {p1}, Lcom/heytap/accessory/Initializer;->initAFMAccessory(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 198
    new-instance v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

    invoke-direct {v0, p2}, Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;-><init>(Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;)V

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mConnectionEventReceiver:Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

    goto :goto_0

    .line 200
    :cond_0
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "getInstance: eventCallback is null.."

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-boolean v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    if-nez v0, :cond_1

    .line 203
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "mOnlyInstance.mIsConnected is false"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 205
    iget-object p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/heytap/accessory/api/GenericAdapter;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 206
    iput-boolean p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    if-eqz p2, :cond_1

    .line 208
    iget-object p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mConnectionEventReceiver:Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

    invoke-virtual {p1, p0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/os/ResultReceiver;)Z

    .line 209
    sget-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "registerAccessoryCallback.. if case"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/accessory/accessorymanager/AccessoryManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/heytap/accessory/accessorymanager/AccessoryManager;)Lcom/heytap/accessory/accessorymanager/AccessoryManager;
    .locals 0

    .line 45
    sput-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/heytap/accessory/accessorymanager/AccessoryManager;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    return p1
.end method

.method private checkKscValid([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 464
    :cond_0
    array-length p0, p1

    const/16 p1, 0x10

    if-ne p0, p1, :cond_1

    return-void

    .line 465
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ksc length must be 16"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;)Lcom/heytap/accessory/accessorymanager/AccessoryManager;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/accessory/bean/SdkUnsupportedException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 219
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccessoryManager sdk version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    if-nez v0, :cond_1

    .line 221
    const-class v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    invoke-direct {v1, p0, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;-><init>(Landroid/content/Context;Lcom/heytap/accessory/accessorymanager/AccessoryManager$AccessoryEventListener;)V

    sput-object v1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    .line 225
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 227
    :cond_1
    :goto_0
    sget-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->sOnlyInstance:Lcom/heytap/accessory/accessorymanager/AccessoryManager;

    return-object p0

    .line 217
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid argmument input."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private validateTransportDetails(Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_4

    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    if-eq p2, p0, :cond_3

    const/4 p0, 0x2

    if-eq p2, p0, :cond_1

    const/4 p0, 0x4

    if-eq p2, p0, :cond_1

    const/16 p0, 0x8

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid transport type:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$"

    .line 450
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    .line 451
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid BT Address:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-static {p1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void

    .line 441
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid transport address"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public checkKscExist([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->checkKscExist([B[B)Z

    move-result p0

    return p0
.end method

.method public checkKscExist([B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 304
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/api/GenericAdapter;->a([B[B)I

    move-result p0

    .line 305
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkKscExist, deviceId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-static {p1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", alias: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {p2}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 305
    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public connect(Lcom/heytap/accessory/accessorymanager/ConnectConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Lcom/heytap/accessory/accessorymanager/ConnectConfig;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/heytap/accessory/accessorymanager/ConnectConfig;->getTransportType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->validateTransportDetails(Ljava/lang/String;I)V

    .line 232
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mConnectionEventReceiver:Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

    if-eqz v0, :cond_1

    .line 236
    iget-object v1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/os/ResultReceiver;)Z

    .line 238
    :cond_1
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/accessorymanager/ConnectConfig;)I

    move-result p0

    if-nez p0, :cond_2

    .line 240
    sget-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connect requested successfully for address:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lcom/heytap/accessory/accessorymanager/ConnectConfig;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Transport Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p1}, Lcom/heytap/accessory/accessorymanager/ConnectConfig;->getTransportType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    .line 244
    sget-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string p1, "connect not support"

    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Connect request failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public disconnect(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, p1, p2, v0}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->disconnect(Ljava/lang/String;II)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Transport:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UUname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, p1, p2}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->validateTransportDetails(Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mConnectionEventReceiver:Lcom/heytap/accessory/accessorymanager/AccessoryManager$ConnectionEventReceiver;

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {v1, v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/os/ResultReceiver;)Z

    .line 265
    :cond_1
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/accessory/api/GenericAdapter;->a(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_2

    .line 267
    sget-object p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Disconnect requested successfully for address:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-static {p1}, Lcom/heytap/accessory/b/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Transport Type:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Disconnect request failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAccountInfoArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 371
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/api/GenericAdapter;->e()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableServices(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/ServiceProfile;",
            ">;"
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAvailableServices,accessoryId:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 387
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/api/GenericAdapter;->a(J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectedAccessories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/heytap/accessory/bean/PeerAccessory;",
            ">;"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedAccessories"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/api/GenericAdapter;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLocalDeviceId()[B
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 419
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/api/GenericAdapter;->c()[B

    move-result-object p0

    if-nez p0, :cond_1

    .line 421
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "loadLocalDeviceId is null"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :cond_1
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "loadLocalDeviceId success"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getLocalDeviceType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 433
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/api/GenericAdapter;->d()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 435
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasBoundFramework()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0}, Lcom/heytap/accessory/api/GenericAdapter;->b()Z

    move-result p0

    return p0
.end method

.method public loadLocalDeviceId()[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->getLocalDeviceId()[B

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 2

    .line 398
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-boolean v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/heytap/accessory/api/GenericAdapter;->g()V

    :cond_0
    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mIsConnected:Z

    :cond_1
    return-void
.end method

.method public removeKsc([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0, p1}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->removeKsc([B[B)Z

    move-result p0

    return p0
.end method

.method public removeKsc([B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/heytap/accessory/api/GenericAdapter;->b([B[B)I

    move-result p0

    .line 322
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkKscExist, deviceId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-static {p1}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", alias: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-static {p2}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized setAccessoryDormant(Z)Z
    .locals 2

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {v0, p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Z)I

    move-result p1

    if-nez p1, :cond_1

    .line 345
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "acc status successfully set"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_1
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string v1, "acc status set failed"

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 349
    :goto_1
    monitor-exit p0

    return p1

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setKsc([B[B[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setKsc, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/heytap/accessory/b/e;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/heytap/accessory/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0, p3}, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->checkKscValid([B)V

    .line 285
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 288
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/heytap/accessory/api/GenericAdapter;->a([B[B[B)I

    move-result p0

    if-nez p0, :cond_1

    .line 290
    sget-object p1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    const-string p2, "ksc successfully set"

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    if-ne p0, p1, :cond_2

    .line 292
    sget-object p1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ksc set duplicate: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    sget-object p1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "ksc set error: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public setTrafficControlConfig(Lcom/heytap/accessory/bean/TrafficControlConfig;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/accessory/api/GenericAdapter;->a(Landroid/content/Context;)Lcom/heytap/accessory/api/GenericAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    .line 357
    :cond_0
    iget-object p0, p0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->mGenericAdapter:Lcom/heytap/accessory/api/GenericAdapter;

    invoke-virtual {p0, p1}, Lcom/heytap/accessory/api/GenericAdapter;->a(Lcom/heytap/accessory/bean/TrafficControlConfig;)I

    move-result p0

    if-nez p0, :cond_1

    .line 359
    sget-object v0, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setTrafficControlConfig success:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/heytap/accessory/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    sget-object p1, Lcom/heytap/accessory/accessorymanager/AccessoryManager;->TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTrafficControlConfig failed: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/heytap/accessory/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0
.end method
