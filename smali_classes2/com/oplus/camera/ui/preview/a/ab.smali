.class public Lcom/oplus/camera/ui/preview/a/ab;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "TiltShiftTexturePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/ab$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "0ms"


# instance fields
.field private final b:Ljava/lang/Object;

.field private c:I

.field private d:I

.field private k:I

.field private l:Lcom/oplus/camera/gl/s;

.field private m:Lcom/oplus/camera/gl/s;

.field private n:Z

.field private o:Z

.field private p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

.field private q:Lcom/oplus/camera/ui/preview/a/aa;

.field private r:Z

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->c:I

    .line 40
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->d:I

    .line 41
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->k:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    .line 43
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    .line 44
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->n:Z

    .line 45
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->o:Z

    .line 47
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    .line 48
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    .line 49
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->r:Z

    .line 50
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->s:Z

    return-void
.end method

.method private a(III[IZILandroid/graphics/Point;)I
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p4

    .line 301
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    .line 305
    :cond_0
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/aa;->e()Lcom/oplus/camera/tiltshift/TiltShiftParam;

    move-result-object v2

    .line 307
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ab;->q()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v3, 0x1

    .line 309
    new-array v3, v3, [I

    .line 310
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->isAdjusting()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->setDebugMask(Z)I

    .line 311
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    sget-object v5, Lcom/oplus/camera/ui/preview/a/ab$a;->BLUR_LEVEL:Lcom/oplus/camera/ui/preview/a/ab$a;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/ab$a;->ordinal()I

    move-result v5

    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v6}, Lcom/oplus/camera/ui/preview/a/aa;->f()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->setParam(IF)I

    .line 312
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    sget-object v5, Lcom/oplus/camera/ui/preview/a/ab$a;->ROTATION_ANGLE:Lcom/oplus/camera/ui/preview/a/ab$a;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/ab$a;->ordinal()I

    move-result v5

    move/from16 v6, p6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->setParam(IF)I

    .line 322
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getCenterX()F

    move-result v7

    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getCenterY()F

    move-result v8

    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getInnerDistance()F

    move-result v9

    .line 323
    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->getAngle()F

    move-result v10

    invoke-virtual {v2}, Lcom/oplus/camera/tiltshift/TiltShiftParam;->isCircle()Z

    move-result v11

    move v5, p1

    move v6, p2

    move-object v12, v3

    .line 322
    invoke-virtual/range {v4 .. v12}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->getMaskTexture(IIFFFFZ[I)I

    .line 325
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    const/4 v2, 0x0

    aget v2, v3, v2

    move/from16 v3, p3

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->process(II[I)I

    move-result v3

    .line 327
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_1
    return v3
.end method

.method private a(IZ)I
    .locals 3

    const/4 p0, 0x0

    const/16 v0, 0x10e

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/tiltshift/TiltShiftPreview;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ab;)Ljava/lang/Object;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a(IIZ)V
    .locals 2

    .line 288
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ab;->q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTiltShift, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TiltShiftTexturePreview"

    invoke-static {v0, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/oplus/camera/tiltshift/TiltShiftPreview;->init(IIII)I

    move-result p0

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initTiltShift, X, initResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ab;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/ab;)Z
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ab;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/ab;)Lcom/oplus/camera/tiltshift/TiltShiftPreview;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    return-object p0
.end method

.method private q()Z
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->p:Lcom/oplus/camera/tiltshift/TiltShiftPreview;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .line 269
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

    const-string v1, "TiltShiftTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/ab;->c:I

    .line 272
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->d:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    const-string v1, "TiltShiftTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTiltShiftTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTiltShiftTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {p0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa;)V
    .locals 2

    const-string v0, "TiltShiftTexturePreview"

    const-string v1, "createEngine"

    .line 165
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ab$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/ab$1;-><init>(Lcom/oplus/camera/ui/preview/a/ab;Lcom/oplus/camera/ui/preview/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->n:Z

    .line 279
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

    .line 67
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/ab;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v1, :cond_1

    .line 73
    monitor-exit p1

    return v0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    monitor-exit p1

    return v0

    .line 79
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->s:Z

    if-nez p0, :cond_3

    const-string p0, "TiltShiftTexturePreview"

    const-string p1, "canProcess, texture is not inited"

    .line 82
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 79
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 13

    .line 92
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/ab;->r:Z

    if-nez v4, :cond_1

    const-string p0, "TiltShiftTexturePreview"

    const-string p1, "process, not create, so return!"

    .line 102
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    monitor-exit v2

    return v3

    .line 106
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 110
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v6

    .line 111
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v5

    .line 112
    iget-boolean v9, p0, Lcom/oplus/camera/ui/preview/a/ab;->g:Z

    .line 114
    iget-object v12, p0, Lcom/oplus/camera/ui/preview/a/ab;->b:Ljava/lang/Object;

    monitor-enter v12

    .line 115
    :try_start_1
    iget-boolean v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->n:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ab;->q()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TiltShiftTexturePreview"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process, inTextureWidth: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", inTextureHeight: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v5, v6, v9}, Lcom/oplus/camera/ui/preview/a/ab;->a(IIZ)V

    .line 119
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ab;->n:Z

    .line 122
    :cond_2
    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->k:I

    invoke-direct {p0, v2, v9}, Lcom/oplus/camera/ui/preview/a/ab;->a(IZ)I

    move-result v10

    .line 124
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result v7

    const/4 p1, 0x1

    new-array v8, p1, [I

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    aput v2, v8, v3

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->q:Lcom/oplus/camera/ui/preview/a/aa;

    .line 125
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/aa;->I()Landroid/graphics/Point;

    move-result-object v11

    move-object v4, p0

    .line 124
    invoke-direct/range {v4 .. v11}, Lcom/oplus/camera/ui/preview/a/ab;->a(III[IZILandroid/graphics/Point;)I

    move-result v2

    .line 126
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    move v4, p1

    goto :goto_0

    :cond_3
    move v4, v3

    .line 128
    :goto_0
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/ab;->o:Z

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v3

    .line 131
    :goto_1
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v2

    .line 133
    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/ab;->a:Ljava/lang/String;

    return p1

    :catchall_0
    move-exception p0

    .line 126
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 106
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_5
    :goto_2
    const-string p0, "TiltShiftTexturePreview"

    const-string p1, "process, false"

    .line 95
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 284
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ab;->k:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x200

    return p0
.end method

.method public e()V
    .locals 2

    const-string v0, "TiltShiftTexturePreview"

    const-string v1, "destroyEngine"

    .line 186
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ab$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/ab$2;-><init>(Lcom/oplus/camera/ui/preview/a/ab;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "TiltShiftTexturePreview"

    const-string v1, "newTextures"

    .line 224
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    .line 227
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ab;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    .line 228
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ab;->s:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "TiltShiftTexturePreview"

    const-string v1, "recycleTextures"

    .line 248
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 256
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->m:Lcom/oplus/camera/gl/s;

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 260
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 261
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ab;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ab;->s:Z

    return-void
.end method

.method public y()Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ab;->o:Z

    return p0
.end method
