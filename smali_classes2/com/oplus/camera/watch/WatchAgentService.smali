.class public Lcom/oplus/camera/watch/WatchAgentService;
.super Lcom/heytap/accessory/BaseAgent;
.source "WatchAgentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;,
        Lcom/oplus/camera/watch/WatchAgentService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/oplus/camera/watch/WatchAgentService$a;

.field private d:Lcom/oplus/camera/watch/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    const-class v0, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;

    sput-object v0, Lcom/oplus/camera/watch/WatchAgentService;->b:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    sget-object v0, Lcom/oplus/camera/watch/WatchAgentService;->b:Ljava/lang/Class;

    const-string v1, "WatchAgentService"

    invoke-direct {p0, v1, v0}, Lcom/heytap/accessory/BaseAgent;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 33
    new-instance v0, Lcom/oplus/camera/watch/WatchAgentService$a;

    invoke-direct {v0, p0}, Lcom/oplus/camera/watch/WatchAgentService$a;-><init>(Lcom/oplus/camera/watch/WatchAgentService;)V

    iput-object v0, p0, Lcom/oplus/camera/watch/WatchAgentService;->c:Lcom/oplus/camera/watch/WatchAgentService$a;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/watch/WatchAgentService;)Lcom/oplus/camera/watch/f;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const p2, -0xff0100

    .line 76
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 77
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string p2, "notification"

    .line 78
    invoke-virtual {p0, p2}, Lcom/oplus/camera/watch/WatchAgentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "WatchAgentService"

    const-string v1, "startForeground"

    .line 58
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-le v0, v2, :cond_0

    const v0, 0x7f1000b2

    .line 61
    invoke-virtual {p0, v0}, Lcom/oplus/camera/watch/WatchAgentService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.oplus.camera"

    invoke-direct {p0, v2, v0}, Lcom/oplus/camera/watch/WatchAgentService;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v2, Landroidx/core/app/h$d;

    invoke-direct {v2, p0, v0}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2, v1}, Landroidx/core/app/h$d;->a(Z)Landroidx/core/app/h$d;

    move-result-object v0

    const/4 v2, -0x2

    .line 64
    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->c(I)Landroidx/core/app/h$d;

    move-result-object v0

    const-string v2, "service"

    .line 65
    invoke-virtual {v0, v2}, Landroidx/core/app/h$d;->a(Ljava/lang/String;)Landroidx/core/app/h$d;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroidx/core/app/h$d;->b()Landroid/app/Notification;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/watch/WatchAgentService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/watch/WatchAgentService;->startForeground(ILandroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/watch/WatchAgentService;->c:Lcom/oplus/camera/watch/WatchAgentService$a;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "WatchAgentService"

    const-string v1, "onCreate"

    .line 42
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-super {p0}, Lcom/heytap/accessory/BaseAgent;->onCreate()V

    .line 45
    new-instance v0, Lcom/oplus/camera/watch/f;

    invoke-direct {v0, p0}, Lcom/oplus/camera/watch/f;-><init>(Lcom/oplus/camera/watch/WatchAgentService;)V

    iput-object v0, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WatchAgentService"

    const-string v1, "onDestroy"

    .line 86
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/oplus/camera/watch/f;->d()V

    .line 92
    :cond_0
    sget-object v0, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/oplus/camera/watch/WatchAgentService;->stopForeground(Z)V

    .line 94
    invoke-super {p0}, Lcom/heytap/accessory/BaseAgent;->onDestroy()V

    return-void
.end method

.method protected onServiceConnectionRequested(Lcom/heytap/accessory/bean/PeerAgent;)V
    .locals 3

    const-string v0, "WatchAgentService"

    if-nez p1, :cond_0

    const-string v1, "onServiceConnectionRequested, peerAgent is null"

    .line 126
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/oplus/camera/watch/WatchAgentService;->rejectServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/heytap/accessory/bean/PeerAgent;->getAppName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.heytap.wearable.cameraassistant"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "onServiceConnectionRequested, reject connect because of package name is not correct!!!"

    .line 133
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/oplus/camera/watch/WatchAgentService;->rejectServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void

    .line 139
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/camera/watch/WatchAgentService;->acceptServiceConnectionRequest(Lcom/heytap/accessory/bean/PeerAgent;)V

    return-void
.end method

.method protected onServiceConnectionResponse(Lcom/heytap/accessory/bean/PeerAgent;Lcom/heytap/accessory/BaseSocket;I)V
    .locals 1

    const-string v0, "WatchAgentService"

    if-nez p2, :cond_0

    const-string p0, "onServiceConnectionResponse, reject connect because of socket is null"

    .line 106
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServiceConnectionResponse, reject connect because of result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    if-eqz p3, :cond_2

    .line 118
    sget-object p3, Lcom/oplus/camera/watch/WatchAgentService;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iget-object p3, p0, Lcom/oplus/camera/watch/WatchAgentService;->d:Lcom/oplus/camera/watch/f;

    new-instance v0, Lcom/oplus/camera/watch/d;

    check-cast p2, Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;

    invoke-direct {v0, p2, p0, p1}, Lcom/oplus/camera/watch/d;-><init>(Lcom/oplus/camera/watch/WatchAgentService$WatchAgentSocket;Lcom/oplus/camera/watch/WatchAgentService;Lcom/heytap/accessory/bean/PeerAgent;)V

    invoke-virtual {p3, v0}, Lcom/oplus/camera/watch/f;->a(Lcom/oplus/camera/watch/d;)V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string v0, "WatchAgentService"

    const-string v1, "onStartCommand"

    .line 50
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/heytap/accessory/BaseAgent;->onStartCommand(Landroid/content/Intent;II)I

    .line 53
    invoke-virtual {p0}, Lcom/oplus/camera/watch/WatchAgentService;->a()V

    const/4 p0, 0x1

    return p0
.end method
