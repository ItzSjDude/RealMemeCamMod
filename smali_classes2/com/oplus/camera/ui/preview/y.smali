.class public Lcom/oplus/camera/ui/preview/y;
.super Ljava/lang/Object;
.source "SatCrossAnimManager.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/oplus/camera/gl/s;

.field private f:Lcom/oplus/camera/gl/s;

.field private g:I

.field private h:I

.field private i:Lcom/oplus/camera/ui/preview/a/t;

.field private j:Lcom/oplus/camera/ui/preview/h$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/y;->a:Z

    const/4 v1, 0x1

    .line 28
    iput v1, p0, Lcom/oplus/camera/ui/preview/y;->b:I

    .line 29
    iput v0, p0, Lcom/oplus/camera/ui/preview/y;->c:I

    const/high16 v1, -0x80000000

    .line 30
    iput v1, p0, Lcom/oplus/camera/ui/preview/y;->d:I

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    .line 33
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/preview/y;->g:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/ui/preview/y;->h:I

    .line 37
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    .line 38
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    return-void
.end method

.method private a(Lcom/oplus/camera/aps/util/CameraApsResult;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    sget-object v1, Lcom/oplus/camera/e/b;->by:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oplus/camera/ui/preview/y;->a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    if-eqz p0, :cond_1

    .line 71
    array-length p1, p0

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 72
    aget p0, p0, p1

    return p0

    :cond_1
    return v0
.end method

.method private a()[F
    .locals 2

    .line 79
    new-instance p0, Landroid/renderscript/Matrix4f;

    invoke-direct {p0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    invoke-virtual {p0, v1, v0, v1}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v1, v0, v1}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 82
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureResult$Key;Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")[I"
        }
    .end annotation

    .line 54
    invoke-static {p2, p1}, Lcom/oplus/camera/e/b;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 56
    instance-of p2, p0, [I

    if-eqz p2, :cond_1

    .line 57
    check-cast p0, [I

    .line 58
    array-length p2, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/oplus/camera/ui/preview/y;->g:I

    .line 50
    iput p2, p0, Lcom/oplus/camera/ui/preview/y;->h:I

    return-void
.end method

.method public a(Lcom/oplus/camera/aps/util/CameraApsResult;Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;)V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/y;->a(Lcom/oplus/camera/aps/util/CameraApsResult;)I

    move-result v0

    .line 94
    iget v1, p0, Lcom/oplus/camera/ui/preview/y;->d:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_5

    if-ltz v0, :cond_5

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    .line 97
    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$b;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/y;->a:Z

    if-nez v1, :cond_5

    .line 99
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/y;->a:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/oplus/camera/aps/util/CameraApsResult;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    const-string v3, "com.oplus.sat.need.set.zoomratio"

    .line 107
    invoke-static {v3}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 108
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    .line 110
    :cond_1
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 111
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->hashCode()I

    move-result p1

    int-to-float v1, p1

    .line 115
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    invoke-interface {p1, v1}, Lcom/oplus/camera/ui/preview/h$b;->a(F)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    const/4 v3, 0x4

    if-lez v1, :cond_4

    const/high16 v1, 0x43480000    # 200.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    .line 119
    :goto_1
    iput v3, p0, Lcom/oplus/camera/ui/preview/y;->c:I

    goto :goto_2

    .line 121
    :cond_4
    iput v3, p0, Lcom/oplus/camera/ui/preview/y;->c:I

    .line 125
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/oplus/camera/ui/preview/y;->a:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/oplus/camera/ui/preview/y;->b:I

    if-ne v2, p1, :cond_7

    .line 126
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    if-nez p1, :cond_6

    .line 127
    new-instance p1, Lcom/oplus/camera/gl/s;

    iget v1, p0, Lcom/oplus/camera/ui/preview/y;->g:I

    iget v3, p0, Lcom/oplus/camera/ui/preview/y;->h:I

    invoke-direct {p1, v1, v3, v2}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    .line 130
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    const/4 v2, 0x0

    invoke-interface {p1, p2, p3, v1, v2}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    .line 134
    :cond_7
    iput v0, p0, Lcom/oplus/camera/ui/preview/y;->d:I

    :cond_8
    :goto_3
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 138
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 144
    :cond_0
    iget-boolean v2, v0, Lcom/oplus/camera/ui/preview/y;->a:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    iget v5, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    if-gt v2, v5, :cond_3

    .line 145
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    if-nez v2, :cond_1

    .line 146
    new-instance v2, Lcom/oplus/camera/gl/s;

    iget v5, v0, Lcom/oplus/camera/ui/preview/y;->g:I

    iget v6, v0, Lcom/oplus/camera/ui/preview/y;->h:I

    invoke-direct {v2, v5, v6, v3}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v2, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    .line 149
    :cond_1
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    iget-object v5, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    move-object/from16 v6, p1

    invoke-interface {v2, v6, v1, v5, v4}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    .line 152
    iget v1, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    int-to-float v1, v1

    iget v2, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 153
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    iget-object v8, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v9, v1, v10

    .line 154
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/y;->a()[F

    move-result-object v11

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    .line 153
    invoke-interface/range {v6 .. v15}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/c;FF[FIIII)V

    .line 155
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSatCrossAnim, mSatAnimFrameIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSatAnimNums: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SatCrossAnimManager"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget v1, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    iget v2, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    if-ne v1, v2, :cond_2

    .line 161
    iput-boolean v4, v0, Lcom/oplus/camera/ui/preview/y;->a:Z

    .line 162
    iput v3, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    .line 163
    iput v4, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    goto :goto_0

    :cond_2
    add-int/2addr v1, v3

    .line 165
    iput v1, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    .line 170
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    invoke-interface {v1}, Lcom/oplus/camera/ui/preview/h$b;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 171
    iput-boolean v4, v0, Lcom/oplus/camera/ui/preview/y;->a:Z

    .line 172
    iput v3, v0, Lcom/oplus/camera/ui/preview/y;->b:I

    .line 173
    iput v4, v0, Lcom/oplus/camera/ui/preview/y;->c:I

    .line 175
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 176
    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->o()V

    .line 177
    iput-object v2, v0, Lcom/oplus/camera/ui/preview/y;->e:Lcom/oplus/camera/gl/s;

    .line 180
    :cond_4
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    if-eqz v1, :cond_5

    .line 181
    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->o()V

    .line 182
    iput-object v2, v0, Lcom/oplus/camera/ui/preview/y;->f:Lcom/oplus/camera/gl/s;

    .line 185
    :cond_5
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    invoke-interface {v0}, Lcom/oplus/camera/ui/preview/h$b;->b()V

    :cond_6
    :goto_1
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/t;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/y;->i:Lcom/oplus/camera/ui/preview/a/t;

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/h$b;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/y;->j:Lcom/oplus/camera/ui/preview/h$b;

    return-void
.end method
