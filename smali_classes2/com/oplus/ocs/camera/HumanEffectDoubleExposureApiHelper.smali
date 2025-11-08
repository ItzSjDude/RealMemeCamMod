.class public Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;
.super Ljava/lang/Object;
.source "HumanEffectDoubleExposureApiHelper.java"


# static fields
.field private static sInstance:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    invoke-direct {v0}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;-><init>()V

    sput-object v0, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->sInstance:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCameraType(Z)Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;
    .locals 0

    if-eqz p1, :cond_0

    .line 77
    sget-object p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;->CAMERA_TYPE_FRONT:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;

    goto :goto_0

    .line 78
    :cond_0
    sget-object p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;->CAMERA_TYPE_REAR:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;

    :goto_0
    return-object p0
.end method

.method public static getInstance()Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;
    .locals 1

    .line 18
    sget-object v0, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->sInstance:Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;

    return-object v0
.end method


# virtual methods
.method public attachGL()I
    .locals 0

    .line 33
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->attachGL()I

    move-result p0

    return p0
.end method

.method public initByConfig(Z[BLjava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .line 28
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p0

    new-instance v6, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanEffectDoubleExposureConfig;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanEffectDoubleExposureConfig;-><init>(Z[BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v6}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->initByConfig(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanEffectDoubleExposureConfig;)I

    move-result p0

    return p0
.end method

.method public preInit()V
    .locals 0

    .line 67
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->preInit()V

    return-void
.end method

.method public process(IIIZIZLandroid/hardware/HardwareBuffer;IIIIZI)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p12

    .line 45
    new-instance v9, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    move-object v2, v9

    move/from16 v3, p1

    move/from16 v4, p4

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;-><init>(IZIIIZ)V

    .line 47
    new-instance v2, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTextureRequest;

    .line 48
    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->getCameraType(Z)Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTextureRequest;-><init>(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;)V

    .line 50
    new-instance v3, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoHardwareBuffer;

    sget-object v12, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$ImageType;->ANC_HUM_IMG_NV21:Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$ImageType;

    move-object v10, v3

    move-object/from16 v11, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p13

    move/from16 v16, p11

    invoke-direct/range {v10 .. v16}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$ImageType;IIII)V

    .line 54
    new-instance v4, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessHardwareBufferRequest;

    .line 55
    invoke-direct {v0, v1}, Lcom/oplus/ocs/camera/HumanEffectDoubleExposureApiHelper;->getCameraType(Z)Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessHardwareBufferRequest;-><init>(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$CameraType;Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoHardwareBuffer;)V

    .line 56
    new-instance v0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 p0, v0

    move/from16 p1, p10

    move/from16 p2, v1

    move/from16 p3, p8

    move/from16 p4, p9

    move/from16 p5, p11

    move/from16 p6, v3

    invoke-direct/range {p0 .. p6}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;-><init>(IZIIIZ)V

    .line 58
    new-instance v1, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;

    invoke-direct {v1, v0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;-><init>(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoTexture;)V

    .line 61
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object v0

    invoke-virtual {v0, v4, v2, v1}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->process(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessHardwareBufferRequest;Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTextureRequest;Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanProcessTexureResult;)I

    move-result v0

    return v0
.end method

.method public release()I
    .locals 0

    .line 37
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p0

    invoke-virtual {p0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->release()I

    move-result p0

    return p0
.end method

.method public setLogLevel(I)I
    .locals 0

    .line 23
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->setLogLevel(I)I

    move-result p0

    return p0
.end method

.method public setParams(F)V
    .locals 0

    .line 71
    new-instance p0, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoDoubleExposureParams;

    invoke-direct {p0, p1}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoDoubleExposureParams;-><init>(F)V

    .line 73
    invoke-static {}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->getInstance()Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi;->setParams(Lcom/anc/humansdk/doubleexposure/HumanEffectDoubleExposureApi$HumanVideoDoubleExposureParams;)I

    return-void
.end method
