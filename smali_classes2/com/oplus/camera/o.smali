.class public Lcom/oplus/camera/o;
.super Ljava/lang/Object;
.source "GestureEngineManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/o$a;,
        Lcom/oplus/camera/o$b;,
        Lcom/oplus/camera/o$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

.field private d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

.field private e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

.field private f:Ljava/lang/Object;

.field private g:Z

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Landroid/os/AsyncTask;

.field private k:Landroid/os/AsyncTask;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;",
            ">;>;"
        }
    .end annotation
.end field

.field private o:Lcom/oplus/camera/o$c;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/o;->a:Ljava/util/concurrent/ExecutorService;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o;->b:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/oplus/camera/o$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/o$1;-><init>(Lcom/oplus/camera/o;)V

    iput-object v0, p0, Lcom/oplus/camera/o;->c:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-boolean v0, p0, Lcom/oplus/camera/o;->g:Z

    .line 69
    iput-boolean v0, p0, Lcom/oplus/camera/o;->h:Z

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/oplus/camera/o;->j:Landroid/os/AsyncTask;

    .line 72
    iput-object v0, p0, Lcom/oplus/camera/o;->k:Landroid/os/AsyncTask;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    sget-object v3, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_180:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    const/16 v4, 0xb4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    const/16 v5, 0x10e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->DO_NOT_ROTATE:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    sget-object v6, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_90:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_180:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->ROTATE_270:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    sget-object v2, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;->DO_NOT_ROTATE:Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/o;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oplus/camera/o;->i:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/o;Lcom/crunchfish/touchless_a3d/TouchlessA3D;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/o;Lcom/crunchfish/touchless_a3d/gesture/Gesture;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/o;)Ljava/lang/Object;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z
    .locals 0

    .line 104
    invoke-virtual {p1}, Lcom/crunchfish/touchless_a3d/gesture/Event;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/o;Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/o;->a(Lcom/crunchfish/touchless_a3d/gesture/Event;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/o;)Lcom/oplus/camera/o$c;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->o:Lcom/oplus/camera/o$c;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/o;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oplus/camera/o;->e()V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/o;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/TouchlessA3D;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/oplus/camera/o;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    iget-object v2, p0, Lcom/oplus/camera/o;->c:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    invoke-virtual {v1, v2}, Lcom/crunchfish/touchless_a3d/gesture/Gesture;->unregisterListener(Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    if-eqz v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    iget-object v2, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    invoke-virtual {v1, v2}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->unregisterGesture(Lcom/crunchfish/touchless_a3d/gesture/Gesture;)V

    .line 137
    iget-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    invoke-virtual {v1}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->close()V

    const-string v1, "GestureEngineManager"

    const-string v2, "gesture detect engine has released"

    .line 138
    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 141
    iput-object v1, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    .line 142
    iput-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic f(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->e:Lcom/crunchfish/touchless_a3d/gesture/Gesture;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/o;)Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oplus/camera/o;->c:Lcom/crunchfish/touchless_a3d/gesture/Gesture$Listener;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;II)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/o;->g:Z

    .line 100
    new-instance v0, Lcom/oplus/camera/o$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/camera/o$a;-><init>(Lcom/oplus/camera/o;Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/oplus/camera/o;->a:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/o$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/o;->j:Landroid/os/AsyncTask;

    return-void
.end method

.method public a(Lcom/oplus/camera/o$c;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/oplus/camera/o;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/o;->o:Lcom/oplus/camera/o$c;

    .line 110
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/oplus/camera/o;->h:Z

    return-void
.end method

.method public a([BII)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/o;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/oplus/camera/o;->d:Lcom/crunchfish/touchless_a3d/TouchlessA3D;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p0, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;

    invoke-virtual {v1, v2, v3, p1, p0}, Lcom/crunchfish/touchless_a3d/TouchlessA3D;->handleImage(J[BLcom/crunchfish/touchless_a3d/TouchlessA3D$Rotate;)V

    .line 126
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

.method public a()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/oplus/camera/o;->h:Z

    return p0
.end method

.method public b()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/oplus/camera/o;->g:Z

    return p0
.end method

.method public c()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/oplus/camera/o;->j:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 164
    iput-object v1, p0, Lcom/oplus/camera/o;->j:Landroid/os/AsyncTask;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/o;->k:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 169
    iput-object v1, p0, Lcom/oplus/camera/o;->k:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/o;->g:Z

    .line 150
    iget-object v1, p0, Lcom/oplus/camera/o;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 151
    :try_start_0
    iput-object v2, p0, Lcom/oplus/camera/o;->o:Lcom/oplus/camera/o$c;

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    new-instance v1, Lcom/oplus/camera/o$b;

    invoke-direct {v1, p0, v2}, Lcom/oplus/camera/o$b;-><init>(Lcom/oplus/camera/o;Lcom/oplus/camera/o$1;)V

    iget-object v2, p0, Lcom/oplus/camera/o;->a:Ljava/util/concurrent/ExecutorService;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/o$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/o;->k:Landroid/os/AsyncTask;

    return-void

    :catchall_0
    move-exception p0

    .line 152
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public d()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 176
    iput-object v1, p0, Lcom/oplus/camera/o;->n:Ljava/util/HashMap;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 181
    iput-object v1, p0, Lcom/oplus/camera/o;->m:Ljava/util/HashMap;

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 186
    iput-object v1, p0, Lcom/oplus/camera/o;->l:Ljava/util/HashMap;

    .line 189
    :cond_2
    iput-object v1, p0, Lcom/oplus/camera/o;->i:Landroid/content/Context;

    .line 191
    iget-object v0, p0, Lcom/oplus/camera/o;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iput-object v1, p0, Lcom/oplus/camera/o;->o:Lcom/oplus/camera/o$c;

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
