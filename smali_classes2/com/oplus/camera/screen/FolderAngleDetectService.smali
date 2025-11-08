.class public Lcom/oplus/camera/screen/FolderAngleDetectService;
.super Landroid/app/Service;
.source "FolderAngleDetectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/screen/FolderAngleDetectService$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Boolean;

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/screen/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/hardware/Sensor;

.field b:Landroid/hardware/SensorManager;

.field c:Lcom/oplus/camera/screen/FolderAngleDetectService$a;

.field private f:Landroid/database/ContentObserver;

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->d:Ljava/lang/Boolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->a:Landroid/hardware/Sensor;

    .line 33
    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    .line 34
    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->c:Lcom/oplus/camera/screen/FolderAngleDetectService$a;

    .line 105
    new-instance v0, Lcom/oplus/camera/screen/FolderAngleDetectService$2;

    invoke-direct {v0, p0}, Lcom/oplus/camera/screen/FolderAngleDetectService$2;-><init>(Lcom/oplus/camera/screen/FolderAngleDetectService;)V

    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->g:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/screen/FolderAngleDetectService;)Landroid/hardware/SensorEventListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->g:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .line 28
    sget-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->e:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/oplus/camera/screen/a/a$a;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b()Ljava/lang/Boolean;
    .locals 1

    .line 28
    sget-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static b(Lcom/oplus/camera/screen/a/a$a;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/oplus/camera/screen/FolderAngleDetectService;->e:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 5

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    const v1, 0x1fa265e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->a:Landroid/hardware/Sensor;

    .line 48
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->g:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->a:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v0, "oplus_system_folding_mode"

    .line 51
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->f:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 54
    new-instance v1, Lcom/oplus/camera/screen/FolderAngleDetectService$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v3}, Lcom/oplus/camera/screen/FolderAngleDetectService$1;-><init>(Lcom/oplus/camera/screen/FolderAngleDetectService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->f:Landroid/database/ContentObserver;

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->f:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/oplus/camera/screen/FolderAngleDetectService$a;

    invoke-direct {v1, p0}, Lcom/oplus/camera/screen/FolderAngleDetectService$a;-><init>(Lcom/oplus/camera/screen/FolderAngleDetectService;)V

    iput-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->c:Lcom/oplus/camera/screen/FolderAngleDetectService$a;

    .line 74
    iget-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->c:Lcom/oplus/camera/screen/FolderAngleDetectService$a;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->g:Landroid/hardware/SensorEventListener;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->f:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->f:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/screen/FolderAngleDetectService;->c:Lcom/oplus/camera/screen/FolderAngleDetectService$a;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, v0}, Lcom/oplus/camera/screen/FolderAngleDetectService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p0, "FolderAngleDetectService"

    const-string p1, "onStartCommand"

    .line 85
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
