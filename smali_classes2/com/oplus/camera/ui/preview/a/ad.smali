.class public Lcom/oplus/camera/ui/preview/a/ad;
.super Lcom/oplus/camera/ui/preview/a/y;
.source "VideoFusionTexturePreview.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/aa$e;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private A:Lcom/oplus/camera/ui/preview/a/aa;

.field private B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

.field private C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

.field private D:[B

.field private b:I

.field private c:I

.field private d:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:[I

.field private v:[I

.field private w:[I

.field private x:Lcom/oplus/camera/gl/s;

.field private y:Lcom/oplus/camera/gl/s;

.field private z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 62
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->b:I

    .line 63
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->c:I

    .line 64
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->d:I

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->k:I

    .line 67
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->l:Z

    .line 68
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->m:Z

    .line 69
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->n:Z

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->p:Z

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    .line 73
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    .line 75
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    .line 76
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    .line 78
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/16 v0, 0xb

    .line 79
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->w:[I

    .line 81
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    .line 82
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    .line 83
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    .line 86
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 87
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->D:[B

    return-void
.end method

.method private A()V
    .locals 18

    move-object/from16 v8, p0

    .line 280
    iget-boolean v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/high16 v14, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    if-eqz v0, :cond_0

    .line 282
    aget v1, v0, v13

    int-to-float v1, v1

    div-float/2addr v1, v14

    aget v12, v0, v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    aget v11, v0, v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    aget v10, v0, v10

    int-to-float v10, v10

    div-float/2addr v10, v14

    aget v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v14

    aget v7, v0, v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    aget v6, v0, v6

    int-to-float v6, v6

    div-float v13, v6, v14

    aget v5, v0, v5

    int-to-float v5, v5

    div-float v15, v5, v14

    aget v4, v0, v4

    int-to-float v4, v4

    div-float v16, v4, v14

    aget v3, v0, v3

    int-to-float v3, v3

    div-float v17, v3, v14

    aget v0, v0, v2

    int-to-float v0, v0

    div-float v14, v0, v14

    move-object/from16 v0, p0

    move v2, v12

    move v3, v11

    move v4, v10

    move v5, v9

    move v6, v7

    move v7, v13

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFFFFFF)V

    goto/16 :goto_3

    .line 294
    :cond_0
    iget-boolean v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.video.neon.app.front.params"

    goto :goto_0

    :cond_1
    const-string v0, "com.oplus.video.neon.app.rear.params"

    :goto_0
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_8

    .line 298
    array-length v15, v0

    if-ne v1, v15, :cond_2

    .line 299
    aget v1, v0, v13

    int-to-float v1, v1

    div-float/2addr v1, v14

    aget v12, v0, v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    aget v11, v0, v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    aget v10, v0, v10

    int-to-float v10, v10

    div-float/2addr v10, v14

    aget v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v14

    aget v7, v0, v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    aget v6, v0, v6

    int-to-float v6, v6

    div-float v13, v6, v14

    aget v5, v0, v5

    int-to-float v5, v5

    div-float v15, v5, v14

    aget v4, v0, v4

    int-to-float v4, v4

    div-float v16, v4, v14

    aget v3, v0, v3

    int-to-float v3, v3

    div-float v17, v3, v14

    aget v0, v0, v2

    int-to-float v0, v0

    div-float v14, v0, v14

    move-object/from16 v0, p0

    move v2, v12

    move v3, v11

    move v4, v10

    move v5, v9

    move v6, v7

    move v7, v13

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v17

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFFFFFF)V

    goto/16 :goto_3

    .line 311
    :cond_2
    aget v1, v0, v13

    int-to-float v1, v1

    div-float/2addr v1, v14

    aget v2, v0, v12

    int-to-float v2, v2

    div-float/2addr v2, v14

    aget v3, v0, v11

    int-to-float v3, v3

    div-float/2addr v3, v14

    aget v4, v0, v10

    int-to-float v4, v4

    div-float/2addr v4, v14

    aget v0, v0, v9

    int-to-float v0, v0

    div-float v5, v0, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFF)V

    goto/16 :goto_3

    .line 320
    :cond_3
    iget-object v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->g()F

    move-result v15

    .line 321
    iget-object v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, v15}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 324
    iget-object v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    if-eqz v0, :cond_4

    .line 326
    aget v1, v0, v13

    int-to-float v1, v1

    div-float/2addr v1, v14

    aget v2, v0, v12

    int-to-float v2, v2

    div-float/2addr v2, v14

    aget v3, v0, v11

    int-to-float v3, v3

    div-float/2addr v3, v14

    aget v4, v0, v10

    int-to-float v4, v4

    div-float/2addr v4, v14

    aget v5, v0, v9

    int-to-float v5, v5

    div-float/2addr v5, v14

    aget v7, v0, v7

    int-to-float v7, v7

    div-float/2addr v7, v14

    aget v0, v0, v6

    int-to-float v0, v0

    div-float v9, v0, v14

    move-object/from16 v0, p0

    move v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFF)V

    goto :goto_2

    .line 334
    :cond_4
    iget-boolean v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    if-eqz v0, :cond_5

    const-string v0, "com.oplus.video.blur.app.front.params"

    goto :goto_1

    :cond_5
    const-string v0, "com.oplus.video.blur.app.rear.params"

    :goto_1
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_6

    .line 337
    array-length v9, v0

    if-ne v1, v9, :cond_6

    .line 339
    aget v1, v0, v13

    int-to-float v1, v1

    div-float/2addr v1, v14

    aget v5, v0, v5

    int-to-float v5, v5

    div-float/2addr v5, v14

    aget v4, v0, v4

    int-to-float v4, v4

    div-float/2addr v4, v14

    aget v3, v0, v3

    int-to-float v3, v3

    div-float v9, v3, v14

    aget v2, v0, v2

    int-to-float v2, v2

    div-float v10, v2, v14

    aget v2, v0, v7

    int-to-float v2, v2

    div-float v7, v2, v14

    aget v0, v0, v6

    int-to-float v0, v0

    div-float v11, v0, v14

    move-object/from16 v0, p0

    move v2, v5

    move v3, v4

    move v4, v9

    move v5, v10

    move v6, v7

    move v7, v11

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFF)V

    goto :goto_2

    :cond_6
    move v12, v13

    :goto_2
    if-nez v12, :cond_7

    .line 350
    iget-object v0, v8, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object v1, v8, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    .line 353
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVideoFusionParams, currBlurIntensity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFusionTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private B()V
    .locals 2

    .line 583
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ad$3;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/ad$3;-><init>(Lcom/oplus/camera/ui/preview/a/ad;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private C()Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;
    .locals 4

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anc_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 651
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 654
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 657
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    :cond_0
    :goto_0
    new-instance v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    invoke-direct {v1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;-><init>()V

    const/4 v2, 0x1

    .line 661
    iput-boolean v2, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isRealTime:Z

    .line 663
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->D:[B

    if-nez v3, :cond_1

    const-string v3, "megvii/fusion_model"

    .line 664
    invoke-static {v3}, Lcom/oplus/camera/a/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->D:[B

    .line 667
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->D:[B

    iput-object p0, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->model_data:[B

    .line 668
    iput-object v0, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->cache_path:Ljava/lang/String;

    const-string p0, "/odm/lib64;/odm/lib/rfsa/adsp"

    .line 669
    iput-object p0, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->native_lib_path:Ljava/lang/String;

    const-string p0, "com.oplus.video.fusion.app.load.so.type"

    .line 670
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    goto :goto_1

    .line 674
    :cond_2
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_ANDROID_DLOPEN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->getValue()I

    move-result v0

    iput v0, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->sdkLoadType:I

    goto :goto_1

    .line 678
    :cond_3
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->ANC_LOAD_TYPE_DLOEPN:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;

    invoke-virtual {v0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$SdkLoadType;->getValue()I

    move-result v0

    iput v0, v1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->sdkLoadType:I

    .line 685
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFusionConfig, loadType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VideoFusionTexturePreview"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private a(IZ)I
    .locals 3

    const/16 p0, 0xb4

    const/4 v0, 0x0

    const/16 v1, 0x10e

    const/16 v2, 0x5a

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_4

    if-eq p1, p0, :cond_0

    move p0, v0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    :cond_1
    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v2

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_4
    :goto_1
    return p0
.end method

.method private a(I[II)I
    .locals 2

    if-eqz p2, :cond_0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 636
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/a/ad;->b(I[II)I

    move-result p0

    .line 638
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "processVideoFusion, res: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", costTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFusionTexturePreview"

    .line 638
    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/camera/ui/preview/a/aa;)Lcom/oplus/camera/ui/preview/a/aa;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    return-object p1
.end method

.method private a(FFFFF)V
    .locals 2

    .line 193
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    const-string v1, "VideoFusionTexturePreview"

    if-eqz v0, :cond_0

    .line 194
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 195
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    const-string p0, "setVideoNeonParams, set blurIntensity zero when rear orientation invalid."

    .line 197
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    if-eqz v0, :cond_1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 207
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateSaturation(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 208
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p3}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateFaculaDensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 209
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p4}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 210
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p5}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateSmoothAmount(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 212
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    .line 214
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoNeonParams, intensity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", saturation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", faculaDensity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lightFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", smoothAmount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(FFFFFFF)V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateSaturation(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 264
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p6}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 265
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateColorValue(FFFF)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 266
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p7}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBgLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 268
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    .line 270
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoBlurParams, saturation: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lightFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", red: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", green: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", blue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", yellow: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", bGlightFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoFusionTexturePreview"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(FFFFFFFFFFF)V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    const-string v1, "VideoFusionTexturePreview"

    if-eqz v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 226
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {p1, p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    const-string p0, "setVideoNeonParams, set blurIntensity zero when rear orientation invalid."

    .line 228
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    if-eqz v0, :cond_1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBlurIntensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 238
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateSaturation(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p3}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateFaculaDensity(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 240
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p4}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 241
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p5}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateSmoothAmount(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 242
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p6}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBokehMaxRadiusFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 243
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p7, p8, p9, p10}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateColorValue(FFFF)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 244
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p11}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;->UpdateBgLightFactor(F)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 246
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-virtual {v0, p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setParams(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;)I

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setVideoNeonParams, intensity: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", saturation: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", faculaDensity: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", lightFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", smoothAmount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", bokehMaxRadiusFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", red: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", green: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", blue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", yellow: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", bGlightFactor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(I[II)I
    .locals 7

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->b:I

    iget v4, p0, Lcom/oplus/camera/ui/preview/a/ad;->c:I

    iget-boolean v6, p0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->process(I[IIIIZ)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/ad;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->A()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    .line 611
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFusionEffect, isFrontCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFusionTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    if-nez v0, :cond_0

    .line 616
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->C()Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;->isBackCamera:Z

    .line 620
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->getPreviewInstance()Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    .line 621
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-virtual {p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->preInit()V

    .line 622
    new-instance p1, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    invoke-direct {p1}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    .line 623
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-static {}, Lcom/oplus/camera/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setLogLevel(I)I

    .line 624
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->B:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;

    invoke-virtual {p1, v0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->initByConfig(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanEffectFusionConfig;)I

    move-result p1

    .line 625
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFusionEffect end, res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sdk version: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/ad;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    return p0
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/ad;)Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->C:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$HumanVideoFusionParams;

    return-object p0
.end method

.method static synthetic r()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ad$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/ad$4;-><init>(Lcom/oplus/camera/ui/preview/a/ad;F)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 556
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

    const-string v1, "VideoFusionTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/ad;->b:I

    .line 559
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->c:I

    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;)V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    const-string v1, "VideoFusionTexturePreview"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareTextures, mInputTexture.getId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    invoke-virtual {v2}, Lcom/oplus/camera/gl/s;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareTextures, mOutputTexture.getId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

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

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "createEngine"

    .line 451
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ad$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/ad$1;-><init>(Lcom/oplus/camera/ui/preview/a/ad;Lcom/oplus/camera/ui/preview/a/aa;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 564
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->m:Z

    .line 566
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a([I)V
    .locals 5

    .line 755
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    array-length v1, p1

    if-ne v0, v1, :cond_3

    .line 757
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 760
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 761
    aget v3, v3, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 772
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    .line 774
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    .line 775
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(I)Z
    .locals 2

    .line 95
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/ad;->a_(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 99
    :cond_0
    sget-object p1, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/aa;->b()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->l:Z

    if-nez p0, :cond_2

    const-string p0, "VideoFusionTexturePreview"

    const-string p1, "canProcess, texture is not init"

    .line 106
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 101
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p1

    return v0

    :catchall_0
    move-exception p0

    .line 103
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/y$a;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    sget-object v2, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/ad;->A:Lcom/oplus/camera/ui/preview/a/aa;

    const/4 v13, 0x0

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    iget-object v3, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 122
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    iget-object v14, v1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 127
    sget-object v15, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v15

    .line 128
    :try_start_1
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-nez v1, :cond_1

    .line 129
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    invoke-direct {v0, v1}, Lcom/oplus/camera/ui/preview/a/ad;->c(Z)V

    .line 132
    :cond_1
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->m:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-boolean v2, v0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eqz v2, :cond_2

    .line 134
    sget-object v2, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    goto :goto_0

    .line 135
    :cond_2
    sget-object v2, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    .line 133
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setFeatureType(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;)I

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/ad;->A()V

    .line 137
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->m:Z

    .line 138
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    .line 139
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    .line 142
    :cond_3
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->p:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    iget-boolean v2, v0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eqz v2, :cond_4

    .line 144
    sget-object v2, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_NEON:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    goto :goto_1

    .line 145
    :cond_4
    sget-object v2, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;->ANC_HUM_FEATURE_BOKEH:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;

    .line 143
    :goto_1
    invoke-virtual {v1, v2}, Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;->setFeatureType(Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper$FeatureType;)I

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/ad;->A()V

    .line 147
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->p:Z

    .line 148
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    .line 149
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    .line 152
    :cond_5
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    const/16 v16, 0x2

    const/4 v12, 0x6

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/high16 v17, 0x42c80000    # 100.0f

    if-eqz v1, :cond_6

    .line 153
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v13

    int-to-float v1, v1

    div-float v2, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v8

    int-to-float v1, v1

    div-float v3, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v16

    int-to-float v1, v1

    div-float v4, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v9

    int-to-float v1, v1

    div-float v5, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v10

    int-to-float v1, v1

    div-float v6, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v11

    int-to-float v1, v1

    div-float v7, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    aget v1, v1, v12

    int-to-float v1, v1

    div-float v18, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const/16 v19, 0x7

    aget v1, v1, v19

    int-to-float v1, v1

    div-float v19, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const/16 v20, 0x8

    aget v1, v1, v20

    int-to-float v1, v1

    div-float v20, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const/16 v21, 0x9

    aget v1, v1, v21

    int-to-float v1, v1

    div-float v21, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const/16 v22, 0xa

    aget v1, v1, v22

    int-to-float v1, v1

    div-float v22, v1, v17

    move-object/from16 v1, p0

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v22

    invoke-direct/range {v1 .. v12}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFFFFFF)V

    .line 164
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->q:Z

    .line 167
    :cond_6
    iget-boolean v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    if-eqz v1, :cond_7

    .line 168
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    aget v1, v1, v13

    int-to-float v1, v1

    div-float v2, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v9, 0x1

    aget v1, v1, v9

    int-to-float v1, v1

    div-float v3, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    aget v1, v1, v16

    int-to-float v1, v1

    div-float v4, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v10, 0x3

    aget v1, v1, v10

    int-to-float v1, v1

    div-float v5, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v11, 0x4

    aget v1, v1, v11

    int-to-float v1, v1

    div-float v6, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v12, 0x5

    aget v1, v1, v12

    int-to-float v1, v1

    div-float v7, v1, v17

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v8, 0x6

    aget v1, v1, v8

    int-to-float v1, v1

    div-float v16, v1, v17

    move-object/from16 v1, p0

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/oplus/camera/ui/preview/a/ad;->a(FFFFFFF)V

    .line 175
    iput-boolean v13, v0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    goto :goto_2

    :cond_7
    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x4

    const/4 v12, 0x5

    .line 178
    :goto_2
    iget v1, v0, Lcom/oplus/camera/ui/preview/a/ad;->d:I

    iget-boolean v2, v0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    invoke-direct {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/ad;->a(IZ)I

    move-result v1

    .line 179
    invoke-virtual {v14}, Lcom/oplus/camera/gl/c;->e()I

    move-result v2

    new-array v3, v9, [I

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    invoke-virtual {v4}, Lcom/oplus/camera/gl/s;->e()I

    move-result v4

    aput v4, v3, v13

    invoke-direct {v0, v2, v3, v1}, Lcom/oplus/camera/ui/preview/a/ad;->a(I[II)I

    move-result v1

    .line 180
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    if-eq v10, v1, :cond_9

    if-eq v11, v1, :cond_9

    if-eq v12, v1, :cond_9

    const/4 v2, 0x6

    if-ne v2, v1, :cond_8

    goto :goto_3

    :cond_8
    move v9, v13

    .line 182
    :cond_9
    :goto_3
    iput-boolean v9, v0, Lcom/oplus/camera/ui/preview/a/ad;->n:Z

    .line 188
    iget-boolean v0, v0, Lcom/oplus/camera/ui/preview/a/ad;->n:Z

    return v0

    :catchall_0
    move-exception v0

    .line 180
    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_a
    :goto_4
    :try_start_3
    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "process, false"

    .line 118
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    monitor-exit v2

    return v13

    :catchall_1
    move-exception v0

    .line 122
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public b()V
    .locals 2

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "onDestroy"

    .line 429
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/ad;->e()V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 571
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->d:I

    const/16 v0, 0x5a

    if-eq v0, p1, :cond_1

    const/16 v0, 0x10e

    if-ne v0, p1, :cond_0

    .line 573
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 577
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    .line 578
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->B()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    .line 575
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->B()V

    :cond_2
    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 726
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eq v1, p1, :cond_0

    const-string v1, "VideoFusionTexturePreview"

    .line 728
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVideoNeonOpenChanged, isOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    const/4 p1, 0x1

    .line 731
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->p:Z

    .line 733
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

.method public b([I)V
    .locals 5

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "onVideoBlurTuningParamsChange, received params"

    .line 781
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-nez v0, :cond_3

    const/4 v0, 0x7

    array-length v1, p1

    if-ne v0, v1, :cond_3

    .line 785
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 788
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 789
    aget v3, v3, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 800
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/preview/a/ad;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    .line 802
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->r:Z

    .line 803
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
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

.method public d(I)V
    .locals 2

    .line 599
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->k:I

    .line 601
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 602
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    .line 603
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->B()V

    goto :goto_0

    .line 604
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    if-eqz v0, :cond_1

    if-eq v1, p1, :cond_1

    const/4 p1, 0x0

    .line 605
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    .line 606
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/ad;->B()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyEngine, mHumanEffectFusionApi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->z:Lcom/oplus/ocs/camera/HumanEffectFusionApiHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFusionTexturePreview"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->h:Lcom/oplus/camera/gl/GLRootView;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/ad$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/ad$2;-><init>(Lcom/oplus/camera/ui/preview/a/ad;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public g()Lcom/oplus/camera/gl/s;
    .locals 0

    .line 501
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    return-object p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public i()V
    .locals 4

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "newTextures"

    .line 511
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ad;->c:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    .line 514
    new-instance v0, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->b:I

    iget v2, p0, Lcom/oplus/camera/ui/preview/a/ad;->c:I

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    .line 515
    iput-boolean v3, p0, Lcom/oplus/camera/ui/preview/a/ad;->l:Z

    return-void
.end method

.method public j()V
    .locals 2

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "recycleTextures"

    .line 535
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->l:Z

    if-nez v0, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 542
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 543
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->y:Lcom/oplus/camera/gl/s;

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_2

    .line 547
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 548
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/ad;->x:Lcom/oplus/camera/gl/s;

    :cond_2
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->l:Z

    return-void
.end method

.method public q()[I
    .locals 15

    .line 367
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->u:[I

    const v1, 0x3fa66666    # 1.3f

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_4

    .line 368
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    const-string v13, "com.oplus.video.neon.app.front.params"

    const-string v14, "com.oplus.video.neon.app.rear.params"

    if-eqz v0, :cond_2

    .line 369
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v13, v14

    :goto_0
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v13, p0, Lcom/oplus/camera/ui/preview/a/ad;->w:[I

    aget v14, v0, v12

    int-to-float v14, v14

    mul-float/2addr v14, v1

    float-to-int v1, v14

    aput v1, v13, v12

    .line 375
    aget v1, v0, v11

    aput v1, v13, v11

    .line 376
    aget v1, v0, v10

    aput v1, v13, v10

    .line 377
    aget v1, v0, v9

    aput v1, v13, v9

    .line 378
    aget v1, v0, v8

    aput v1, v13, v8

    const/16 v1, 0xb

    .line 380
    array-length v8, v0

    if-ne v1, v8, :cond_1

    .line 381
    aget v1, v0, v7

    aput v1, v13, v7

    .line 382
    aget v1, v0, v6

    aput v1, v13, v6

    .line 383
    aget v1, v0, v5

    aput v1, v13, v5

    .line 384
    aget v1, v0, v4

    aput v1, v13, v4

    .line 385
    aget v1, v0, v3

    aput v1, v13, v3

    .line 386
    aget v0, v0, v2

    aput v0, v13, v2

    .line 390
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->w:[I

    return-object p0

    .line 392
    :cond_2
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v13, v14

    :goto_1
    invoke-static {v13}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    .line 397
    :cond_4
    iget-boolean v13, p0, Lcom/oplus/camera/ui/preview/a/ad;->t:Z

    if-eqz v13, :cond_5

    .line 398
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->w:[I

    aget v13, v0, v12

    int-to-float v13, v13

    mul-float/2addr v13, v1

    float-to-int v1, v13

    aput v1, p0, v12

    .line 400
    aget v1, v0, v11

    aput v1, p0, v11

    .line 401
    aget v1, v0, v10

    aput v1, p0, v10

    .line 402
    aget v1, v0, v9

    aput v1, p0, v9

    .line 403
    aget v1, v0, v8

    aput v1, p0, v8

    .line 404
    aget v1, v0, v7

    aput v1, p0, v7

    .line 405
    aget v1, v0, v6

    aput v1, p0, v6

    .line 406
    aget v1, v0, v5

    aput v1, p0, v5

    .line 407
    aget v1, v0, v4

    aput v1, p0, v4

    .line 408
    aget v1, v0, v3

    aput v1, p0, v3

    .line 409
    aget v0, v0, v2

    aput v0, p0, v2

    return-object p0

    :cond_5
    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->s:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_0
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->n:Z

    return p0
.end method

.method public z()[I
    .locals 2

    const-string v0, "VideoFusionTexturePreview"

    const-string v1, "getVideoBlurParams"

    .line 417
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/ad;->v:[I

    if-nez v0, :cond_1

    .line 420
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/ad;->g:Z

    if-eqz p0, :cond_0

    const-string p0, "com.oplus.video.blur.app.front.params"

    goto :goto_0

    :cond_0
    const-string p0, "com.oplus.video.blur.app.rear.params"

    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntArrayValue(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
