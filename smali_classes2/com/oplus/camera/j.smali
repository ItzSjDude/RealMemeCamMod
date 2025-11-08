.class public Lcom/oplus/camera/j;
.super Ljava/lang/Object;
.source "CameraTipsManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static volatile c:Lcom/oplus/camera/j;


# instance fields
.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Landroid/content/SharedPreferences;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "b3Bwbw=="

    const-string v1, "oplus"

    const-string v2, "com.oplus.camera.OPEN_CAMERA_TIME"

    .line 23
    invoke-static {v2, v1, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oplus/camera/j;->a:Ljava/lang/String;

    const-string v2, "com.oplus.camera.CLICK_ULTRA_WIDE"

    .line 25
    invoke-static {v2, v1, v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/j;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/oplus/camera/j;->c:Lcom/oplus/camera/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/oplus/camera/j;->e:I

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/j;->f:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    .line 50
    iput-boolean v1, p0, Lcom/oplus/camera/j;->h:Z

    .line 53
    new-instance v0, Lcom/oplus/camera/j$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/j$1;-><init>(Lcom/oplus/camera/j;)V

    .line 60
    new-instance v1, Ljava/util/PriorityQueue;

    invoke-direct {v1, v0}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    .line 61
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j;->f:Landroid/content/Context;

    .line 62
    iget-object v0, p0, Lcom/oplus/camera/j;->f:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a()Lcom/oplus/camera/j;
    .locals 2

    .line 66
    sget-object v0, Lcom/oplus/camera/j;->c:Lcom/oplus/camera/j;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/oplus/camera/j;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/oplus/camera/j;->c:Lcom/oplus/camera/j;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/oplus/camera/j;

    invoke-direct {v1}, Lcom/oplus/camera/j;-><init>()V

    sput-object v1, Lcom/oplus/camera/j;->c:Lcom/oplus/camera/j;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 74
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/camera/j;->c:Lcom/oplus/camera/j;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTipsToQueue, mTipsShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", queueTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTipsManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/oplus/camera/j;->e:I

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oplus/camera/j;->e:I

    if-eq v0, p1, :cond_1

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oplus/camera/j;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "CameraTipsManager"

    const-string v1, "resetBroadcastState"

    .line 102
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/oplus/camera/j;->e:I

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 90
    iput p1, p0, Lcom/oplus/camera/j;->e:I

    .line 92
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oplus.camera.TIPS_MANAGER_BR_ACTION"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.oplus.camera.TIPS_MANAGER_DATA"

    .line 94
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendShowTipsBroadcast, queueTag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraTipsManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/e/a/a;->a(Landroid/content/Context;)Landroidx/e/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/e/a/a;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/oplus/camera/j;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oplus/camera/j;->b(I)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/camera/j;->b()V

    :goto_1
    return-void
.end method

.method public d()I
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    const-string v0, "com.oplus.camera.OPEN_CAMERA_TIME"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOpenCameraTime, openCameraTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTipsManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public e()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    const-string v1, "com.oplus.camera.OPEN_CAMERA_TIME"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 126
    iget-object p0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addOpenCameraTime, openCameraTime: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraTipsManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()Z
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    const-string v0, "com.oplus.camera.CLICK_ULTRA_WIDE"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasClickedUltraWide, click: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTipsManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public g()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lcom/oplus/camera/j;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/oplus/camera/j;->h:Z

    .line 142
    iget-object p0, p0, Lcom/oplus/camera/j;->g:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "com.oplus.camera.CLICK_ULTRA_WIDE"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
