.class public Lcom/oplus/camera/v/c;
.super Ljava/lang/Object;
.source "TemperatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/v/c$b;,
        Lcom/oplus/camera/v/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/oplus/camera/ComboPreferences;

.field private b:Lcom/oplus/camera/v/a;

.field private c:Lcom/oplus/camera/v/c$a;

.field private d:Landroid/content/ContentResolver;

.field private e:Lcom/oplus/camera/v/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/v/a;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/oplus/camera/v/c;->a:Lcom/oplus/camera/ComboPreferences;

    .line 36
    iput-object v0, p0, Lcom/oplus/camera/v/c;->b:Lcom/oplus/camera/v/a;

    .line 37
    new-instance v1, Lcom/oplus/camera/v/c$a;

    invoke-direct {v1, p0}, Lcom/oplus/camera/v/c$a;-><init>(Lcom/oplus/camera/v/c;)V

    iput-object v1, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 38
    iput-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    .line 39
    iput-object v0, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    .line 42
    iput-object p3, p0, Lcom/oplus/camera/v/c;->b:Lcom/oplus/camera/v/a;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    .line 44
    iput-object p2, p0, Lcom/oplus/camera/v/c;->a:Lcom/oplus/camera/ComboPreferences;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/ComboPreferences;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/v/c;->a:Lcom/oplus/camera/ComboPreferences;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/v/c;)Landroid/content/ContentResolver;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/v/c;)Lcom/oplus/camera/v/a;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/oplus/camera/v/c;->b:Lcom/oplus/camera/v/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    const-string v1, "oplus.camera.flash"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    const-string v1, "oplus.camera.video"

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    const-string v1, "oplus.camera.exit"

    .line 91
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 90
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    const-string v1, "oplus.camera.brightness"

    .line 93
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 92
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    const-string v1, "oplus_settings_hightemp_protect"

    .line 95
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 94
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/v/c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 68
    new-instance v0, Lcom/oplus/camera/v/c$2;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/v/c$2;-><init>(Lcom/oplus/camera/v/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 52
    new-instance v0, Lcom/oplus/camera/v/c$1;

    invoke-direct {v0, p0, p1}, Lcom/oplus/camera/v/c$1;-><init>(Lcom/oplus/camera/v/c;Z)V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 5

    const-string v0, "com.oplus.temperature.control.stop_video_recording"

    .line 103
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.oplus.temperature.sendtohal"

    .line 104
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    .line 105
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v2

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTemperatureReceiver, mTemperatureReceiver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", controlVideo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", sendToHal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", foldProject: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TemperatureProvider"

    invoke-static {v4, v3}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v3, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    new-instance v0, Lcom/oplus/camera/v/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/v/c$b;-><init>(Lcom/oplus/camera/v/c;Lcom/oplus/camera/v/c$1;)V

    iput-object v0, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "oplus.intent.action.THERMAL_LEVEL_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/oplus/camera/w/d;->a()Lcom/oplus/camera/w/d;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/v/c$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/v/c$3;-><init>(Lcom/oplus/camera/v/c;)V

    const-string p0, "GetCurTemperature"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/w/d;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    iput-object v1, p0, Lcom/oplus/camera/v/c;->d:Landroid/content/ContentResolver;

    .line 138
    iput-object v1, p0, Lcom/oplus/camera/v/c;->c:Lcom/oplus/camera/v/c$a;

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    if-eqz v0, :cond_1

    .line 142
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iput-object v1, p0, Lcom/oplus/camera/v/c;->e:Lcom/oplus/camera/v/c$b;

    :cond_1
    return-void
.end method
