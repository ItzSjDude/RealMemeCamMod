.class public Lorg/andresoviedo/android_3d_model_engine/b/g;
.super Ljava/lang/Object;
.source "Object3DData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andresoviedo/android_3d_model_engine/b/g$a;
    }
.end annotation


# instance fields
.field private final A:[F

.field private B:[F

.field private final C:[F

.field private D:Z

.field private E:Lorg/andresoviedo/android_3d_model_engine/b/d;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/b/a/o;

.field public a:Z

.field protected b:Ljava/nio/FloatBuffer;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/e;",
            ">;"
        }
    .end annotation
.end field

.field protected d:[F

.field protected e:[F

.field protected f:[F

.field protected g:Lorg/andresoviedo/android_3d_model_engine/b/d;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Ljava/nio/FloatBuffer;

.field private o:Ljava/nio/FloatBuffer;

.field private p:Ljava/nio/FloatBuffer;

.field private q:Ljava/nio/FloatBuffer;

.field private r:Ljava/nio/FloatBuffer;

.field private s:[B

.field private t:Lorg/andresoviedo/android_3d_model_engine/b/f;

.field private u:Ljava/nio/IntBuffer;

.field private v:Ljava/nio/ShortBuffer;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->j:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->k:Z

    .line 63
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->a:Z

    .line 65
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->l:Z

    .line 70
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->m:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    .line 77
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->n:Ljava/nio/FloatBuffer;

    .line 78
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->o:Ljava/nio/FloatBuffer;

    .line 79
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->p:Ljava/nio/FloatBuffer;

    .line 80
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->q:Ljava/nio/FloatBuffer;

    .line 81
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->r:Ljava/nio/FloatBuffer;

    .line 82
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    .line 83
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->s:[B

    .line 90
    new-instance v2, Lorg/andresoviedo/android_3d_model_engine/b/f;

    const-string v3, "default"

    invoke-direct {v2, v3}, Lorg/andresoviedo/android_3d_model_engine/b/f;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->t:Lorg/andresoviedo/android_3d_model_engine/b/f;

    .line 91
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    .line 92
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    .line 95
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->w:Ljava/util/List;

    const/4 v2, 0x3

    .line 101
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->d:[F

    .line 102
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->e:[F

    .line 103
    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    .line 106
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->x:[F

    .line 107
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->y:[F

    .line 108
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->z:[F

    const/16 v2, 0x10

    .line 113
    new-array v3, v2, [F

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    .line 121
    new-array v2, v2, [F

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    .line 125
    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 126
    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 134
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->E:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 135
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->F:Ljava/util/List;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/IntBuffer;)V
    .locals 4

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->j:Z

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->k:Z

    .line 63
    iput-boolean v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->a:Z

    .line 65
    iput-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->l:Z

    .line 70
    sget-object v1, Lorg/andresoviedo/a/a/c;->a:Lorg/andresoviedo/a/a/c;

    iput v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->m:I

    const/4 v1, 0x0

    .line 76
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    .line 77
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->n:Ljava/nio/FloatBuffer;

    .line 78
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->o:Ljava/nio/FloatBuffer;

    .line 79
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->p:Ljava/nio/FloatBuffer;

    .line 80
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->q:Ljava/nio/FloatBuffer;

    .line 81
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->r:Ljava/nio/FloatBuffer;

    .line 82
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    .line 83
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->s:[B

    .line 90
    new-instance v2, Lorg/andresoviedo/android_3d_model_engine/b/f;

    const-string v3, "default"

    invoke-direct {v2, v3}, Lorg/andresoviedo/android_3d_model_engine/b/f;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->t:Lorg/andresoviedo/android_3d_model_engine/b/f;

    .line 91
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    .line 92
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    .line 95
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->w:Ljava/util/List;

    const/4 v2, 0x3

    .line 101
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->d:[F

    .line 102
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->e:[F

    .line 103
    new-array v2, v2, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    .line 106
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->x:[F

    .line 107
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->y:[F

    .line 108
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->z:[F

    const/16 v2, 0x10

    .line 113
    new-array v3, v2, [F

    iput-object v3, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    .line 121
    new-array v2, v2, [F

    iput-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    .line 125
    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 126
    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    invoke-static {v2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 134
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->E:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 135
    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->F:Ljava/util/List;

    .line 163
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    .line 164
    iput-object p2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    .line 165
    invoke-virtual {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Z)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 166
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->L()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a()V
    .locals 20

    move-object/from16 v0, p0

    .line 576
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 578
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->x:[F

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 580
    iget-object v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v5, 0x0

    aget v6, v1, v3

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 584
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->r()[F

    move-result-object v1

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->s()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->t()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->u()F

    move-result v6

    invoke-static {v1, v2, v4, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 588
    :cond_1
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->y:[F

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->z:[F

    if-eqz v1, :cond_2

    .line 589
    iget-object v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    aget v5, v1, v2

    aget v6, v1, v3

    const/4 v7, 0x2

    aget v1, v1, v7

    invoke-static {v4, v2, v5, v6, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 590
    iget-object v8, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->B()[F

    move-result-object v1

    aget v10, v1, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 591
    iget-object v14, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->B()[F

    move-result-object v1

    aget v16, v1, v3

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 592
    iget-object v8, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->B()[F

    move-result-object v1

    aget v10, v1, v7

    const/4 v11, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v13}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 593
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    iget-object v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->z:[F

    aget v5, v4, v2

    neg-float v5, v5

    aget v6, v4, v3

    neg-float v6, v6

    aget v4, v4, v7

    neg-float v4, v4

    invoke-static {v1, v2, v5, v6, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 595
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->v()[F

    move-result-object v1

    if-eqz v1, :cond_3

    .line 596
    iget-object v4, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->v()[F

    move-result-object v1

    aget v6, v1, v2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 597
    iget-object v10, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->v()[F

    move-result-object v1

    aget v12, v1, v3

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 598
    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->w()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 601
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->x()[F

    move-result-object v1

    if-eqz v1, :cond_4

    .line 602
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->y()F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->z()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->A()F

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 605
    :cond_4
    iget-object v10, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->B:[F

    if-nez v10, :cond_5

    .line 607
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    const/16 v4, 0x10

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 609
    :cond_5
    iget-object v6, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    const/4 v7, 0x0

    iget-object v8, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->A:[F

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 612
    :goto_0
    new-instance v1, Lorg/andresoviedo/android_3d_model_engine/b/g$a;

    invoke-direct {v1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Ljava/util/EventObject;)V

    return-void
.end method


# virtual methods
.method public A()F
    .locals 1

    .line 516
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->x()[F

    move-result-object p0

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public B()[F
    .locals 0

    .line 539
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->y:[F

    return-object p0
.end method

.method public C()[F
    .locals 0

    .line 616
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->C:[F

    return-object p0
.end method

.method public D()Ljava/nio/IntBuffer;
    .locals 0

    .line 624
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    return-object p0
.end method

.method public E()Ljava/nio/ShortBuffer;
    .locals 3

    .line 633
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Lorg/andresoviedo/a/b/a;->b(I)Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    const/4 v0, 0x0

    .line 635
    :goto_0
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 636
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    iget-object v2, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->u:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 639
    :cond_0
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->v:Ljava/nio/ShortBuffer;

    return-object p0
.end method

.method public F()Ljava/nio/FloatBuffer;
    .locals 0

    .line 651
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->q:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public G()Ljava/nio/FloatBuffer;
    .locals 0

    .line 655
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public H()Ljava/nio/FloatBuffer;
    .locals 0

    .line 684
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->n:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public I()Ljava/nio/FloatBuffer;
    .locals 0

    .line 693
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->p:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public J()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 702
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->w:Ljava/util/List;

    return-object p0
.end method

.method public K()Ljava/nio/FloatBuffer;
    .locals 0

    .line 711
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->r:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method protected L()V
    .locals 0

    return-void
.end method

.method public M()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 777
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->F:Ljava/util/List;

    return-object p0
.end method

.method public N()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/e;",
            ">;"
        }
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->D()Ljava/nio/IntBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 791
    new-instance v0, Lorg/andresoviedo/android_3d_model_engine/b/e;

    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->D()Ljava/nio/IntBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/andresoviedo/android_3d_model_engine/b/e;-><init>(Ljava/lang/String;Ljava/nio/IntBuffer;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->j()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andresoviedo/android_3d_model_engine/b/e;->a(Lorg/andresoviedo/android_3d_model_engine/b/f;)V

    .line 793
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    .line 795
    :cond_0
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    return-object p0
.end method

.method public a(I)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 420
    iput p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->m:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/andresoviedo/android_3d_model_engine/b/e;",
            ">;)",
            "Lorg/andresoviedo/android_3d_model_engine/b/g;"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    .line 782
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->L()V

    return-object p0
.end method

.method public a(Z)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 235
    iput-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->j:Z

    return-object p0
.end method

.method public a([F)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    .line 452
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a()V

    .line 453
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->L()V

    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->D:Z

    return-object p0
.end method

.method public a(Lcom/b/a/o$b;)V
    .locals 8

    .line 289
    new-instance v7, Lorg/andresoviedo/android_3d_model_engine/b/d;

    iget v1, p1, Lcom/b/a/o$b;->a:F

    iget v2, p1, Lcom/b/a/o$b;->b:F

    iget v3, p1, Lcom/b/a/o$b;->c:F

    iget v4, p1, Lcom/b/a/o$b;->d:F

    iget v5, p1, Lcom/b/a/o$b;->f:F

    iget v6, p1, Lcom/b/a/o$b;->e:F

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/andresoviedo/android_3d_model_engine/b/d;-><init>(FFFFFF)V

    iput-object v7, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->E:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New fixed dimensions for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->E:Lorg/andresoviedo/android_3d_model_engine/b/d;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Object3DData"

    invoke-static {p1, p0}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/b/a/o;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->G:Lcom/b/a/o;

    return-void
.end method

.method protected a(Ljava/util/EventObject;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/a/c;[F[F)V
    .locals 0

    return-void
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/d;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    return-void
.end method

.method public a(Lorg/andresoviedo/android_3d_model_engine/b/f;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->t:Lorg/andresoviedo/android_3d_model_engine/b/f;

    return-void
.end method

.method a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V
    .locals 1

    .line 810
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Ljava/lang/String;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 811
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->r()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a([F)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 812
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->x()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->b([F)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 813
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->v()[F

    move-result-object v0

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->c([F)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 814
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->d()Lorg/andresoviedo/android_3d_model_engine/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/b/d;)V

    .line 815
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->G()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->c(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 816
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->H()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->f(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 817
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->K()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->h(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 818
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->I()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 819
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->j()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/b/f;)V

    .line 820
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Ljava/util/List;)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 821
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(I)Lorg/andresoviedo/android_3d_model_engine/b/g;

    .line 822
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->i()Z

    move-result p0

    invoke-virtual {p1, p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Z)Lorg/andresoviedo/android_3d_model_engine/b/g;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 435
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->s:[B

    return-void
.end method

.method public b([F)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->d:[F

    .line 493
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a()V

    .line 494
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->L()V

    const/4 p1, 0x1

    .line 495
    iput-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->D:Z

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    .line 391
    iput-boolean p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->D:Z

    return-void
.end method

.method public c(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 659
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    .line 660
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->L()V

    return-object p0
.end method

.method public c([F)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 520
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->e:[F

    .line 521
    invoke-direct {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a()V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->f()Lorg/andresoviedo/android_3d_model_engine/b/g;

    move-result-object p0

    return-object p0
.end method

.method public d()Lorg/andresoviedo/android_3d_model_engine/b/d;
    .locals 20

    move-object/from16 v0, p0

    .line 320
    iget-object v1, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 321
    new-array v8, v1, [F

    .line 322
    new-array v1, v1, [F

    .line 324
    new-instance v9, Lorg/andresoviedo/android_3d_model_engine/b/d;

    invoke-direct {v9}, Lorg/andresoviedo/android_3d_model_engine/b/d;-><init>()V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", elements:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "Object3DData"

    invoke-static {v10, v2}, Lcom/b/a/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->c:Ljava/util/List;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 337
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andresoviedo/android_3d_model_engine/b/e;

    .line 338
    invoke-virtual {v2}, Lorg/andresoviedo/android_3d_model_engine/b/e;->a()Ljava/nio/IntBuffer;

    move-result-object v7

    move v6, v14

    .line 339
    :goto_0
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->capacity()I

    move-result v2

    if-ge v6, v2, :cond_1

    .line 340
    invoke-virtual {v7, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    .line 341
    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    mul-int/2addr v2, v12

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v8, v14

    .line 342
    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    aput v3, v8, v15

    .line 343
    iget-object v3, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    add-int/2addr v2, v13

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, v8, v13

    aput v11, v8, v12

    const/4 v3, 0x0

    .line 345
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->C()[F

    move-result-object v4

    const/4 v5, 0x0

    const/16 v17, 0x0

    move-object v2, v1

    move/from16 v18, v6

    move-object v6, v8

    move-object/from16 v19, v7

    move/from16 v7, v17

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 346
    aget v2, v1, v14

    aget v3, v1, v15

    aget v4, v1, v13

    invoke-virtual {v9, v2, v3, v4}, Lorg/andresoviedo/android_3d_model_engine/b/d;->a(FFF)V

    add-int/lit8 v6, v18, 0x1

    move-object/from16 v7, v19

    goto :goto_0

    :cond_2
    :goto_1
    move v7, v14

    .line 328
    :goto_2
    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    if-ge v7, v2, :cond_3

    .line 329
    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, v8, v14

    .line 330
    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, v8, v15

    .line 331
    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v7, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v2

    aput v2, v8, v13

    aput v11, v8, v12

    const/4 v3, 0x0

    .line 333
    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->C()[F

    move-result-object v4

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v2, v1

    move-object v6, v8

    move/from16 v17, v7

    move/from16 v7, v16

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 334
    aget v2, v1, v14

    aget v3, v1, v15

    aget v4, v1, v13

    invoke-virtual {v9, v2, v3, v4}, Lorg/andresoviedo/android_3d_model_engine/b/d;->a(FFF)V

    add-int/lit8 v7, v17, 0x3

    goto :goto_2

    .line 350
    :cond_3
    iput-object v9, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated current dimensions for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/b/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_4
    iget-object v0, v0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    return-object v0
.end method

.method public d(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 665
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->r:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public e(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 670
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->q:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public f()Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 1

    .line 804
    new-instance v0, Lorg/andresoviedo/android_3d_model_engine/b/g;

    invoke-direct {v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;-><init>()V

    .line 805
    invoke-virtual {p0, v0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->a(Lorg/andresoviedo/android_3d_model_engine/b/g;)V

    return-object v0
.end method

.method public f(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 688
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->n:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 0

    .line 697
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->p:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->i:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/nio/FloatBuffer;)Lorg/andresoviedo/android_3d_model_engine/b/g;
    .locals 1

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Color buffer not multiple of 4 floats"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 717
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->o:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public i()Z
    .locals 0

    .line 231
    iget-boolean p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->j:Z

    return p0
.end method

.method public j()Lorg/andresoviedo/android_3d_model_engine/b/f;
    .locals 0

    .line 240
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->t:Lorg/andresoviedo/android_3d_model_engine/b/f;

    return-object p0
.end method

.method public k()Lcom/b/a/o;
    .locals 0

    .line 285
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->G:Lcom/b/a/o;

    return-object p0
.end method

.method public l()Z
    .locals 0

    .line 365
    iget-boolean p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->k:Z

    return p0
.end method

.method public m()Z
    .locals 0

    .line 387
    iget-boolean p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->D:Z

    return p0
.end method

.method public n()[F
    .locals 0

    .line 395
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->j()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object p0

    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/f;->c()[F

    move-result-object p0

    return-object p0
.end method

.method public o()I
    .locals 0

    .line 416
    iget p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->m:I

    return p0
.end method

.method public p()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q()[B
    .locals 0

    .line 431
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->s:[B

    return-object p0
.end method

.method public r()[F
    .locals 0

    .line 468
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    return-object p0
.end method

.method public s()F
    .locals 1

    .line 472
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t()F
    .locals 1

    .line 476
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Object3DData{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->j()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andresoviedo/android_3d_model_engine/b/f;->c()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    .line 832
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->d:[F

    .line 833
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", indexed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->i()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", vertices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->b:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", normals: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->n:Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    div-int/lit8 v2, v1, 0x3

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dimensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->E:Lorg/andresoviedo/android_3d_model_engine/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", current dimensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->g:Lorg/andresoviedo/android_3d_model_engine/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", material="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->j()Lorg/andresoviedo/android_3d_model_engine/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->N()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()F
    .locals 1

    .line 480
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->f:[F

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v()[F
    .locals 0

    .line 484
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->e:[F

    return-object p0
.end method

.method public w()F
    .locals 1

    .line 488
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->e:[F

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public x()[F
    .locals 0

    .line 504
    iget-object p0, p0, Lorg/andresoviedo/android_3d_model_engine/b/g;->d:[F

    return-object p0
.end method

.method public y()F
    .locals 1

    .line 508
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->x()[F

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public z()F
    .locals 1

    .line 512
    invoke-virtual {p0}, Lorg/andresoviedo/android_3d_model_engine/b/g;->x()[F

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method
