.class public Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;
.super Ljava/lang/Object;
.source "OplusBlurPreviewHelper.java"


# static fields
.field private static mInstance:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;
    .locals 2

    .line 13
    sget-object v0, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->mInstance:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    if-nez v0, :cond_1

    .line 14
    const-class v0, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->mInstance:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    invoke-direct {v1}, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;-><init>()V

    sput-object v1, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->mInstance:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    .line 18
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;->mInstance:Lcom/oplus/ocs/camera/OplusBlurPreviewHelper;

    return-object v0
.end method


# virtual methods
.method public bokehPreviewDestory()I
    .locals 0

    .line 59
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewDestory()I

    move-result p0

    return p0
.end method

.method public bokehPreviewGetMaskTexture([B[IZ)I
    .locals 0

    .line 34
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewGetMaskTexture([B[IZ)I

    move-result p0

    return p0
.end method

.method public bokehPreviewGetVersion()Ljava/lang/String;
    .locals 0

    .line 38
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bokehPreviewInit(II)J
    .locals 0

    .line 25
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewInit(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public bokehPreviewProcess(IIII[I)I
    .locals 6

    .line 30
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewProcess(IIII[I)I

    move-result p0

    return p0
.end method

.method public bokehPreviewSetDebug(Z)I
    .locals 0

    .line 55
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewSetDebug(Z)I

    move-result p0

    return p0
.end method

.method public bokehPreviewSetParam(IF)I
    .locals 0

    .line 43
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewSetParam(IF)I

    move-result p0

    return p0
.end method

.method public bokehPreviewTextureCopy(I[IZ)I
    .locals 0

    .line 47
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewTextureCopy(I[IZ)I

    move-result p0

    return p0
.end method

.method public bokehPreviewTextureResize(IIIIZ)I
    .locals 6

    .line 51
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/blur/OplusBlurPreview;->bokehPreviewTextureResize(IIIIZ)I

    move-result p0

    return p0
.end method

.method public segExecute([B[BIIIII[I[I[I[I[I)I
    .locals 13

    .line 73
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/oplus/blur/OplusBlurPreview;->segExecute([B[BIIIII[I[I[I[I[I)I

    move-result v0

    return v0
.end method

.method public segGetVersion()Ljava/lang/String;
    .locals 0

    .line 64
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/blur/OplusBlurPreview;->segGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public segInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I
    .locals 7

    .line 68
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/blur/OplusBlurPreview;->segInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public segLogLevel(I)I
    .locals 0

    .line 82
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/blur/OplusBlurPreview;->segLogLevel(I)I

    move-result p0

    return p0
.end method

.method public segUnInit()I
    .locals 0

    .line 78
    invoke-static {}, Lcom/oplus/blur/OplusBlurPreview;->getInstance()Lcom/oplus/blur/OplusBlurPreview;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/blur/OplusBlurPreview;->segUnInit()I

    move-result p0

    return p0
.end method
