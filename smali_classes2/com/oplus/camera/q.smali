.class public Lcom/oplus/camera/q;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/q$f;,
        Lcom/oplus/camera/q$d;,
        Lcom/oplus/camera/q$a;,
        Lcom/oplus/camera/q$e;,
        Lcom/oplus/camera/q$c;,
        Lcom/oplus/camera/q$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/content/Context;

.field private c:Landroid/location/LocationManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/HandlerThread;

.field private h:Ljava/lang/Runnable;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/q$f;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:[Lcom/oplus/camera/q$e;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/oplus/camera/q;->a:J

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    .line 51
    iput-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    const-string v1, "off"

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    .line 55
    iput-object v0, p0, Lcom/oplus/camera/q;->g:Landroid/os/HandlerThread;

    .line 56
    iput-object v0, p0, Lcom/oplus/camera/q;->h:Ljava/lang/Runnable;

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/q;->i:Ljava/lang/Runnable;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    .line 59
    iput-object v0, p0, Lcom/oplus/camera/q;->k:Ljava/lang/String;

    const/4 v0, 0x2

    .line 554
    new-array v0, v0, [Lcom/oplus/camera/q$e;

    new-instance v1, Lcom/oplus/camera/q$e;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/q$e;-><init>(Lcom/oplus/camera/q;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/oplus/camera/q$e;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/q$e;-><init>(Lcom/oplus/camera/q;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    .line 66
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationManagerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/q;->g:Landroid/os/HandlerThread;

    .line 70
    iget-object v0, p0, Lcom/oplus/camera/q;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/q;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/oplus/camera/q$b;

    invoke-direct {v0, p0}, Lcom/oplus/camera/q$b;-><init>(Lcom/oplus/camera/q;)V

    iput-object v0, p0, Lcom/oplus/camera/q;->h:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/oplus/camera/q$c;

    invoke-direct {v0, p0}, Lcom/oplus/camera/q$c;-><init>(Lcom/oplus/camera/q;)V

    iput-object v0, p0, Lcom/oplus/camera/q;->i:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/q$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/q;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/q;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/oplus/camera/q;->a:J

    return-wide p1
.end method

.method public static a()Lcom/oplus/camera/q;
    .locals 1

    .line 62
    invoke-static {}, Lcom/oplus/camera/q$d;->a()Lcom/oplus/camera/q;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Landroid/location/Location;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationManager"

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callbackAllListener, hasRegisterListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 123
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/q$f;

    .line 127
    invoke-interface {v1, p1, p2}, Lcom/oplus/camera/q$f;->a(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oplus/camera/q;Landroid/location/Location;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/q;->a(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/q;)[Lcom/oplus/camera/q$e;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/q;)Landroid/location/LocationManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/q;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private c(Lcom/oplus/camera/ComboPreferences;)Z
    .locals 1

    .line 460
    invoke-static {}, Lcom/oplus/camera/l/c;->c()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "pref_allow_network_access"

    invoke-virtual {p1, p0, v0}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static synthetic d(Lcom/oplus/camera/q;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/q;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/q;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/q;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/q;->j()V

    return-void
.end method

.method static synthetic g(Lcom/oplus/camera/q;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oplus/camera/q;->l()V

    return-void
.end method

.method private declared-synchronized g()Z
    .locals 1

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .locals 1

    .line 259
    iget-object p0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    const/4 v1, 0x1

    const-string v2, "network"

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x57e40

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/q;->a(Landroid/location/Location;Z)V

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_3

    .line 279
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startReceivingLocationUpdates, ntpEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManager"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 285
    :try_start_0
    iget-object v4, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    const-string v5, "network"

    const-wide/16 v6, 0x3e8

    const/high16 v8, 0x43960000    # 300.0f

    iget-object v0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    aget-object v9, v0, v1

    invoke-virtual/range {v4 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReceivingLocationUpdates, provider does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "startReceivingLocationUpdates, fail to request location update"

    .line 288
    invoke-static {v3, v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/q;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/q;->j()V

    :cond_3
    :goto_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGpsReceivingLocationUpdates, hasRegisterListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/q$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/q$1;-><init>(Lcom/oplus/camera/q;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private k()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    array-length v2, v1

    const-string v3, "LocationManager"

    if-ge v0, v2, :cond_0

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "stopReceivingLocationUpdates, fail to remove location listners"

    .line 341
    invoke-static {v3, v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "stopReceivingLocationUpdates"

    .line 345
    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private l()V
    .locals 4

    const-string v0, "LocationManager"

    .line 437
    invoke-direct {p0}, Lcom/oplus/camera/q;->m()V

    .line 439
    iget-object v1, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    :try_start_0
    aget-object p0, p0, v2

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "stopGpsReceivingLocationUpdates, fail to remove location listeners"

    .line 446
    invoke-static {v0, v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p0, "stopGpsReceivingLocationUpdates X"

    .line 449
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private m()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/oplus/camera/q;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 455
    iget-object v0, p0, Lcom/oplus/camera/q;->f:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oplus/camera/q;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "pref_camera_recordlocation_key"

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "on"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    iput-object v0, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "off"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    iput-object v0, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ComboPreferences;)V
    .locals 6

    .line 186
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "on"

    const-string v2, "pref_camera_recordlocation_key"

    const-string v3, "off"

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    const v4, 0x7f100221

    .line 188
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {p1, v2, v0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, v1

    .line 190
    :cond_0
    iput-object v3, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_1
    iput-object v3, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    .line 193
    iput-object v3, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/oplus/camera/q;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/camera/c;->b(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V

    .line 196
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/q;->c(Lcom/oplus/camera/ComboPreferences;)Z

    move-result v0

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllState, mRecordLocationState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isLocationSloganOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Lcom/oplus/camera/q;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", allowNetworkAccess: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManager"

    .line 203
    invoke-static {v3, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/q;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v0, :cond_5

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/oplus/camera/q;->a:J

    sub-long/2addr v0, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_4

    const-string v0, "updateAllState, location is invalid"

    .line 208
    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    .line 211
    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$e;->a(Z)V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    .line 215
    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$e;->a(Z)V

    .line 219
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oplus/camera/q;->b(Lcom/oplus/camera/ComboPreferences;)V

    :cond_5
    return-void
.end method

.method public declared-synchronized a(Lcom/oplus/camera/q$f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationManager"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerLocationListener, listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/oplus/camera/q;->k:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/oplus/camera/q;->k:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public b(Lcom/oplus/camera/ComboPreferences;)V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oplus/camera/q;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/oplus/camera/q;->c(Lcom/oplus/camera/ComboPreferences;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "LocationManager"

    const-string v0, "requestLocation"

    .line 248
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/oplus/camera/q;->k()V

    .line 254
    invoke-direct {p0}, Lcom/oplus/camera/q;->m()V

    goto :goto_1

    .line 251
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oplus/camera/q;->i()V

    :cond_3
    :goto_1
    return-void
.end method

.method public declared-synchronized b(Lcom/oplus/camera/q$f;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "LocationManager"

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterLocationListener, listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 91
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/camera/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0}, Lcom/oplus/camera/q;->g()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "LocationManager"

    const-string v0, "unRegisterLocationListener, remove"

    .line 97
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/oplus/camera/q;->m()V

    const-string p1, "LocationManager"

    const-string v0, "unRegisterLocationListener, stopReceivingLocationUpdates start"

    .line 101
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/oplus/camera/q;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Landroid/location/Location;
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v2

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/q;->l:[Lcom/oplus/camera/q$e;

    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 142
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/oplus/camera/q$e;->a()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "LocationManager"

    const-string v0, "getCurrentLocation, No location received yet."

    .line 149
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public d()Landroid/location/Location;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "gps"

    .line 159
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 160
    iget-object p0, p0, Lcom/oplus/camera/q;->c:Landroid/location/LocationManager;

    const-string v2, "network"

    .line 161
    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_3

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    return-object p0

    .line 177
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "last location past time: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/oplus/camera/q;->d:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/oplus/camera/q;->e:Ljava/lang/String;

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
