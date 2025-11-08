.class public Lcom/oplus/camera/ui/preview/a/ac;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "VideoBlurTexturePreview.java"


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

.field private p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

.field private q:Lcom/oplus/camera/ui/preview/a/aa;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    .line 55
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    .line 56
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->k:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    .line 58
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    .line 59
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->n:Z

    .line 60
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->o:Z

    .line 63
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    .line 66
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->r:Z

    return-void
.end method

.method private a(IZ)I
    .locals 3

    const/4 p0, 0x0

    const/16 v0, 0x10e

    const/16 v1, 0xb4

    const/16 v2, 0x5a

    if-eqz p2, :cond_0

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

.method private a(I[IZFILandroid/graphics/Point;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/ac;->r()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 325
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    aget v7, p2, v4

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 326
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v14, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v15, v1

    iget v1, v0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    iget v0, v0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    move/from16 v6, p1

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p3

    move/from16 v16, v1

    move/from16 v17, v0

    .line 325
    invoke-virtual/range {v5 .. v17}, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->process(III[I[IFIIFFII)I

    move-result v0

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    aget v6, p2, v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 329
    iget v15, v0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    iget v0, v0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    move-object v4, v1

    move/from16 v5, p1

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p3

    move/from16 v16, v0

    .line 328
    invoke-virtual/range {v4 .. v16}, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;->process(III[I[IFIIFFII)I

    move-result v0

    .line 332
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processVideoBlur, result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", costTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoBlurTexturePreview"

    .line 332
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/ocs/camera/HumanEffectBokehHelper;)Lcom/oplus/ocs/camera/HumanEffectBokehHelper;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ac;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/ac;)Lcom/oplus/ocs/camera/HumanEffectBokehHelper;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    return-object p0
.end method

.method private q()V
    .locals 10

    .line 286
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ac;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VideoBlurTexturePreview"

    const-string v1, "initVideoBlur, start"

    .line 287
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.oplus.video.blur.cache.path"

    .line 289
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/ac;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "anc_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 296
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVideoBlur, path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 302
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    :cond_1
    :goto_1
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    .line 310
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result v8

    invoke-static {}, Lcom/oplus/camera/e;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move v9, v1

    const-string v6, "odm/etc/camera/megvii/merged_model"

    const-string v7, "/odm/lib64;/odm/lib/rfsa/adsp"

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/oplus/ocs/camera/HumanEffectBokehHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

    .line 311
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :cond_3
    return-void
.end method

.method private r()Z
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->p:Lcom/oplus/ocs/camera/HumanEffectBokehHelper;

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

    .line 267
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

    const-string v1, "VideoBlurTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    .line 270
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    const-string v1, "VideoBlurTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputBlurTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputBlurTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

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

    const-string v0, "VideoBlurTexturePreview"

    const-string v1, "createEngine"

    .line 169
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ac$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/ac$1;-><init>(Lcom/oplus/camera/ui/preview/a/ac;Lcom/oplus/camera/ui/preview/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->n:Z

    .line 277
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

    .line 75
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/ac;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    if-nez v1, :cond_1

    .line 81
    monitor-exit p1

    return v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->b()Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    monitor-exit p1

    return v0

    .line 87
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->r:Z

    if-nez p0, :cond_3

    const-string p0, "VideoBlurTexturePreview"

    const-string p1, "canProcess, texture is not inited"

    .line 90
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 87
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 13

    .line 100
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 108
    :cond_0
    iget-object p1, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 110
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->h()I

    move-result v2

    .line 111
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->i()I

    move-result v4

    .line 112
    iget-boolean v8, p0, Lcom/oplus/camera/ui/preview/a/ac;->g:Z

    .line 114
    iget-object v12, p0, Lcom/oplus/camera/ui/preview/a/ac;->b:Ljava/lang/Object;

    monitor-enter v12

    .line 115
    :try_start_0
    iget-boolean v5, p0, Lcom/oplus/camera/ui/preview/a/ac;->n:Z

    if-eqz v5, :cond_1

    const-string v5, "VideoBlurTexturePreview"

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process, inTextureWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", inTextureHeight: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ac;->q()V

    .line 119
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ac;->n:Z

    .line 122
    :cond_1
    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->k:I

    invoke-direct {p0, v2, v8}, Lcom/oplus/camera/ui/preview/a/ac;->a(IZ)I

    move-result v10

    .line 123
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/aa;->g()F

    move-result v9

    .line 125
    invoke-virtual {p1}, Lcom/oplus/camera/gl/c;->e()I

    move-result v6

    const/4 p1, 0x1

    new-array v7, p1, [I

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    aput v2, v7, v3

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->q:Lcom/oplus/camera/ui/preview/a/aa;

    .line 126
    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/aa;->I()Landroid/graphics/Point;

    move-result-object v11

    move-object v5, p0

    .line 125
    invoke-direct/range {v5 .. v11}, Lcom/oplus/camera/ui/preview/a/ac;->a(I[IZFILandroid/graphics/Point;)I

    move-result v2

    .line 127
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    move v4, p1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 129
    :goto_0
    iput-boolean v4, p0, Lcom/oplus/camera/ui/preview/a/ac;->o:Z

    if-eqz v2, :cond_4

    const/4 p0, 0x4

    if-eq p0, v2, :cond_4

    const/4 p0, 0x5

    if-eq p0, v2, :cond_4

    const/4 p0, 0x6

    if-ne p0, v2, :cond_3

    goto :goto_1

    :cond_3
    move p1, v3

    .line 135
    :cond_4
    :goto_1
    invoke-static {}, Lcom/oplus/camera/algovisualization/a;->a()J

    move-result-wide v2

    .line 137
    invoke-static {v0, v1, v2, v3}, Lcom/oplus/camera/algovisualization/a;->a(JJ)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/camera/ui/preview/a/ac;->a:Ljava/lang/String;

    return p1

    :catchall_0
    move-exception p0

    .line 127
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_2
    const-string p0, "VideoBlurTexturePreview"

    const-string p1, "process, false"

    .line 103
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ac;->k:I

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public e()V
    .locals 2

    const-string v0, "VideoBlurTexturePreview"

    const-string v1, "destroyEngine"

    .line 185
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ac$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/ac$2;-><init>(Lcom/oplus/camera/ui/preview/a/ac;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "VideoBlurTexturePreview"

    const-string v1, "newTextures"

    .line 222
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    .line 225
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->c:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ac;->d:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    .line 226
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ac;->r:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "VideoBlurTexturePreview"

    const-string v1, "recycleTextures"

    .line 246
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->r:Z

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 254
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->m:Lcom/oplus/camera/gl/s;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 259
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ac;->l:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 262
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ac;->r:Z

    return-void
.end method

.method public y()Z
    .locals 0

    .line 144
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ac;->o:Z

    return p0
.end method

.method public z()[I
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
