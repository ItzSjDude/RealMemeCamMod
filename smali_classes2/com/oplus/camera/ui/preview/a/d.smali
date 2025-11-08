.class public Lcom/oplus/camera/ui/preview/a/d;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "ArcsoftBlurTexturePreview.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:I

.field private d:I

.field private k:Lcom/oplus/camera/ui/preview/a/y$b;

.field private l:Lcom/oplus/camera/gl/s;

.field private m:Lcom/oplus/camera/gl/s;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

.field private r:Lcom/oplus/camera/ui/preview/a/aa;

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/d;->b:I

    .line 42
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/d;->c:I

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/d;->d:I

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->k:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 45
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    .line 47
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->n:Z

    .line 48
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->o:Z

    .line 49
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    .line 53
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->s:Z

    .line 54
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->t:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    .line 59
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->t:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/d;Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;)Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/d;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/d;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/d;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/d;)Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    return-object p0
.end method

.method private b(II)Z
    .locals 11

    .line 391
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    const/4 v1, 0x0

    const-string v2, "ArcsoftBlurTexturePreview"

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    invoke-virtual {v0}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->release()I

    move-result v0

    .line 393
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSingleBokeh, release X ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0xa

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSingleBokeh, srcWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", srcHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", outWidth: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", outHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mCameraId: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/camera/ui/preview/a/d;->f:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    iget v9, p0, Lcom/oplus/camera/ui/preview/a/d;->f:I

    const/4 v10, 0x1

    const/16 v8, 0xa

    move v4, p1

    move v5, p2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->init(IIIIIII)I

    move-result p1

    .line 408
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 410
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initSingleBokeh, X ret: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 412
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    .line 414
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/d;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 370
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

    const-string v1, "ArcsoftBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/d;->b:I

    .line 373
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/d;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    const-string v1, "ArcsoftBlurTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputBlurTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

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

    .line 316
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 5

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEngine,  reques: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArcsoftBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    if-nez v1, :cond_0

    .line 267
    new-instance v1, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    invoke-direct {v1}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    .line 269
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    invoke-virtual {v1}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArcsoftBlurTexturePreview"

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createEngine, native version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    .line 275
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

    .line 64
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->k:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 66
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
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextureSizeChanged, sizeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ArcsoftBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/d;->n:Z

    .line 382
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
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/d;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v1, :cond_1

    .line 81
    monitor-exit p1

    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v1

    if-gtz v1, :cond_3

    .line 89
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/d;->o:Z

    if-eqz v1, :cond_2

    .line 90
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->o:Z

    .line 93
    :cond_2
    monitor-exit p1

    return v0

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result v1

    if-nez v1, :cond_4

    const-string p0, "ArcsoftBlurTexturePreview"

    const-string v1, "canProcess, not open effect"

    .line 97
    invoke-static {p0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    monitor-exit p1

    return v0

    .line 101
    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/d;->s:Z

    if-nez p0, :cond_5

    const-string p0, "ArcsoftBlurTexturePreview"

    const-string p1, "canProcess, texture is not inited"

    .line 104
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 101
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 114
    iget-object v3, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 120
    :cond_0
    iget-object v3, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 122
    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->h()I

    move-result v4

    .line 123
    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->i()I

    move-result v5

    .line 125
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/d;->a:Ljava/lang/Object;

    monitor-enter v6

    .line 126
    :try_start_0
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v7, :cond_1

    .line 127
    monitor-exit v6

    return v2

    .line 129
    :cond_1
    iget-boolean v7, v0, Lcom/oplus/camera/ui/preview/a/d;->n:Z

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    if-eqz v7, :cond_2

    .line 130
    invoke-direct {v0, v4, v5}, Lcom/oplus/camera/ui/preview/a/d;->b(II)Z

    .line 132
    iput-boolean v2, v0, Lcom/oplus/camera/ui/preview/a/d;->n:Z

    .line 135
    :cond_2
    iget-boolean v7, v0, Lcom/oplus/camera/ui/preview/a/d;->p:Z

    if-nez v7, :cond_3

    .line 136
    monitor-exit v6

    return v2

    .line 139
    :cond_3
    invoke-static {v2, v2, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 141
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->k:Lcom/oplus/camera/ui/preview/a/y$b;

    if-eqz v7, :cond_4

    .line 142
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->k:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-interface {v7}, Lcom/oplus/camera/ui/preview/a/y$b;->b()[Landroid/graphics/Rect;

    move-result-object v7

    iput-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    .line 145
    :cond_4
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    if-eqz v7, :cond_d

    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    array-length v7, v7

    if-lez v7, :cond_d

    .line 146
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    array-length v13, v7

    mul-int/lit8 v7, v13, 0x4

    .line 147
    new-array v14, v7, [I

    move v7, v2

    move v10, v7

    :goto_0
    if-ge v7, v13, :cond_6

    .line 151
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    aget-object v11, v11, v7

    if-nez v11, :cond_5

    const-string v4, "ArcsoftBlurTexturePreview"

    const-string v5, "process, faceRects is null"

    .line 152
    invoke-static {v4, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_5
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int v11, v4, v11

    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    .line 164
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v5, v11

    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    .line 171
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int v11, v4, v11

    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    .line 178
    iget-object v11, v0, Lcom/oplus/camera/ui/preview/a/d;->u:[Landroid/graphics/Rect;

    aget-object v11, v11, v7

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v5, v11

    aput v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v4, 0x4

    .line 187
    new-array v15, v4, [I

    const/16 v5, 0xa

    aput v5, v15, v2

    const/16 v5, 0xb

    aput v5, v15, v9

    const/16 v5, 0xc

    const/4 v7, 0x2

    aput v5, v15, v7

    const/16 v5, 0xd

    const/4 v10, 0x3

    aput v5, v15, v10

    .line 195
    iget v5, v0, Lcom/oplus/camera/ui/preview/a/d;->d:I

    if-eqz v5, :cond_a

    const/16 v10, 0x5a

    if-eq v5, v10, :cond_9

    const/16 v4, 0xb4

    if-eq v5, v4, :cond_8

    const/16 v4, 0x10e

    if-eq v5, v4, :cond_7

    move/from16 v17, v2

    goto :goto_2

    :cond_7
    move/from16 v17, v9

    goto :goto_2

    :cond_8
    move/from16 v17, v7

    goto :goto_2

    :cond_9
    move/from16 v17, v4

    goto :goto_2

    :cond_a
    move/from16 v17, v10

    .line 213
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    iget-boolean v4, v0, Lcom/oplus/camera/ui/preview/a/d;->o:Z

    if-nez v4, :cond_c

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/aa;->C()I

    move-result v4

    if-lez v4, :cond_c

    .line 216
    iput-boolean v9, v0, Lcom/oplus/camera/ui/preview/a/d;->o:Z

    .line 217
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_3

    :cond_b
    move v5, v9

    :goto_3
    invoke-virtual {v4, v5}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->forceUpdateFrame(I)I

    const-string v4, "ArcsoftBlurTexturePreview"

    const-string v5, "process, forceUpdateFrame"

    .line 219
    invoke-static {v4, v5}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_c
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/d;->r:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/aa;->a()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 223
    iget-object v10, v0, Lcom/oplus/camera/ui/preview/a/d;->q:Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;

    invoke-virtual {v3}, Lcom/oplus/camera/gl/s;->e()I

    move-result v11

    new-array v12, v9, [I

    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result v0

    aput v0, v12, v2

    move/from16 v16, v4

    invoke-virtual/range {v10 .. v17}, Lcom/arcsoft/libsinglecamerabokeh/jni/SingleCameraBokehJNI;->process(I[II[I[III)I

    move-result v0

    .line 233
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_4

    :cond_d
    move v0, v8

    .line 235
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v3, v1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {v3}, Lcom/oplus/camera/gl/h;->d()I

    move-result v3

    iget-object v1, v1, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    invoke-interface {v1}, Lcom/oplus/camera/gl/h;->e()I

    move-result v1

    invoke-static {v2, v2, v3, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    if-eq v0, v8, :cond_e

    move v2, v9

    :cond_e
    return v2

    :catchall_0
    move-exception v0

    .line 235
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    :goto_5
    return v2
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 387
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/d;->d:I

    return-void
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

    .line 280
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->h:Lcom/oplus/camera/gl/GLRootView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ArcsoftBlurTexturePreview"

    const-string v1, "destroyEngine"

    .line 284
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/d$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/d$1;-><init>(Lcom/oplus/camera/ui/preview/a/d;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 306
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "ArcsoftBlurTexturePreview"

    const-string v1, "newTextures"

    .line 325
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/d;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/d;->c:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    .line 328
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/d;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/d;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    .line 329
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/d;->s:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "ArcsoftBlurTexturePreview"

    const-string v1, "recycleTextures"

    .line 349
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 357
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->m:Lcom/oplus/camera/gl/s;

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 362
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/d;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/d;->s:Z

    return-void
.end method
