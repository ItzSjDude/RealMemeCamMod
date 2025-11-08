.class public Lcom/oplus/camera/photo3d/b;
.super Ljava/lang/Object;
.source "ThreeDPhotoManager.java"

# interfaces
.implements Lcom/oplus/camera/photo3d/d$b;
.implements Lcom/oplus/camera/photo3d/ui/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/photo3d/b$a;,
        Lcom/oplus/camera/photo3d/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Handler;

.field private c:Landroid/app/Activity;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/oplus/camera/capmode/a;

.field private final f:Lcom/oplus/camera/ui/CameraUIInterface;

.field private final g:Lcom/oplus/camera/photo3d/d;

.field private h:Lcom/b/a/h;

.field private i:Lcom/b/a/g;

.field private j:Lcom/oplus/camera/photo3d/a;

.field private k:Lcom/b/a/a/e;

.field private l:I

.field private m:Z

.field private final n:Landroid/os/ConditionVariable;

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private p:Ljava/util/concurrent/atomic/AtomicLong;

.field private q:I

.field private r:Z

.field private s:Lcom/b/a/k;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/oplus/camera/photo3d/b;->l:I

    .line 66
    iput-boolean v0, p0, Lcom/oplus/camera/photo3d/b;->m:Z

    .line 67
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->n:Landroid/os/ConditionVariable;

    .line 68
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    iput v2, p0, Lcom/oplus/camera/photo3d/b;->q:I

    .line 71
    iput-boolean v2, p0, Lcom/oplus/camera/photo3d/b;->r:Z

    .line 294
    new-instance v1, Lcom/oplus/camera/photo3d/b$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/photo3d/b$1;-><init>(Lcom/oplus/camera/photo3d/b;)V

    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->s:Lcom/b/a/k;

    .line 74
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->c:Landroid/app/Activity;

    .line 75
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->d:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/oplus/camera/photo3d/b;->e:Lcom/oplus/camera/capmode/a;

    .line 77
    iput-object p3, p0, Lcom/oplus/camera/photo3d/b;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    const-string p1, "3d photo thread"

    .line 79
    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/b;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    const-string p1, "3d photo mesh thread"

    .line 80
    invoke-direct {p0, p1}, Lcom/oplus/camera/photo3d/b;->a(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->b:Landroid/os/Handler;

    .line 82
    new-instance p1, Lcom/oplus/camera/photo3d/d;

    iget-object p2, p0, Lcom/oplus/camera/photo3d/b;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/photo3d/b;->e:Lcom/oplus/camera/capmode/a;

    iget-object v3, p0, Lcom/oplus/camera/photo3d/b;->f:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-direct {p1, p2, p3, v1, v3}, Lcom/oplus/camera/photo3d/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oplus/camera/capmode/a;Lcom/oplus/camera/ui/CameraUIInterface;)V

    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->g:Lcom/oplus/camera/photo3d/d;

    .line 83
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b;->g:Lcom/oplus/camera/photo3d/d;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/photo3d/d;->a(Lcom/oplus/camera/photo3d/d$b;)V

    .line 85
    iget-object p1, p0, Lcom/oplus/camera/photo3d/b;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {p1}, Lcom/oplus/camera/capmode/a;->t()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "pref_3d_photo_scene_type"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/photo3d/b;->l:I

    .line 88
    invoke-static {}, Lcom/oplus/camera/e;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    :cond_0
    iput v2, p0, Lcom/oplus/camera/photo3d/b;->q:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 93
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 95
    new-instance p1, Lcom/oplus/camera/photo3d/b$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oplus/camera/photo3d/b$b;-><init>(Lcom/oplus/camera/photo3d/b;Landroid/os/Looper;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/g;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->i:Lcom/b/a/g;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/b;Lcom/b/a/g;)Lcom/b/a/g;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->i:Lcom/b/a/g;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/b;Lcom/b/a/h;)Lcom/b/a/h;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->h:Lcom/b/a/h;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ThreeDPhotoManager"

    const-string v1, "waitRendingDone"

    .line 165
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->n:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 169
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->n:Landroid/os/ConditionVariable;

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->n:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/b;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/photo3d/b;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/photo3d/b;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/b;->m:Z

    return p1
.end method

.method private b(J)Lcom/b/a/g;
    .locals 1

    .line 187
    invoke-static {p1, p2}, Lcom/oplus/camera/photo3d/PhotoMeshData;->getMeshData(J)Lcom/oplus/camera/photo3d/PhotoMeshData;

    move-result-object p1

    .line 188
    new-instance p2, Lcom/b/a/g;

    invoke-direct {p2}, Lcom/b/a/g;-><init>()V

    .line 189
    iget-object v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mVerticesBuffer:[F

    iput-object v0, p2, Lcom/b/a/g;->a:[F

    .line 190
    iget-object v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mColorsBuffer:[B

    iput-object v0, p2, Lcom/b/a/g;->b:[B

    .line 191
    iget-object v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mFacesBuffer:[I

    iput-object v0, p2, Lcom/b/a/g;->c:[I

    .line 192
    iget v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mStride:I

    iput v0, p2, Lcom/b/a/g;->e:I

    .line 193
    iget-object v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mLabels:[B

    iput-object v0, p2, Lcom/b/a/g;->d:[B

    .line 194
    iget-boolean v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mRotated:Z

    iput-boolean v0, p2, Lcom/b/a/g;->f:Z

    .line 195
    iget-object v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mTextureData:[B

    iput-object v0, p2, Lcom/b/a/g;->h:[B

    .line 196
    iget-boolean v0, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mbPortraitDirection:Z

    iput-boolean v0, p2, Lcom/b/a/g;->g:Z

    .line 197
    iget-boolean p1, p1, Lcom/oplus/camera/photo3d/PhotoMeshData;->mbMainObjectOnRight:Z

    iput-boolean p1, p0, Lcom/oplus/camera/photo3d/b;->r:Z

    return-object p2
.end method

.method static synthetic b(Lcom/oplus/camera/photo3d/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/photo3d/b;)Lcom/oplus/camera/photo3d/d;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->g:Lcom/oplus/camera/photo3d/d;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/photo3d/b;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private d()V
    .locals 3

    const-string v0, "ThreeDPhotoManager"

    const-string v1, "notifyRecordingStop"

    .line 177
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->j:Lcom/oplus/camera/photo3d/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/oplus/camera/photo3d/b;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/oplus/camera/photo3d/a;->a(J)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->n:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private e()Lcom/b/a/a/e;
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->k:Lcom/b/a/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/b/a/a/e;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->f()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/b/a/a/e;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(Z)Lcom/b/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/photo3d/b;->k:Lcom/b/a/a/e;

    .line 226
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->k:Lcom/b/a/a/e;

    return-object p0

    .line 229
    :cond_0
    invoke-virtual {v0, v1}, Lcom/b/a/a/e;->a(I)Lcom/b/a/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/b/a/a/c;->b(Lcom/b/a/a/j;)Z

    .line 230
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->k:Lcom/b/a/a/e;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->f()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/b/a/a/e;->a(J)V

    .line 232
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->k:Lcom/b/a/a/e;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/h;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->h:Lcom/b/a/h;

    return-object p0
.end method

.method private f()I
    .locals 1

    .line 236
    iget p0, p0, Lcom/oplus/camera/photo3d/b;->l:I

    const/4 v0, 0x2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0xbb8

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x1388

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/photo3d/b;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->d()V

    return-void
.end method

.method private g()Lcom/b/a/a/d;
    .locals 1

    .line 249
    iget p0, p0, Lcom/oplus/camera/photo3d/b;->l:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 263
    sget-object p0, Lcom/b/a/a/d;->DollyZoom:Lcom/b/a/a/d;

    return-object p0

    .line 260
    :cond_0
    sget-object p0, Lcom/b/a/a/d;->FixedGaze:Lcom/b/a/a/d;

    return-object p0

    .line 257
    :cond_1
    sget-object p0, Lcom/b/a/a/d;->Swing:Lcom/b/a/a/d;

    return-object p0

    .line 254
    :cond_2
    sget-object p0, Lcom/b/a/a/d;->Circle:Lcom/b/a/a/d;

    return-object p0

    .line 251
    :cond_3
    sget-object p0, Lcom/b/a/a/d;->DollyZoom:Lcom/b/a/a/d;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/k;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->s:Lcom/b/a/k;

    return-object p0
.end method

.method static synthetic h(Lcom/oplus/camera/photo3d/b;)Landroid/app/Activity;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private h()Lcom/b/a/a/a;
    .locals 2

    .line 268
    iget v0, p0, Lcom/oplus/camera/photo3d/b;->l:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 272
    :cond_0
    new-instance v0, Lcom/b/a/a/a;

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->i()Lcom/b/a/a/b;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/b/a/a/a;-><init>(Lcom/b/a/a/b;)V

    return-object v0
.end method

.method static synthetic i(Lcom/oplus/camera/photo3d/b;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/oplus/camera/photo3d/b;->q:I

    return p0
.end method

.method private i()Lcom/b/a/a/b;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->e:Lcom/oplus/camera/capmode/a;

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->v()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    .line 290
    sget-object p0, Lcom/b/a/a/b;->ANIM_DIRECTION_DEFAULT:Lcom/b/a/a/b;

    return-object p0

    .line 285
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/b;->r:Z

    if-eqz p0, :cond_1

    .line 286
    sget-object p0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT:Lcom/b/a/a/b;

    goto :goto_0

    .line 287
    :cond_1
    sget-object p0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT:Lcom/b/a/a/b;

    :goto_0
    return-object p0

    .line 279
    :cond_2
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/b;->r:Z

    if-eqz p0, :cond_3

    .line 280
    sget-object p0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_LEFT2RIGHT:Lcom/b/a/a/b;

    goto :goto_1

    .line 281
    :cond_3
    sget-object p0, Lcom/b/a/a/b;->ANIM_DIRECTION_FIXEDGAZE_RIGHT2LEFT:Lcom/b/a/a/b;

    :goto_1
    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/photo3d/b;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/b;->m:Z

    return p0
.end method

.method static synthetic k(Lcom/oplus/camera/photo3d/b;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/oplus/camera/photo3d/b;->r:Z

    return p0
.end method

.method static synthetic l(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/d;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->g()Lcom/b/a/a/d;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/a;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->h()Lcom/b/a/a/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/oplus/camera/photo3d/b;)Lcom/b/a/a/e;
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->e()Lcom/b/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/oplus/camera/photo3d/b;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->b:Landroid/os/Handler;

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 99
    new-instance v0, Lcom/oplus/camera/photo3d/b$a;

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/photo3d/b;->b(J)Lcom/b/a/g;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/oplus/camera/photo3d/b$a;-><init>(Lcom/oplus/camera/photo3d/b;Lcom/b/a/g;J)V

    .line 100
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->b:Landroid/os/Handler;

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 2

    const-string v0, "ThreeDPhotoManager"

    const-string v1, "onEncodeSurfaceCreated"

    .line 105
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/a;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/oplus/camera/photo3d/b;->j:Lcom/oplus/camera/photo3d/a;

    return-void
.end method

.method public a(Lcom/oplus/camera/photo3d/ui/d;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/d;->a()I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/photo3d/b;->l:I

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMenuItemClicked, item: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/photo3d/ui/d;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThreeDPhotoManager"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->h:Lcom/b/a/h;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0}, Lcom/b/a/h;->b()V

    :cond_0
    const-wide/16 v0, 0xbb8

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/photo3d/b;->a(J)V

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 209
    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->a:Landroid/os/Handler;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/photo3d/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 212
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 213
    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->b:Landroid/os/Handler;

    .line 216
    :cond_2
    iput-object v1, p0, Lcom/oplus/camera/photo3d/b;->j:Lcom/oplus/camera/photo3d/a;

    return-void
.end method

.method public c()I
    .locals 1

    const-string v0, "com.oplus.3d.photo.mesh.process.time"

    .line 245
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0}, Lcom/oplus/camera/photo3d/b;->f()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
