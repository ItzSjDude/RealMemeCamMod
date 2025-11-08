.class public Lcom/oplus/camera/doubleexposure/d;
.super Ljava/lang/Object;
.source "DoubleExposureManager.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/d;->a:Landroid/content/Context;

    .line 18
    iput-object v0, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    .line 21
    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/d;->a:Landroid/content/Context;

    .line 22
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->getInstance()Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    return-void
.end method

.method private d()V
    .locals 0

    .line 26
    invoke-static {}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->getInstance()Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->preInit()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 9

    .line 31
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/camera/doubleexposure/d;->d()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 34
    iget-object v2, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->setLogLevel(I)I

    .line 35
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v2, "/odm/etc/camera/doubleexposure/model.data"

    .line 36
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->k(Ljava/lang/String;)[B

    move-result-object v5

    .line 37
    iget-object v3, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    const/4 v4, 0x1

    const-string v7, "/odm/lib64;/odm/lib/rfsa/adsp"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->initByConfig(Z[BLjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    const-string v2, "DoubleExposureManager"

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, initByConfig result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cost time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public a(IIIZIZLcom/oplus/camera/aps/util/CameraApsResult;IIZ)I
    .locals 14

    move-object/from16 v0, p7

    .line 83
    iget v1, v0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    rem-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_0

    iget v1, v0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    goto :goto_0

    .line 84
    :cond_0
    iget v1, v0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    div-int/lit8 v1, v1, 0x40

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x40

    :goto_0
    move v13, v1

    move-object v1, p0

    .line 86
    iget-object v1, v1, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    invoke-virtual/range {p7 .. p7}, Lcom/oplus/camera/aps/util/CameraApsResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v7

    iget v8, v0, Lcom/oplus/camera/aps/util/CameraApsResult;->mWidth:I

    iget v9, v0, Lcom/oplus/camera/aps/util/CameraApsResult;->mHeight:I

    move-object v0, v1

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v0 .. v13}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->process(IIIZIZLandroid/hardware/HardwareBuffer;IIIIZI)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 70
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    invoke-virtual {p0, v1}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->setParams(F)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->attachGL()I

    move-result p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attachGL, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DoubleExposureManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 5

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    iget-object p0, p0, Lcom/oplus/camera/doubleexposure/d;->b:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    invoke-virtual {p0}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->release()I

    move-result p0

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release, releaseResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", time: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DoubleExposureManager"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
