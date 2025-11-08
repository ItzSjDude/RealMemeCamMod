.class Lorg/andresoviedo/android_3d_model_engine/a/a;
.super Ljava/lang/Object;
.source "GLES20Renderer.java"

# interfaces
.implements Lorg/andresoviedo/android_3d_model_engine/a/b;


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:J

.field private g:D

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    .line 45
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lorg/andresoviedo/android_3d_model_engine/a/a;->a:[F

    .line 46
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->b:[F

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 57
    iput-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->f:J

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 58
    iput-wide v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->g:D

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->i:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->j:Landroid/util/SparseArray;

    .line 98
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compiling 3D Drawer... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLES20Renderer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v0, 0x8b31

    invoke-static {v0, p2}, Lorg/andresoviedo/a/a/d;->a(ILjava/lang/String;)I

    move-result p2

    .line 104
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v0, 0x8b30

    invoke-static {v0, p3}, Lorg/andresoviedo/a/a/d;->a(ILjava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-static {p2, p3, p4}, Lorg/andresoviedo/a/a/d;->a(II[Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    .line 109
    sget-object p2, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Compiled 3D Drawer ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") with id "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I
    .locals 8

    .line 223
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {v0, p0, p1}, Lorg/andresoviedo/a/a/c;->a(ILjava/lang/String;)I

    move-result p0

    const-string p1, "glGetAttribLocation"

    .line 224
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 226
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p1, p0}, Lorg/andresoviedo/a/a/c;->j(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 227
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 230
    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p0

    move v3, p3

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lorg/andresoviedo/a/a/c;->a(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer"

    .line 232
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/andresoviedo/android_3d_model_engine/a/a;
    .locals 2

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "u_MMatrix"

    .line 78
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a_Position"

    .line 79
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a_Normal"

    .line 80
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a_Color"

    .line 81
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "a_TexCoordinate"

    .line 82
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u_LightPos"

    .line 83
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_jointIndices"

    .line 84
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "in_weights"

    .line 85
    invoke-static {v0, p1, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "u_TextureCube"

    .line 86
    invoke-static {v0, p2, v1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/a/a;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/andresoviedo/android_3d_model_engine/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-object v1
.end method

.method private a(I)V
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 277
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, p1}, Lorg/andresoviedo/a/a/c;->h(I)V

    const-string p0, "glDisableVertexAttribArray"

    .line 278
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 8

    const-string v0, "glDrawArrays"

    const/4 v1, 0x0

    if-gtz p2, :cond_2

    .line 407
    iget-wide v2, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->g:D

    const-wide/16 v4, 0x0

    cmpl-double p2, v2, v4

    if-ltz p2, :cond_1

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    rem-long/2addr v2, v6

    long-to-float p2, v2

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr p2, v2

    float-to-double v2, p2

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v6

    .line 410
    iget-wide v6, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->g:D

    cmpl-double p2, v6, v4

    if-nez p2, :cond_0

    .line 411
    iput-wide v2, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->g:D

    .line 413
    :cond_0
    iget-wide v4, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->g:D

    sub-double/2addr v2, v4

    const-wide v4, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    int-to-double p2, p3

    mul-double/2addr v2, p2

    double-to-int p3, v2

    .line 415
    :cond_1
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, p1, v1, p3}, Lorg/andresoviedo/a/a/c;->a(III)V

    .line 416
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v1, p3, :cond_3

    .line 420
    sget-object p0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p0, p1, v1, p2}, Lorg/andresoviedo/a/a/c;->a(III)V

    .line 421
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    add-int/2addr v1, p2

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private a(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 520
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 521
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 522
    aget v2, v1, p0

    const/4 v2, 0x1

    .line 523
    aget v3, v1, v2

    const/4 v3, 0x2

    .line 524
    aget v4, v1, v3

    .line 525
    sget-object v4, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const-string v4, "glDrawArrays"

    if-ne p1, v3, :cond_0

    aget v5, v1, v3

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    move v5, p0

    .line 528
    :goto_1
    aget v7, v1, v3

    sub-int/2addr v7, v3

    if-ge v5, v7, :cond_1

    .line 530
    sget-object v7, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    aget v8, v1, v2

    add-int/2addr v8, v5

    invoke-virtual {v7, p1, v8, v6}, Lorg/andresoviedo/a/a/c;->a(III)V

    .line 531
    invoke-static {v4}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 534
    :cond_0
    sget-object v5, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {v5, p1, v2, v1}, Lorg/andresoviedo/a/a/c;->a(III)V

    .line 535
    invoke-static {v4}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/nio/Buffer;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/Buffer;",
            "I",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 504
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 505
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 506
    aget v3, v2, v0

    const/4 v4, 0x1

    .line 507
    aget v4, v2, v4

    const/4 v5, 0x2

    .line 508
    aget v2, v2, v5

    .line 509
    invoke-virtual {p1, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 510
    sget-object v4, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v4, v3, v2, p2, p1}, Lorg/andresoviedo/a/a/c;->a(IIILjava/nio/Buffer;)V

    const-string v2, "glDrawElements"

    .line 511
    invoke-static {v2}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 512
    iget-boolean v3, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Lorg/andresoviedo/android_3d_model_engine/b/a;)V
    .locals 0

    return-void
.end method

.method private a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V
    .locals 10

    .line 543
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    const-string v2, "a_Layer"

    invoke-virtual {v0, v1, v2}, Lorg/andresoviedo/a/a/c;->a(ILjava/lang/String;)I

    move-result v4

    const-string v0, "glGetAttribLocation"

    .line 544
    invoke-direct {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;)Z

    .line 547
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v0, v4}, Lorg/andresoviedo/a/a/c;->j(I)V

    const-string v0, "glEnableVertexAttribArray"

    .line 548
    invoke-direct {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;)Z

    .line 550
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->F()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 551
    sget-object v3, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->F()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x1

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/andresoviedo/a/a/c;->a(IIIZILjava/nio/Buffer;)V

    const-string p1, "glVertexAttribPointer"

    .line 552
    invoke-direct {p0, p1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Lorg/andresoviedo/android_3d_model_engine/b/g;II)V
    .locals 8

    .line 373
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->G()Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v2, -0x1

    :goto_0
    move-object v6, v0

    move v7, v2

    goto :goto_1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->G()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 378
    iget-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->D()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 380
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v2, 0x1405

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->E()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 383
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v2, 0x1403

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    .line 386
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->J()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 390
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 391
    invoke-direct {p0, p2, v0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(ILjava/util/List;)V

    goto :goto_2

    .line 393
    :cond_2
    invoke-direct {p0, v6, v7, v0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/nio/Buffer;ILjava/util/List;)V

    goto :goto_2

    .line 396
    :cond_3
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    invoke-direct {p0, p2, p3, p1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(III)V

    goto :goto_2

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 399
    invoke-direct/range {v2 .. v7}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;IILjava/nio/Buffer;I)V

    :goto_2
    return-void
.end method

.method private a(Lorg/andresoviedo/android_3d_model_engine/b/g;IILjava/nio/Buffer;I)V
    .locals 7

    const-string v0, "glDrawElements"

    const/4 v1, 0x0

    if-gtz p3, :cond_8

    .line 443
    iget-object p3, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    sget-object p4, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    const-string v2, "GLES20Renderer"

    if-eq p3, p4, :cond_0

    .line 444
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rendering elements... obj: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", total:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 444
    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object p3, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object p4

    iget-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    invoke-interface {p3, p4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move p3, v1

    .line 449
    :goto_0
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a

    .line 452
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/andresoviedo/android_3d_model_engine/b/e;

    .line 453
    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->a()Ljava/nio/IntBuffer;

    move-result-object v3

    .line 456
    iget-object v4, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    sget-object v5, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-interface {v5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Rendering element "

    if-eq v4, v5, :cond_1

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "....  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->b()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 464
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c()Z

    move-result v4

    if-nez v4, :cond_4

    .line 465
    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->b()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/andresoviedo/android_3d_model_engine/b/f;->c()[F

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->b()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/andresoviedo/android_3d_model_engine/b/f;->c()[F

    move-result-object v4

    goto :goto_1

    .line 466
    :cond_2
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->n()[F

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->n()[F

    move-result-object v4

    goto :goto_1

    :cond_3
    sget-object v4, Lorg/andresoviedo/android_3d_model_engine/a/a;->a:[F

    :goto_1
    const-string v5, "vColor"

    .line 465
    invoke-direct {p0, v4, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b([FLjava/lang/String;)V

    .line 468
    :cond_4
    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->b()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/andresoviedo/android_3d_model_engine/b/f;->b()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->f()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 469
    invoke-virtual {p4}, Lorg/andresoviedo/android_3d_model_engine/b/e;->b()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lorg/andresoviedo/android_3d_model_engine/b/f;->b()I

    move-result v4

    invoke-direct {p0, v4}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b(I)V

    .line 474
    :cond_5
    invoke-virtual {v3, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 475
    sget-object v4, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v5

    invoke-virtual {v4, p2, v5, p5, v3}, Lorg/andresoviedo/a/a/c;->a(IIILjava/nio/Buffer;)V

    .line 477
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 478
    iget-boolean v3, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    if-eqz v3, :cond_6

    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 479
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    .line 483
    :cond_6
    iget-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    sget-object v4, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-interface {v4, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " finished"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    sget-object v3, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    iget-object v4, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    invoke-interface {v3, p4, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_8
    move p1, v1

    .line 491
    :goto_2
    invoke-virtual {p4}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge p1, v2, :cond_9

    .line 492
    invoke-virtual {p4, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 493
    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    invoke-virtual {v2, p2, p3, p5, p4}, Lorg/andresoviedo/a/a/c;->a(IIILjava/nio/Buffer;)V

    .line 494
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    add-int/2addr p1, p3

    goto :goto_2

    .line 496
    :cond_9
    iget-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    if-eqz p1, :cond_a

    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 497
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->h:Z

    :cond_a
    return-void
.end method

.method private a([FLjava/lang/String;)V
    .locals 2

    .line 251
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {v0, p0, p2}, Lorg/andresoviedo/a/a/c;->b(ILjava/lang/String;)I

    move-result p0

    const-string p2, "glGetUniformLocation"

    .line 252
    invoke-static {p2}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 254
    sget-object p2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, p1, v1}, Lorg/andresoviedo/a/a/c;->a(II[FI)V

    const-string p0, "glUniform3fv"

    .line 255
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private a()Z
    .locals 1

    .line 283
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "u_MMatrix"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    .line 556
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 3

    .line 307
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    const-string v1, "u_Texture"

    invoke-virtual {v0, p0, v1}, Lorg/andresoviedo/a/a/c;->b(ILjava/lang/String;)I

    move-result p0

    const-string v0, "glGetUniformLocation"

    .line 308
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 311
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v1, 0x84c0

    invoke-virtual {v0, v1}, Lorg/andresoviedo/a/a/c;->a(I)V

    const-string v0, "glActiveTexture"

    .line 312
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 315
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v1, 0xde1

    invoke-virtual {v0, v1, p1}, Lorg/andresoviedo/a/a/c;->b(II)V

    const-string p1, "glBindTexture"

    .line 316
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 318
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v0, 0x2601

    const/16 v2, 0x2801

    invoke-virtual {p1, v1, v2, v0}, Lorg/andresoviedo/a/a/c;->b(III)V

    .line 319
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v2, 0x2800

    invoke-virtual {p1, v1, v2, v0}, Lorg/andresoviedo/a/a/c;->b(III)V

    .line 320
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v0, 0x812f

    const/16 v2, 0x2802

    invoke-virtual {p1, v1, v2, v0}, Lorg/andresoviedo/a/a/c;->b(III)V

    .line 321
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/16 v2, 0x2803

    invoke-virtual {p1, v1, v2, v0}, Lorg/andresoviedo/a/a/c;->b(III)V

    .line 324
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/andresoviedo/a/a/c;->d(II)V

    const-string p0, "glUniform1i"

    .line 325
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private b([FLjava/lang/String;)V
    .locals 2

    .line 259
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {v0, p0, p2}, Lorg/andresoviedo/a/a/c;->b(ILjava/lang/String;)I

    move-result p0

    const-string p2, "glGetUniformLocation"

    .line 260
    invoke-static {p2}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 262
    sget-object p2, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v0, p1, v1}, Lorg/andresoviedo/a/a/c;->b(II[FI)V

    const-string p0, "glUniform4fv"

    .line 263
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private b()Z
    .locals 1

    .line 287
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "u_TextureCube"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private c(I)V
    .locals 2

    .line 331
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    const-string v1, "u_TextureCube"

    invoke-virtual {v0, p0, v1}, Lorg/andresoviedo/a/a/c;->b(ILjava/lang/String;)I

    move-result p0

    const-string v0, "glGetUniformLocation"

    .line 332
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 335
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v1, 0x84c0

    invoke-virtual {v0, v1}, Lorg/andresoviedo/a/a/c;->a(I)V

    const-string v0, "glActiveTexture"

    .line 336
    invoke-static {v0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 339
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const v1, 0x8513

    invoke-virtual {v0, v1, p1}, Lorg/andresoviedo/a/a/c;->b(II)V

    const-string p1, "glBindTexture"

    .line 340
    invoke-static {p1}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 343
    sget-object p1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lorg/andresoviedo/a/a/c;->d(II)V

    const-string p0, "glUniform1i"

    .line 344
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private c([FLjava/lang/String;)V
    .locals 7

    .line 267
    sget-object v0, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {v0, p0, p2}, Lorg/andresoviedo/a/a/c;->b(ILjava/lang/String;)I

    move-result v2

    const-string p0, "glGetUniformLocation"

    .line 268
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    .line 271
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lorg/andresoviedo/a/a/c;->a(IIZ[FI)V

    const-string p0, "glUniformMatrix4fv"

    .line 272
    invoke-static {p0}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private c()Z
    .locals 1

    .line 291
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "a_Color"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 1

    .line 295
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "a_Normal"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private e()Z
    .locals 1

    .line 299
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "u_LightPos"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private f()Z
    .locals 1

    .line 303
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "a_TexCoordinate"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private g()Z
    .locals 2

    .line 349
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v1, "in_jointIndices"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    const-string v0, "in_weights"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FIII[F[F[F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object/from16 v3, p7

    .line 129
    iget-object v4, v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    sget-object v5, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_0

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rendering with shader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "vert... obj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GLES20Renderer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v4, Lorg/andresoviedo/android_3d_model_engine/a/a;->k:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    sget-object v4, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iget v5, v0, Lorg/andresoviedo/android_3d_model_engine/a/a;->e:I

    invoke-virtual {v4, v5}, Lorg/andresoviedo/a/a/c;->o(I)V

    const-string v4, "glUseProgram"

    .line 136
    invoke-static {v4}, Lorg/andresoviedo/a/a/d;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->C()[F

    move-result-object v9

    .line 142
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->C()[F

    move-result-object v4

    const-string v5, "u_MMatrix"

    invoke-direct {v0, v4, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c([FLjava/lang/String;)V

    :cond_2
    const-string v4, "u_VMatrix"

    move-object/from16 v7, p3

    .line 145
    invoke-direct {v0, v7, v4}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c([FLjava/lang/String;)V

    const-string v4, "u_PMatrix"

    move-object/from16 v12, p2

    .line 146
    invoke-direct {v0, v12, v4}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c([FLjava/lang/String;)V

    const/16 v4, 0x10

    .line 149
    new-array v15, v4, [F

    .line 150
    new-array v14, v4, [F

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v14

    .line 151
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v4, 0x0

    move-object v10, v15

    move-object v5, v15

    move v15, v4

    .line 152
    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const-string v4, "u_MVPMatrix"

    .line 153
    invoke-direct {v0, v5, v4}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c([FLjava/lang/String;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->G()Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x3

    const-string v6, "a_Position"

    invoke-direct {v0, v6, v4, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v4

    .line 163
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->d()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->H()Ljava/nio/FloatBuffer;

    move-result-object v6

    const-string v8, "a_Normal"

    invoke-direct {v0, v8, v6, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v6

    goto :goto_0

    :cond_3
    move v6, v7

    .line 169
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 170
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->K()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v9, 0x4

    const-string v10, "a_Color"

    invoke-direct {v0, v10, v8, v9}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v8

    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->n()[F

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->n()[F

    move-result-object v8

    goto :goto_1

    :cond_5
    sget-object v8, Lorg/andresoviedo/android_3d_model_engine/a/a;->a:[F

    :goto_1
    const-string v9, "vColor"

    invoke-direct {v0, v8, v9}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b([FLjava/lang/String;)V

    move v8, v7

    .line 175
    :goto_2
    iget-boolean v9, v1, Lorg/andresoviedo/android_3d_model_engine/b/g;->a:Z

    if-eqz v9, :cond_6

    .line 176
    invoke-direct/range {p0 .. p1}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V

    :cond_6
    if-eqz p8, :cond_7

    move-object/from16 v9, p8

    goto :goto_3

    .line 180
    :cond_7
    sget-object v9, Lorg/andresoviedo/android_3d_model_engine/a/a;->b:[F

    :goto_3
    const-string v10, "vColorMask"

    invoke-direct {v0, v9, v10}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b([FLjava/lang/String;)V

    if-eq v2, v7, :cond_8

    .line 184
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->f()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 185
    invoke-direct {v0, v2}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b(I)V

    .line 186
    invoke-virtual/range {p1 .. p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->I()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v10, 0x2

    const-string v11, "a_TexCoordinate"

    invoke-direct {v0, v11, v9, v10}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v9

    goto :goto_4

    :cond_8
    move v9, v7

    :goto_4
    if-eq v2, v7, :cond_9

    .line 190
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->b()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 191
    invoke-direct {v0, v2}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c(I)V

    :cond_9
    if-eqz v3, :cond_a

    .line 195
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->e()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "u_LightPos"

    .line 196
    invoke-direct {v0, v3, v2}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a([FLjava/lang/String;)V

    const-string v2, "u_cameraPos"

    move-object/from16 v3, p9

    .line 197
    invoke-direct {v0, v3, v2}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a([FLjava/lang/String;)V

    .line 203
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/a/a;->g()Z

    move-result v2

    if-eqz v2, :cond_b

    instance-of v2, v1, Lorg/andresoviedo/android_3d_model_engine/b/a;

    if-eqz v2, :cond_b

    .line 204
    move-object v2, v1

    check-cast v2, Lorg/andresoviedo/android_3d_model_engine/b/a;

    invoke-virtual {v2}, Lorg/andresoviedo/android_3d_model_engine/b/a;->c()Ljava/nio/FloatBuffer;

    move-result-object v3

    const-string v7, "in_weights"

    invoke-direct {v0, v7, v3, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v7

    .line 205
    invoke-virtual {v2}, Lorg/andresoviedo/android_3d_model_engine/b/a;->b()Ljava/nio/FloatBuffer;

    move-result-object v3

    const-string v10, "in_jointIndices"

    invoke-direct {v0, v10, v3, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Ljava/lang/String;Ljava/nio/FloatBuffer;I)I

    move-result v3

    .line 206
    invoke-virtual {v2}, Lorg/andresoviedo/android_3d_model_engine/b/a;->a()[F

    move-result-object v5

    const-string v10, "u_BindShapeMatrix"

    invoke-direct {v0, v5, v10}, Lorg/andresoviedo/android_3d_model_engine/a/a;->c([FLjava/lang/String;)V

    .line 207
    invoke-direct {v0, v2}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/a;)V

    move/from16 v2, p4

    move v5, v3

    move/from16 v3, p5

    goto :goto_5

    :cond_b
    move/from16 v2, p4

    move/from16 v3, p5

    move v5, v7

    .line 211
    :goto_5
    invoke-direct {v0, v1, v2, v3}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;II)V

    .line 214
    invoke-direct {v0, v4}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    .line 215
    invoke-direct {v0, v8}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    .line 216
    invoke-direct {v0, v6}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    .line 217
    invoke-direct {v0, v9}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    .line 218
    invoke-direct {v0, v7}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    .line 219
    invoke-direct {v0, v5}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(I)V

    return-void
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FI[F[F)V
    .locals 10

    .line 115
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v4

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->p()I

    move-result v5

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FIII[F[F[F)V

    return-void
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FI[F[F[F)V
    .locals 10

    .line 121
    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v4

    invoke-virtual {p1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->p()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/andresoviedo/android_3d_model_engine/a/a;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;[F[FIII[F[F[F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLES20Renderer{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", features="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/a/a;->d:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
