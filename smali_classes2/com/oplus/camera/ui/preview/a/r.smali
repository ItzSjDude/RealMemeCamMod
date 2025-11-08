.class public Lcom/oplus/camera/ui/preview/a/r;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "OplusBlurTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/aa$d;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I

.field private k:I

.field private l:Lcom/oplus/camera/gl/s;

.field private m:Lcom/oplus/camera/gl/s;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/oplus/a/a;

.field private r:Lcom/oplus/camera/ui/preview/a/aa;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/r;->b:I

    .line 44
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/r;->c:I

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    .line 46
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->n:Z

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->p:Z

    .line 52
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    .line 53
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    .line 54
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->s:Z

    .line 55
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->t:Z

    .line 56
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->u:Z

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->v:Landroid/os/Handler;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    return p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;Lcom/oplus/a/a;)Lcom/oplus/a/a;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;)Ljava/lang/Object;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/r;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/r;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/r;)Lcom/oplus/a/a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    return-object p0
.end method

.method private b(II)V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    if-eqz p0, :cond_0

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/oplus/a/a;->b(II)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/r;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/r;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    return p0
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/r;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/r;->b:I

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/r;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/r;->c:I

    return p0
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/a/r;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/r;->t:Z

    return p0
.end method

.method static synthetic g(Lcom/oplus/camera/ui/preview/a/r;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    return p0
.end method

.method static synthetic h(Lcom/oplus/camera/ui/preview/a/r;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    return p0
.end method

.method static synthetic i(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/oplus/camera/ui/preview/a/r;)Landroid/os/HandlerThread;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    return-object p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/r;->b:I

    .line 381
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/r;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    const-string v1, "OplusBlurTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputBlurTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/s;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 3

    const-string v0, "OplusBlurTexturePreview"

    const-string v1, "createEngine"

    .line 200
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    const-string v0, "/odm/etc/camera/sensetime/singlut_portrait.png"

    .line 203
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    const-string v0, "/odm/etc/camera/sensetime/singlut_background.png"

    .line 204
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 208
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BlurPreviewHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 211
    new-instance v0, Lcom/oplus/camera/ui/preview/a/r$1;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->w:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/preview/a/r$1;-><init>(Lcom/oplus/camera/ui/preview/a/r;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->v:Landroid/os/Handler;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    if-nez v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->v:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 258
    :cond_2
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->t:Z

    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->s:Z

    .line 261
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p1, :cond_3

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$d;)V

    .line 266
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$b;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 68
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
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->n:Z

    .line 388
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([BII)V
    .locals 9

    .line 73
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/r;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-eqz v1, :cond_1

    .line 79
    monitor-exit v0

    return-void

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v1, :cond_2

    .line 83
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v6

    iget-boolean v7, p0, Lcom/oplus/camera/ui/preview/a/r;->g:Z

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 84
    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/y$b;->b()[Landroid/graphics/Rect;

    move-result-object v8

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 83
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/a/a;->a([BIIIZ[Landroid/graphics/Rect;)V

    .line 86
    :cond_2
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

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 4

    .line 91
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/r;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v1, :cond_1

    const-string p0, "OplusBlurTexturePreview"

    const-string v1, "canProcess, Engine has not init!"

    .line 97
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    monitor-exit p1

    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v1

    if-gtz v1, :cond_2

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-nez v1, :cond_2

    const-string v1, "OplusBlurTexturePreview"

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canProcess, facesCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    monitor-exit p1

    return v0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result v1

    if-nez v1, :cond_3

    const-string p0, "OplusBlurTexturePreview"

    const-string v1, "canProcess, not open effect"

    .line 109
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    monitor-exit p1

    return v0

    .line 113
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/r;->u:Z

    if-nez p0, :cond_4

    const-string p0, "OplusBlurTexturePreview"

    const-string p1, "canProcess, texture is not inited"

    .line 116
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 113
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 14

    .line 126
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    iget-object v0, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/r;->s:Z

    if-nez v0, :cond_1

    const-string p0, "OplusBlurTexturePreview"

    const-string p1, "process, mSTBlurFilter not create, so return!"

    .line 134
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 139
    :cond_1
    iget-object v0, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 141
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->h()I

    move-result v4

    .line 142
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->i()I

    move-result v5

    .line 144
    iget-object v11, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v11

    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-eqz v2, :cond_8

    .line 146
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/r;->n:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    if-eqz v2, :cond_2

    .line 147
    invoke-direct {p0, v4, v5}, Lcom/oplus/camera/ui/preview/a/r;->b(II)V

    .line 148
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->n:Z

    .line 151
    :cond_2
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/r;->p:Z

    if-eqz v2, :cond_4

    .line 152
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    invoke-virtual {v2}, Lcom/oplus/a/a;->c()V

    .line 153
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    const/4 v3, 0x6

    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-eqz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2, v3, v6}, Lcom/oplus/a/a;->a(IF)I

    .line 154
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->p:Z

    .line 157
    :cond_4
    invoke-static {v1, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 159
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-nez v2, :cond_5

    .line 160
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/aa;->a()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/oplus/a/a;->a(IF)I

    .line 161
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result v0

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    new-array v5, v13, [I

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    .line 162
    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    aput p0, v5, v1

    .line 161
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/oplus/a/a;->a(III[I)I

    move-result p0

    goto :goto_3

    .line 163
    :cond_5
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v2, :cond_7

    .line 164
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result v3

    .line 165
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v0

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->i:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/a/y$b;->b()[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    :goto_2
    iget v7, p0, Lcom/oplus/camera/ui/preview/a/r;->d:I

    iget v8, p0, Lcom/oplus/camera/ui/preview/a/r;->k:I

    new-array v9, v13, [I

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    .line 166
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result v0

    aput v0, v9, v1

    iget-boolean v10, p0, Lcom/oplus/camera/ui/preview/a/r;->g:Z

    .line 164
    invoke-virtual/range {v2 .. v10}, Lcom/oplus/a/a;->a(III[Landroid/graphics/Rect;II[IZ)I

    move-result p0

    goto :goto_3

    :cond_7
    move p0, v12

    .line 169
    :goto_3
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_4

    :cond_8
    move p0, v12

    .line 171
    :goto_4
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {v0}, Lcom/oplus/camera/gl/h;->d()I

    move-result v0

    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->e()I

    move-result p1

    invoke-static {v1, v1, v0, p1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eq p0, v12, :cond_9

    move v1, v13

    :cond_9
    return v1

    :catchall_0
    move-exception p0

    .line 171
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_5
    return v1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-eq v1, p1, :cond_0

    const-string v1, "OplusBlurTexturePreview"

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRetentionOpenChanged, isOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    const/4 v1, 0x1

    .line 404
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/r;->p:Z

    .line 406
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    if-eqz v1, :cond_0

    .line 407
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->q:Lcom/oplus/a/a;

    invoke-virtual {p0, p1}, Lcom/oplus/a/a;->a(Z)V

    .line 410
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

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public e()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/r$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/r$2;-><init>(Lcom/oplus/camera/ui/preview/a/r;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 314
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "OplusBlurTexturePreview"

    const-string v1, "newTextures"

    .line 329
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/r;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/r;->c:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    .line 332
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/r;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/r;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    .line 333
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/r;->u:Z

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/r;->p:Z

    .line 337
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()V
    .locals 2

    const-string v0, "OplusBlurTexturePreview"

    const-string v1, "recycleTextures"

    .line 357
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/r;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 365
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->m:Lcom/oplus/camera/gl/s;

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 370
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/r;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 373
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/r;->u:Z

    return-void
.end method

.method public l()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/r;->o:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
