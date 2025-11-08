.class public Lcom/oplus/camera/ui/menu/levelcontrol/f;
.super Lcom/oplus/camera/ui/menu/levelcontrol/a;
.source "CylinderSide.java"


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:I

.field private P:Ljava/nio/FloatBuffer;

.field private Q:Ljava/nio/FloatBuffer;

.field private R:[I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/a;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    .line 22
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->x:I

    .line 23
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    .line 24
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    .line 26
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->A:I

    .line 27
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->B:I

    .line 28
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->C:I

    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->D:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->E:Ljava/lang/String;

    .line 32
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    .line 33
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->G:I

    .line 34
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->H:I

    .line 35
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->I:I

    .line 37
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->J:I

    .line 38
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->K:I

    .line 39
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->L:I

    .line 40
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->M:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->N:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->O:I

    .line 45
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->P:Ljava/nio/FloatBuffer;

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->Q:Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->R:[I

    .line 54
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(D)D
    .locals 6

    const-wide/16 v0, 0x0

    cmpg-double p0, v0, p1

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f000000    # 0.5f

    if-gtz p0, :cond_0

    float-to-double v4, v3

    cmpl-double p0, v4, p1

    if-ltz p0, :cond_0

    float-to-double v0, v2

    sub-double p0, v4, p1

    mul-double/2addr p0, p0

    sub-double/2addr v0, p0

    .line 222
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr v4, p0

    return-wide v4

    :cond_0
    float-to-double v4, v3

    cmpg-double p0, v4, p1

    if-gtz p0, :cond_1

    float-to-double v0, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    sub-double p0, v0, v4

    mul-double/2addr p0, p0

    sub-double/2addr v2, p0

    .line 224
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr v0, p0

    :cond_1
    return-wide v0
.end method

.method private a(DDDZ)F
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    if-eqz p7, :cond_0

    sub-double/2addr p1, p3

    div-double/2addr p1, v0

    add-double/2addr p1, p5

    goto :goto_0

    :cond_0
    add-double/2addr p1, p3

    div-double/2addr p1, v0

    sub-double/2addr p1, p5

    :goto_0
    double-to-float p0, p1

    return p0
.end method

.method private a([FI)V
    .locals 1

    .line 249
    aget p0, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    aput v0, p1, p2

    return-void
.end method

.method private a([FIII)V
    .locals 1

    int-to-float p0, p3

    int-to-float p3, p4

    div-float p4, p0, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v0, p4

    .line 253
    aget p4, p1, p2

    mul-float/2addr p4, p0

    div-float/2addr p4, p3

    add-float/2addr v0, p4

    aput v0, p1, p2

    return-void
.end method

.method private a([FIZZZII)V
    .locals 0

    if-nez p5, :cond_0

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->b([FI)V

    :cond_0
    if-eqz p4, :cond_1

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->b([FI)V

    :cond_1
    if-eqz p3, :cond_2

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FI)V

    .line 244
    :cond_2
    invoke-direct {p0, p1, p2, p6, p7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIII)V

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->c([FI)V

    return-void
.end method

.method private b([FI)V
    .locals 2

    add-int/lit8 p0, p2, -0x1

    .line 257
    aget v0, p1, p0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    aput v0, p1, p0

    .line 258
    aget p0, p1, p2

    sub-float/2addr v1, p0

    aput v1, p1, p2

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vertex_tex.sh"

    invoke-static {v1, v0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->D:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_tex.sh"

    invoke-static {v0, p1}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->E:Ljava/lang/String;

    .line 289
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->E:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oplus/camera/util/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    .line 291
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    .line 292
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    .line 293
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->x:I

    .line 294
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "uCamera"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->B:I

    .line 295
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "uLightLocation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->C:I

    .line 296
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    const-string v0, "uMMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->A:I

    return-void
.end method

.method private c([FI)V
    .locals 2

    add-int/lit8 p0, p2, -0x1

    .line 262
    aget v0, p1, p0

    .line 263
    aget v1, p1, p2

    aput v1, p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, v0

    .line 264
    aput p0, p1, p2

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "vertex_tex.sh"

    invoke-static {v1, v0}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->M:Ljava/lang/String;

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "frag_oes_tex.sh"

    invoke-static {v0, p1}, Lcom/oplus/camera/util/k;->a(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->N:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->M:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->N:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/oplus/camera/util/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    .line 385
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "aPosition"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->H:I

    .line 386
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "aTexCoor"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->I:I

    .line 387
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "uMVPMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->G:I

    .line 388
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "uCamera"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->K:I

    .line 389
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "uLightLocation"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->L:I

    .line 390
    iget p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    const-string v0, "uMMatrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->J:I

    return-void
.end method


# virtual methods
.method public a(FFFIFFZLcom/oplus/camera/ui/menu/levelcontrol/i;)V
    .locals 44

    move-object/from16 v8, p0

    move/from16 v0, p4

    mul-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v9, 0x43b40000    # 360.0f

    div-float v2, p6, v9

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 60
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v10, v1

    .line 63
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result v11

    .line 64
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v12

    .line 65
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->v()Z

    move-result v13

    .line 66
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->h()I

    move-result v14

    .line 67
    invoke-virtual/range {p8 .. p8}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->i()I

    move-result v15

    mul-float v7, p1, p2

    mul-float v5, p1, p3

    mul-int/lit8 v6, v10, 0x3

    .line 73
    new-array v3, v6, [F

    mul-int/lit8 v1, v10, 0x2

    .line 76
    new-array v4, v1, [F

    int-to-float v0, v0

    div-float v16, v9, v0

    .line 81
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->c()F

    move-result v0

    float-to-double v1, v0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-eqz p7, :cond_0

    move-wide/from16 v17, v19

    :cond_0
    move-wide/from16 v21, v17

    move/from16 v9, p5

    move-wide/from16 v24, v21

    move-wide/from16 v21, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    add-float v26, p5, p6

    cmpg-float v27, v9, v26

    if-gez v27, :cond_a

    add-int/lit8 v0, v17, 0x12

    if-ge v0, v6, :cond_a

    move-wide/from16 p2, v1

    float-to-double v0, v9

    .line 92
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v27

    add-int/lit8 v0, v17, 0x24

    if-lt v0, v6, :cond_1

    goto :goto_1

    :cond_1
    add-float v26, v9, v16

    :goto_1
    const/high16 v23, 0x43b40000    # 360.0f

    rem-float v0, v26, v23

    float-to-double v0, v0

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v29

    if-eqz p7, :cond_3

    cmpl-double v0, v19, v21

    if-nez v0, :cond_2

    sub-float v0, v9, p5

    div-float v0, v0, p6

    float-to-double v0, v0

    .line 99
    invoke-direct {v8, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(D)D

    move-result-wide v24

    :cond_2
    add-float v0, v9, v16

    sub-float v0, v0, p5

    div-float v0, v0, p6

    float-to-double v0, v0

    .line 105
    invoke-direct {v8, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(D)D

    move-result-wide v0

    move-wide/from16 v21, v24

    move-wide/from16 v24, v0

    :cond_3
    add-int/lit8 v26, v17, 0x1

    float-to-double v1, v7

    .line 109
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v31

    move/from16 v33, v6

    move/from16 p8, v7

    mul-double v6, v1, v31

    double-to-float v0, v6

    aput v0, v3, v17

    add-int/lit8 v17, v26, 0x1

    float-to-double v6, v5

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v34, p2

    move-wide/from16 v36, v1

    move-wide v1, v6

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-wide/from16 v3, v34

    move/from16 v32, v5

    move-wide/from16 v40, v6

    move-wide/from16 v5, v21

    move/from16 v42, p8

    move/from16 v7, v31

    .line 110
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    move-object/from16 v7, v38

    aput v0, v7, v26

    add-int/lit8 v26, v17, 0x1

    .line 111
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v7, v17

    add-int/lit8 v17, v18, 0x1

    sub-float v0, v9, p5

    div-float v31, v0, p6

    move-object/from16 v5, v39

    .line 113
    aput v31, v5, v18

    add-int/lit8 v18, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v43, v5

    move-wide/from16 v5, v21

    move/from16 v39, v10

    move-object v10, v7

    move/from16 v7, v38

    .line 114
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    move-object/from16 v7, v43

    aput v0, v7, v17

    if-eqz v13, :cond_4

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move-object v8, v7

    move v7, v15

    .line 117
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    goto :goto_2

    :cond_4
    move-object v8, v7

    :goto_2
    add-int/lit8 v17, v26, 0x1

    .line 121
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v17, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v34

    move-wide/from16 v5, v24

    .line 122
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v10, v17

    add-int/lit8 v17, v26, 0x1

    .line 123
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v18, 0x1

    add-float v9, v9, v16

    sub-float v0, v9, p5

    div-float v38, v0, p6

    .line 125
    aput v38, v8, v18

    add-int/lit8 v18, v26, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 126
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v8, v26

    if-eqz v13, :cond_5

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move v7, v15

    .line 129
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    :cond_5
    add-int/lit8 v26, v17, 0x1

    .line 133
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v17

    add-int/lit8 v17, v26, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v34

    move-wide/from16 v5, v21

    .line 134
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v10, v26

    add-int/lit8 v26, v17, 0x1

    .line 135
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v17

    add-int/lit8 v17, v18, 0x1

    .line 137
    aput v31, v8, v18

    add-int/lit8 v18, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 138
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v8, v17

    if-eqz v13, :cond_6

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move v7, v15

    .line 141
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    :cond_6
    add-int/lit8 v17, v26, 0x1

    .line 145
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v17, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v34

    move-wide/from16 v5, v21

    .line 146
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v10, v17

    add-int/lit8 v17, v26, 0x1

    .line 147
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v18, 0x1

    .line 149
    aput v31, v8, v18

    add-int/lit8 v18, v26, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 150
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v8, v26

    if-eqz v13, :cond_7

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move v7, v15

    .line 153
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    :cond_7
    add-int/lit8 v26, v17, 0x1

    .line 157
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v17

    add-int/lit8 v17, v26, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v34

    move-wide/from16 v5, v24

    .line 158
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v10, v26

    add-int/lit8 v26, v17, 0x1

    .line 159
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v17

    add-int/lit8 v17, v18, 0x1

    .line 161
    aput v38, v8, v18

    add-int/lit8 v18, v17, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 162
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v8, v17

    if-eqz v13, :cond_8

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move v7, v15

    .line 165
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    :cond_8
    add-int/lit8 v17, v26, 0x1

    .line 169
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v17, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    move-wide/from16 v3, v34

    move-wide/from16 v5, v24

    .line 170
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v10, v17

    add-int/lit8 v17, v26, 0x1

    .line 171
    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v1, v36, v0

    double-to-float v0, v1

    aput v0, v10, v26

    add-int/lit8 v26, v18, 0x1

    .line 173
    aput v38, v8, v18

    add-int/lit8 v18, v26, 0x1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    .line 174
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a(DDDZ)F

    move-result v0

    aput v0, v8, v26

    if-eqz v13, :cond_9

    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v3, v11

    move v4, v12

    move/from16 v5, p7

    move v6, v14

    move v7, v15

    .line 177
    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a([FIZZZII)V

    :cond_9
    move-object v4, v8

    move-object v3, v10

    move/from16 v5, v32

    move/from16 v6, v33

    move-wide/from16 v1, v34

    move/from16 v10, v39

    move/from16 v7, v42

    move-object/from16 v8, p0

    goto/16 :goto_0

    :cond_a
    move-object v8, v4

    move/from16 v39, v10

    move-object v10, v3

    .line 181
    array-length v0, v10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 183
    :goto_3
    array-length v2, v10

    if-ge v1, v2, :cond_c

    .line 184
    rem-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const/4 v2, 0x0

    .line 185
    aput v2, v0, v1

    goto :goto_4

    .line 187
    :cond_b
    aget v2, v10, v1

    aput v2, v0, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    move-object/from16 v1, p0

    move-object v2, v8

    .line 191
    iget-object v3, v1, Lcom/oplus/camera/ui/menu/levelcontrol/f;->i:Ljava/util/ArrayList;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    array-length v3, v10

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 194
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 195
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    iget-object v5, v1, Lcom/oplus/camera/ui/menu/levelcontrol/f;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    array-length v3, v10

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 202
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 203
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 204
    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 205
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    iget-object v0, v1, Lcom/oplus/camera/ui/menu/levelcontrol/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 210
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 213
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 215
    iget-object v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/f;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 0

    .line 281
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->c(Landroid/content/Context;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method public c(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 301
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 302
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 303
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 304
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->x:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->d()[F

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 305
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 306
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->A:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->e()[F

    move-result-object v3

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 307
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 308
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->B:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->f()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 309
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 310
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->C:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->g()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 311
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 314
    iget v6, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->j:Ljava/util/ArrayList;

    .line 315
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 314
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 318
    iget v12, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->k:Ljava/util/ArrayList;

    .line 319
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 318
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 320
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 322
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 323
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 324
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    const v2, 0x84c0

    .line 326
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v3, p1

    .line 327
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 329
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 331
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 332
    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 333
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method

.method public d(II)V
    .locals 2

    .line 429
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 430
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 431
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 433
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/f;->c(II)V

    .line 435
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    return-void
.end method

.method public e(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 338
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 339
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->a:I

    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->b:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v2, 0xb71

    .line 340
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xb44

    .line 341
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0xbe2

    .line 342
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v2, 0x1

    const/16 v3, 0x302

    .line 343
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 344
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v3

    neg-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-static {v5, v3, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 346
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->w:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 347
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->x:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->d()[F

    move-result-object v5

    invoke-static {v3, v2, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 348
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->A:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->e()[F

    move-result-object v5

    invoke-static {v3, v2, v4, v5, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 349
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->B:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->f()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 350
    iget v3, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->C:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->g()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 353
    iget v6, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->j:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 353
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 357
    iget v12, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->k:Ljava/util/ArrayList;

    .line 358
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 357
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 360
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 361
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    .line 363
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v2, 0xde1

    move/from16 v3, p1

    .line 364
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 366
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 368
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->y:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 369
    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->z:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 371
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    return-void
.end method

.method public f(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 395
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    .line 396
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b()V

    .line 397
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/o;->i()F

    move-result v2

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2, v3}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 399
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->F:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 400
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->G:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->d()[F

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 401
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->J:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->e()[F

    move-result-object v3

    invoke-static {v2, v4, v5, v3, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 402
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->K:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->f()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 403
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->L:I

    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->g()Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    .line 406
    iget v6, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->H:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->j:Ljava/util/ArrayList;

    .line 407
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/nio/Buffer;

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0xc

    .line 406
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 410
    iget v12, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->I:I

    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->k:Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/nio/Buffer;

    const/4 v13, 0x2

    const/16 v14, 0x1406

    const/4 v15, 0x0

    const/16 v16, 0x8

    .line 410
    invoke-static/range {v12 .. v17}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 413
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->H:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 414
    iget v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->I:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v2, 0x84c0

    .line 416
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    move/from16 v3, p1

    .line 417
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 419
    iget-object v2, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 421
    iget v1, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->H:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 422
    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/f;->I:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 424
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->c()V

    return-void
.end method
