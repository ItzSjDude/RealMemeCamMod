.class public La/a/b/b/bo;
.super La/a/b/b/a/b;

# interfaces
.implements La/a/b/b/ar$a;
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static q:Ljava/lang/String;

.field public static r:F

.field public static s:F

.field public static t:F

.field public static u:F

.field public static v:F

.field public static w:F

.field public static x:[B

.field public static y:[B


# instance fields
.field public A:F

.field public B:Z

.field public C:Landroid/graphics/Bitmap;

.field public D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "La/a/b/c/d;",
            ">;"
        }
    .end annotation
.end field

.field public E:Ljava/lang/String;

.field public F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public G:F

.field public H:[F

.field public I:[F

.field public J:Ljava/util/Random;

.field public K:I

.field public L:La/a/b/b/bm;

.field public M:La/a/b/b/bz;

.field public N:La/a/b/b/ao;

.field public O:La/a/b/b/ag;

.field public P:La/a/b/b/ar;

.field public Q:La/a/b/f/i;

.field public R:La/a/b/b/bc;

.field public S:La/a/b/b/ax;

.field public T:La/a/b/b/bu;

.field public U:La/a/b/b/ai;

.field public V:La/a/b/b/r;

.field public W:Lco/polarr/renderer/Orientation;

.field public X:I

.field public Y:I

.field public final Z:[La/a/b/c/d;

.field public aa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/a/b/f/aa;",
            ">;"
        }
    .end annotation
.end field

.field public ab:Z

.field public ac:Z

.field public ad:Z

.field public ae:F

.field public af:F

.field public ag:F

.field public ah:F

.field public ai:Z

.field public aj:F

.field public ak:F

.field public al:F

.field public z:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V
    .locals 3

    const-string v0, "lookup_table"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/b/b/bo;->ac:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, La/a/b/b/bo;->ad:Z

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, La/a/b/b/bo;->ae:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, La/a/b/b/bo;->af:F

    const v1, 0x3f6147ae    # 0.88f

    iput v1, p0, La/a/b/b/bo;->ag:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, La/a/b/b/bo;->ah:F

    iput-boolean v0, p0, La/a/b/b/bo;->ai:Z

    const/4 v1, 0x0

    iput v1, p0, La/a/b/b/bo;->aj:F

    iput v1, p0, La/a/b/b/bo;->ak:F

    iput v1, p0, La/a/b/b/bo;->al:F

    iput v1, p0, La/a/b/b/bo;->z:F

    iput v1, p0, La/a/b/b/bo;->A:F

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, La/a/b/b/bo;->F:Ljava/util/Map;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, La/a/b/b/bo;->G:F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, La/a/b/b/bo;->H:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, La/a/b/b/bo;->I:[F

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, La/a/b/b/bo;->J:Ljava/util/Random;

    iput v0, p0, La/a/b/b/bo;->K:I

    sget-object v1, Lco/polarr/renderer/Orientation;->CCW_0:Lco/polarr/renderer/Orientation;

    iput-object v1, p0, La/a/b/b/bo;->W:Lco/polarr/renderer/Orientation;

    iput v0, p0, La/a/b/b/bo;->X:I

    iput v0, p0, La/a/b/b/bo;->Y:I

    const/4 v1, 0x2

    new-array v1, v1, [La/a/b/c/d;

    iput-object v1, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    iput-boolean v0, p0, La/a/b/b/bo;->ab:Z

    new-instance v0, La/a/b/b/bz;

    invoke-direct {v0, p1, p2}, La/a/b/b/bz;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->M:La/a/b/b/bz;

    iget-object v0, p0, La/a/b/b/bo;->M:La/a/b/b/bz;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/bm;

    invoke-direct {v0, p1, p2}, La/a/b/b/bm;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    iget-object v0, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    invoke-static {p1, p2}, La/a/b/b/ao;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/ao;

    move-result-object v0

    iput-object v0, p0, La/a/b/b/bo;->N:La/a/b/b/ao;

    new-instance v0, La/a/b/b/ag;

    invoke-direct {v0, p1, p2}, La/a/b/b/ag;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->O:La/a/b/b/ag;

    iget-object v0, p0, La/a/b/b/bo;->O:La/a/b/b/ag;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/ar;

    invoke-direct {v0, p1, p2, p0}, La/a/b/b/ar;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;La/a/b/b/ar$a;)V

    iput-object v0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    iget-object v0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/r;

    invoke-direct {v0, p1, p2}, La/a/b/b/r;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->V:La/a/b/b/r;

    iget-object v0, p0, La/a/b/b/bo;->V:La/a/b/b/r;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/bu;

    invoke-direct {v0, p1, p2}, La/a/b/b/bu;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->T:La/a/b/b/bu;

    iget-object v0, p0, La/a/b/b/bo;->T:La/a/b/b/bu;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/bc;

    invoke-direct {v0, p1, p2}, La/a/b/b/bc;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->R:La/a/b/b/bc;

    iget-object v0, p0, La/a/b/b/bo;->R:La/a/b/b/bc;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/ax;

    invoke-direct {v0, p1, p2}, La/a/b/b/ax;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->S:La/a/b/b/ax;

    iget-object v0, p0, La/a/b/b/bo;->S:La/a/b/b/ax;

    invoke-virtual {v0}, La/a/b/b/a/a;->a()V

    new-instance v0, La/a/b/b/ai;

    invoke-direct {v0, p1, p2}, La/a/b/b/ai;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v0, p0, La/a/b/b/bo;->U:La/a/b/b/ai;

    iget-object p0, p0, La/a/b/b/bo;->U:La/a/b/b/ai;

    invoke-virtual {p0}, La/a/b/b/a/a;->a()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(La/a/b/b/bo;)Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    sput-object p0, La/a/b/b/bo;->q:Ljava/lang/String;

    return-void
.end method

.method public static synthetic m()Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/b/b/bo;->q:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object p0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v0, "COMBAIN_FILTER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public B()Z
    .locals 0

    iget p0, p0, La/a/b/b/bo;->K:I

    and-int/lit16 p0, p0, 0xe0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    return-void
.end method

.method public final a(I[BII)La/a/b/c/d;
    .locals 11

    const/16 p0, 0xde1

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v1, 0x461c0c00    # 9987.0f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const v0, 0x46240400    # 10497.0f

    const/16 v1, 0x2802

    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v5, p3

    move v6, p4

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x1908

    invoke-static {p1, p0, p3, p4}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, La/a/b/b/bo;->G:F

    return-void
.end method

.method public a(La/a/b/f/aa;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, La/a/b/b/bo;->aa:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Apply Bloom"

    invoke-static {v1, v0}, La/a/b/f/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, La/a/b/f/o;

    invoke-direct {v0}, La/a/b/f/o;-><init>()V

    iget v1, p2, La/a/b/c/d;->b:I

    int-to-float v1, v1

    const v2, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v3, p2, La/a/b/c/d;->c:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    invoke-virtual {v3, v1, v2}, La/a/b/b/bm;->d(II)La/a/b/c/d;

    move-result-object v3

    iget-object v4, p0, La/a/b/b/bo;->M:La/a/b/b/bz;

    iget v5, p2, La/a/b/c/d;->a:I

    invoke-interface {p1, v4, v5, v3}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    iget-object v4, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    invoke-virtual {v4, v1, v2}, La/a/b/b/bm;->e(II)La/a/b/c/d;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, La/a/b/f/o;->a(La/a/b/c/d;La/a/b/c/d;)V

    iget-object v1, p0, La/a/b/b/bo;->N:La/a/b/b/ao;

    const/4 v2, 0x4

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v1, La/a/b/b/ao;->r:[F

    iget-object v3, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v3, v3, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v3, v1, La/a/b/b/ao;->s:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v0}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-virtual {v0}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    invoke-virtual {v0}, La/a/b/f/o;->c()V

    iget-object v1, p0, La/a/b/b/bo;->N:La/a/b/b/ao;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, v1, La/a/b/b/ao;->r:[F

    iget-object v2, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iput-object v2, v1, La/a/b/b/ao;->s:Lco/polarr/renderer/entities/Mesh;

    invoke-virtual {v0}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v2

    iget v2, v2, La/a/b/c/d;->a:I

    invoke-virtual {v0}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    iget-object p0, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    iget p2, p2, La/a/b/c/d;->a:I

    invoke-interface {p1, p0, p2, p3}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    return-void

    :array_0
    .array-data 4
        0x3cf5c28f    # 0.03f
        0x0
        0x3cf5c28f    # 0.03f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3cf5c28f    # 0.03f
        0x0
        0x3cf5c28f    # 0.03f
    .end array-data
.end method

.method public final a(La/a/b/f/aa;La/a/b/f/o;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v1

    iget v1, v1, La/a/b/c/d;->b:I

    int-to-float v1, v1

    invoke-virtual/range {p2 .. p2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v2

    iget v2, v2, La/a/b/c/d;->c:I

    int-to-float v2, v2

    sget-object v3, Lco/polarr/renderer/Orientation;->CCW_90:Lco/polarr/renderer/Orientation;

    iget-object v4, v0, La/a/b/b/bo;->W:Lco/polarr/renderer/Orientation;

    if-eq v3, v4, :cond_1

    sget-object v3, Lco/polarr/renderer/Orientation;->CCW_270:Lco/polarr/renderer/Orientation;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, La/a/b/f/i;->a(FF)[La/a/b/f/i$c;

    move-result-object v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, La/a/b/f/i;->a(FF)[La/a/b/f/i$c;

    move-result-object v3

    :goto_1
    sget-object v4, La/a/b/f/x;->b:La/a/b/f/x;

    iget-object v5, v0, La/a/b/b/bo;->T:La/a/b/b/bu;

    if-eqz v3, :cond_7

    array-length v6, v3

    if-lez v6, :cond_7

    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v3, v7

    iget-object v9, v8, La/a/b/f/i$c;->b:La/a/b/f/i$d;

    iget v10, v9, La/a/b/f/i$d;->a:F

    mul-float/2addr v10, v1

    float-to-int v15, v10

    iget v10, v9, La/a/b/f/i$d;->b:F

    mul-float/2addr v10, v2

    float-to-int v10, v10

    iget v11, v9, La/a/b/f/i$d;->c:F

    mul-float/2addr v11, v1

    float-to-int v14, v11

    iget v11, v9, La/a/b/f/i$d;->d:F

    mul-float/2addr v11, v2

    float-to-int v13, v11

    iget-object v11, v8, La/a/b/f/i$c;->e:La/a/b/f/x;

    if-eq v11, v4, :cond_5

    sget-object v4, La/a/b/b/bo$b;->b:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    iget-object v4, v0, La/a/b/b/bo;->R:La/a/b/b/bc;

    goto :goto_3

    :cond_2
    iget-object v4, v0, La/a/b/b/bo;->U:La/a/b/b/ai;

    goto :goto_3

    :cond_3
    iget-object v4, v0, La/a/b/b/bo;->T:La/a/b/b/bu;

    goto :goto_3

    :cond_4
    iget-object v4, v0, La/a/b/b/bo;->S:La/a/b/b/ax;

    :goto_3
    iget-object v5, v8, La/a/b/f/i$c;->e:La/a/b/f/x;

    goto :goto_4

    :cond_5
    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    :goto_4
    iget-object v11, v8, La/a/b/f/i$c;->a:La/a/b/c/d;

    invoke-virtual {v4, v11}, La/a/b/b/by;->b(La/a/b/c/d;)V

    iget v11, v8, La/a/b/f/i$c;->d:F

    float-to-int v11, v11

    invoke-virtual {v4, v11}, La/a/b/b/by;->b(I)V

    iget v11, v9, La/a/b/f/i$d;->a:F

    iget v12, v9, La/a/b/f/i$d;->b:F

    iget v0, v9, La/a/b/f/i$d;->c:F

    iget v9, v9, La/a/b/f/i$d;->d:F

    invoke-virtual {v4, v11, v12, v0, v9}, La/a/b/b/by;->a(FFFF)V

    iget v0, v8, La/a/b/f/i$c;->c:F

    invoke-virtual {v4, v0}, La/a/b/b/by;->a(F)V

    invoke-virtual/range {p2 .. p2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v0

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-virtual/range {p2 .. p2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v8

    move-object/from16 v11, p1

    move-object v12, v4

    move v9, v13

    move v13, v0

    move v0, v14

    move-object v14, v8

    move/from16 v16, v10

    move/from16 v17, v0

    move/from16 v18, v9

    invoke-interface/range {v11 .. v18}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;IIII)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, La/a/b/f/o;->c()V

    :cond_7
    return-void
.end method

.method public a(Lco/polarr/renderer/Orientation;)V
    .locals 0

    iput-object p1, p0, La/a/b/b/bo;->W:Lco/polarr/renderer/Orientation;

    return-void
.end method

.method public a(Lco/polarr/renderer/entities/Cube;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_1

    iget-object v2, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    iput-object v2, v0, La/a/b/b/bo;->E:Ljava/lang/String;

    iget-object v3, v0, La/a/b/b/bo;->F:Ljava/util/Map;

    iget v4, v1, Lco/polarr/renderer/entities/Cube;->size:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lco/polarr/renderer/entities/Cube;->size:I

    mul-int v3, v2, v2

    iget-object v4, v0, La/a/b/b/bo;->D:Ljava/util/Map;

    iget-object v5, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    iget-object v0, v0, La/a/b/b/bo;->D:Ljava/util/Map;

    iget-object v4, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/c/d;

    invoke-static {v0, v3, v2}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [I

    array-length v5, v4

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move-object v6, v4

    move v9, v3

    move v10, v2

    invoke-static/range {v5 .. v10}, La/a/b/f/f;->a(I[IIIII)V

    aget v4, v4, v11

    const/16 v5, 0x1908

    invoke-static {v4, v5, v3, v2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v2

    const/16 v3, 0x2600

    const v4, 0x812f

    invoke-static {v4, v4, v3, v3}, La/a/b/f/f;->c(IIII)V

    iget-object v0, v0, La/a/b/b/bo;->D:Ljava/util/Map;

    iget-object v3, v1, Lco/polarr/renderer/entities/Cube;->filterID:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    iget-object v2, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, v1, Lco/polarr/renderer/entities/Cube;->data:[B

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v1, v0, La/a/b/c/d;->a:I

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, La/a/b/c/d;->d:I

    const/16 v12, 0xde1

    const/4 v13, 0x0

    iget v15, v0, La/a/b/c/d;->b:I

    iget v0, v0, La/a/b/c/d;->c:I

    const/16 v17, 0x0

    const/16 v19, 0x1401

    move v14, v1

    move/from16 v16, v0

    move/from16 v18, v1

    move-object/from16 v20, v2

    invoke-static/range {v12 .. v20}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-static {v3, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_1
    return-void
.end method

.method public a(ZFFFFF)V
    .locals 0

    iput-boolean p1, p0, La/a/b/b/bo;->ai:Z

    iput p2, p0, La/a/b/b/bo;->aj:F

    iput p3, p0, La/a/b/b/bo;->ak:F

    iput p4, p0, La/a/b/b/bo;->al:F

    iput p5, p0, La/a/b/b/bo;->z:F

    iput p6, p0, La/a/b/b/bo;->A:F

    invoke-virtual {p0}, La/a/b/b/bo;->draw()V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/a/b/b/bo;->ai:Z

    return-void
.end method

.method public a(Z)[[F
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    sget-object p0, La/a/b/a/d;->a:[[F

    return-object p0

    :cond_0
    sget-object p0, La/a/b/a/a;->a:[[F

    return-object p0

    :cond_1
    iget p0, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    sget-object p0, La/a/b/a/c;->a:[[F

    return-object p0

    :cond_2
    sget-object p0, La/a/b/a/b;->a:[[F

    return-object p0
.end method

.method public b(I)V
    .locals 0

    iget-object p0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, La/a/b/b/ar;->b(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    iget v0, p0, La/a/b/b/bo;->X:I

    if-ne v0, p1, :cond_0

    iget v0, p0, La/a/b/b/bo;->Y:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, La/a/b/b/bo;->X:I

    iput p2, p0, La/a/b/b/bo;->Y:I

    iget v0, p0, La/a/b/b/bo;->K:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, La/a/b/b/bo;->s()V

    :cond_1
    invoke-super {p0, p1, p2}, La/a/b/b/a/b;->b(II)V

    return-void
.end method

.method public final b(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V
    .locals 0

    iget-object p0, p0, La/a/b/b/bo;->O:La/a/b/b/ag;

    iget p2, p2, La/a/b/c/d;->a:I

    invoke-interface {p1, p0, p2, p3}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    return-void
.end method

.method public b(Z)[[F
    .locals 0

    if-eqz p1, :cond_1

    iget p0, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    sget-object p0, La/a/b/a/d;->b:[[F

    return-object p0

    :cond_0
    sget-object p0, La/a/b/a/a;->b:[[F

    return-object p0

    :cond_1
    iget p0, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    sget-object p0, La/a/b/a/c;->b:[[F

    return-object p0

    :cond_2
    sget-object p0, La/a/b/a/b;->b:[[F

    return-object p0
.end method

.method public final c(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V
    .locals 0

    iget-object p0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    iget p2, p2, La/a/b/c/d;->a:I

    invoke-interface {p1, p0, p2, p3}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, La/a/b/b/bo;->K:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, La/a/b/b/bo;->K:I

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/a/b/b/bm;->close()V

    iput-object v1, p0, La/a/b/b/bo;->L:La/a/b/b/bm;

    :cond_0
    iget-object v0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La/a/b/b/ar;->close()V

    iput-object v1, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    :cond_1
    iput-object v1, p0, La/a/b/b/bo;->N:La/a/b/b/ao;

    iput-object v1, p0, La/a/b/b/bo;->M:La/a/b/b/bz;

    iput-object v1, p0, La/a/b/b/bo;->O:La/a/b/b/ag;

    iput-object v1, p0, La/a/b/b/bo;->V:La/a/b/b/r;

    iput-object v1, p0, La/a/b/b/bo;->R:La/a/b/b/bc;

    iput-object v1, p0, La/a/b/b/bo;->S:La/a/b/b/ax;

    iput-object v1, p0, La/a/b/b/bo;->T:La/a/b/b/bu;

    iput-object v1, p0, La/a/b/b/bo;->U:La/a/b/b/ai;

    iget-object v0, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, La/a/b/f/i;->close()V

    iput-object v1, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    :cond_2
    invoke-virtual {p0}, La/a/b/b/bo;->t()V

    return-void
.end method

.method public final d(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V
    .locals 0

    iget-object p0, p0, La/a/b/b/bo;->V:La/a/b/b/r;

    iget p2, p2, La/a/b/c/d;->a:I

    invoke-interface {p1, p0, p2, p3}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    iget v0, p0, La/a/b/b/bo;->K:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, La/a/b/f/i;->a(J)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, La/a/b/b/bo;->b(I)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    const-string v1, "g"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, La/a/b/f/i;->a(J)V

    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, La/a/b/b/bo;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, La/a/b/b/bo;->K:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget p1, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p1, p1, -0x5

    :goto_0
    iput p1, p0, La/a/b/b/bo;->K:I

    return-void
.end method

.method public draw()V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, La/a/b/b/bo;->K:I

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, La/a/b/b/bo;->t()V

    invoke-super/range {p0 .. p0}, La/a/b/b/a/a;->draw()V

    return-void

    :cond_0
    iget-boolean v1, v0, La/a/b/b/bo;->ab:Z

    if-eqz v1, :cond_1

    invoke-super/range {p0 .. p0}, La/a/b/b/a/a;->draw()V

    return-void

    :cond_1
    iget-object v1, v0, La/a/b/b/bo;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/a/b/f/aa;

    if-eqz v1, :cond_b

    invoke-virtual/range {p0 .. p0}, La/a/b/b/a/a;->b()I

    move-result v3

    invoke-interface {v1}, La/a/b/f/aa;->a()I

    move-result v8

    iget v9, v0, La/a/b/b/bo;->X:I

    iget v10, v0, La/a/b/b/bo;->Y:I

    invoke-virtual/range {p0 .. p0}, La/a/b/b/bo;->s()V

    const/16 v2, 0x10

    new-array v7, v2, [F

    sget-object v4, La/a/b/b/bo$b;->a:[I

    iget-object v5, v0, La/a/b/b/bo;->W:Lco/polarr/renderer/Orientation;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eq v4, v6, :cond_4

    const/4 v11, 0x2

    if-eq v4, v11, :cond_3

    const/4 v11, 0x3

    if-eq v4, v11, :cond_2

    invoke-static {v7, v5}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    const/high16 v13, 0x43340000    # 180.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v11, v7

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    const/high16 v13, 0x43870000    # 270.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v11, v7

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto :goto_0

    :cond_4
    const/4 v12, 0x0

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v11, v7

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    :goto_0
    new-array v4, v2, [F

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, La/a/b/b/a/a;->getMatrix()[F

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v4

    move-object v15, v7

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, v0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    aget-object v11, v2, v5

    iget v11, v11, La/a/b/c/d;->a:I

    aget-object v12, v2, v5

    iget v12, v12, La/a/b/c/d;->b:I

    aget-object v2, v2, v5

    iget v13, v2, La/a/b/c/d;->c:I

    move-object v2, v1

    move-object v14, v4

    move v4, v11

    move v11, v5

    move-object v5, v14

    move v15, v6

    move v6, v12

    move-object v12, v7

    move v7, v13

    invoke-interface/range {v2 .. v7}, La/a/b/f/aa;->a(II[FII)V

    invoke-virtual/range {p0 .. p0}, La/a/b/b/a/a;->getMatrix()[F

    move-result-object v2

    invoke-static {v2, v11}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, v0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    aget-object v3, v2, v11

    iget v3, v3, La/a/b/c/d;->a:I

    aget-object v4, v2, v15

    iget v4, v4, La/a/b/c/d;->a:I

    aget-object v5, v2, v15

    iget v5, v5, La/a/b/c/d;->b:I

    aget-object v2, v2, v15

    iget v2, v2, La/a/b/c/d;->c:I

    invoke-interface {v1, v3, v4, v5, v2}, La/a/b/f/aa;->a(IIII)V

    new-instance v2, La/a/b/f/o;

    invoke-direct {v2}, La/a/b/f/o;-><init>()V

    iget-object v3, v0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    aget-object v4, v3, v11

    aget-object v3, v3, v15

    invoke-virtual {v2, v4, v3}, La/a/b/f/o;->a(La/a/b/c/d;La/a/b/c/d;)V

    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object v3

    invoke-virtual {v3}, La/a/b/f/i;->c()V

    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v0, La/a/b/b/bo;->K:I

    :cond_5
    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit8 v3, v3, 0x11

    if-eqz v3, :cond_6

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, La/a/b/b/bo;->a(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V

    invoke-virtual {v2}, La/a/b/f/o;->c()V

    :cond_6
    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1, v2}, La/a/b/b/bo;->a(La/a/b/f/aa;La/a/b/f/o;)V

    :cond_7
    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit8 v3, v3, 0x22

    if-eqz v3, :cond_8

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, La/a/b/b/bo;->c(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V

    invoke-virtual {v2}, La/a/b/f/o;->c()V

    :cond_8
    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit8 v3, v3, 0x44

    if-eqz v3, :cond_9

    iput-boolean v15, v0, La/a/b/b/bo;->ab:Z

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    iput-boolean v11, v0, La/a/b/b/bo;->ab:Z

    invoke-virtual {v2}, La/a/b/f/o;->c()V

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, La/a/b/b/bo;->b(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V

    goto :goto_1

    :cond_9
    iput-boolean v15, v0, La/a/b/b/bo;->ab:Z

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-interface {v1, v0, v3, v4}, La/a/b/f/aa;->a(La/a/b/b/a/a;ILa/a/b/c/d;)V

    iput-boolean v11, v0, La/a/b/b/bo;->ab:Z

    :goto_1
    invoke-virtual {v2}, La/a/b/f/o;->c()V

    iget v3, v0, La/a/b/b/bo;->K:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_a

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v3

    invoke-virtual {v2}, La/a/b/f/o;->b()La/a/b/c/d;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, La/a/b/b/bo;->d(La/a/b/f/aa;La/a/b/c/d;La/a/b/c/d;)V

    invoke-virtual {v2}, La/a/b/f/o;->c()V

    :cond_a
    invoke-static {v14, v11, v12, v11}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    invoke-virtual {v2}, La/a/b/f/o;->a()La/a/b/c/d;

    move-result-object v0

    iget v3, v0, La/a/b/c/d;->a:I

    move-object v2, v1

    move v4, v8

    move-object v5, v14

    move v6, v9

    move v7, v10

    invoke-interface/range {v2 .. v7}, La/a/b/f/aa;->a(II[FII)V

    :cond_b
    return-void
.end method

.method public e()V
    .locals 3

    invoke-super {p0}, La/a/b/b/a/a;->e()V

    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v1, "p4_1.cube.rgb.bin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xde1

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v2, "p4_1b.cube.rgb.bin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, La/a/b/b/bo;->B:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v2, "grainTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-virtual {p0}, La/a/b/b/bo;->n()V

    iget-object v2, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v2, v2, Lco/polarr/renderer/entities/Context;->grainTexture:La/a/b/c/d;

    iget v2, v2, La/a/b/c/d;->a:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v2, "p4_3.cube.rgb.bin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v2, "overlayTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->overlayTexture:La/a/b/c/d;

    iget p0, p0, La/a/b/c/d;->a:I

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 p0, 0x3

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    return-void
.end method

.method public e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, La/a/b/b/bo;->K:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, La/a/b/b/bo;->K:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, La/a/b/b/bo;->K:I

    iget-object p1, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, La/a/b/b/ar;->p()V

    iget-object p0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, La/a/b/b/ar;->d(II)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, La/a/b/b/bo;->ac:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, La/a/b/b/a/b;->f()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget p1, p0, La/a/b/b/bo;->K:I

    or-int/lit16 p1, p1, 0x1e0

    goto :goto_0

    :cond_0
    iget p1, p0, La/a/b/b/bo;->K:I

    and-int/lit16 p1, p1, -0x1e1

    :goto_0
    iput p1, p0, La/a/b/b/bo;->K:I

    sget-object p1, Lco/polarr/renderer/Orientation;->CCW_0:Lco/polarr/renderer/Orientation;

    iput-object p1, p0, La/a/b/b/bo;->W:Lco/polarr/renderer/Orientation;

    iget-object p1, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, La/a/b/b/ar;->p()V

    iget-object p0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    const/16 p1, 0x8

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, La/a/b/b/ar;->d(II)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 0

    invoke-super {p0}, La/a/b/b/a/b;->g()V

    invoke-virtual {p0}, La/a/b/b/bo;->r()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 10

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    iget-object v0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v3, p0, La/a/b/b/bo;->F:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v3, "lut_size"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget-object v3, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    iget-object v4, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/b/c/d;

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "lookup_texture"

    invoke-virtual {p0, v0, v2}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v0, v0, Lco/polarr/renderer/entities/Context;->grainTexture:La/a/b/c/d;

    iget v3, v0, La/a/b/c/d;->b:I

    int-to-float v3, v3

    iget v0, v0, La/a/b/c/d;->c:I

    int-to-float v0, v0

    const-string v4, "grainTextureSize"

    invoke-virtual {p0, v4, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, La/a/b/f/h;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    aget v3, v0, v1

    aget v0, v0, v2

    const-string v4, "textureSize"

    invoke-virtual {p0, v4, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    invoke-static {}, La/a/b/a;->a()I

    move-result v0

    const-string v3, "globalScreenRotation"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, La/a/b/b/bo;->J:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v3, p0, La/a/b/b/bo;->J:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const-string v4, "grainRandomOffset"

    invoke-virtual {p0, v4, v0, v3}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget-boolean v0, p0, La/a/b/b/bo;->ai:Z

    const-string v3, "is_apply_roundcorner"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, La/a/b/b/bo;->aj:F

    const-string v3, "roundcorner_radius"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/bo;->ak:F

    iget v3, p0, La/a/b/b/bo;->al:F

    const-string v4, "roundcorner_offset"

    invoke-virtual {p0, v4, v0, v3}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget v0, p0, La/a/b/b/bo;->z:F

    iget v3, p0, La/a/b/b/bo;->A:F

    const-string v4, "roundcorner_size"

    invoke-virtual {p0, v4, v0, v3}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    :cond_0
    iget-boolean v0, p0, La/a/b/b/bo;->ad:Z

    const-string v3, "is_apply_vignette"

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v4, "crop"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v5, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v5, v5, Lco/polarr/renderer/entities/Context;->renderStates:Ljava/util/Map;

    invoke-static {v4, v5}, La/a/b/f;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    aget v6, v4, v6

    sub-float/2addr v5, v6

    aget v6, v4, v2

    sub-float/2addr v5, v6

    aput v5, v4, v2

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v4, "rotationMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v4, v4, Lco/polarr/renderer/entities/Context;->rotation90MatrixInv:[F

    invoke-static {v0, v2, v1, v4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    invoke-static {v0}, La/a/b/f/h;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v0

    aget v4, v0, v1

    aget v0, v0, v2

    const-string v5, "imgSize"

    invoke-virtual {p0, v5, v4, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;FF)V

    iget v0, p0, La/a/b/b/bo;->G:F

    const-string v4, "lookup_intensity"

    invoke-virtual {p0, v4, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v4, "domain_min"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, La/a/b/b/bo;->H:[F

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget v0, p0, La/a/b/b/a/a;->b:I

    const-string v4, "domain_max"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, La/a/b/b/bo;->I:[F

    invoke-static {v0, v2, v4, v1}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v4, "vignette_amount"

    invoke-static {v0, v4}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La/a/b/e;->a()La/a/b/e;

    move-result-object v0

    iget-object v4, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    invoke-virtual {v0, v4}, La/a/b/e;->a(Ljava/lang/String;)Lco/polarr/renderer/entities/FilterItem;

    move-result-object v0

    invoke-virtual {p0, v3, v2}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    const-string v4, "vignette_amount"

    const-string v5, "vignette_feather"

    const-string v6, "vignette_highlights"

    const-string v7, "vignette_roundness"

    const-string v8, "vignette_size"

    const-string v9, "vignette_exposure"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, v2, v1

    iget-object v5, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lco/polarr/renderer/entities/FilterItem;->state:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v4, v5}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    invoke-static {v0}, Lco/polarr/renderer/FilterPackageUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3, v1}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    sget v0, La/a/b/b/bo;->r:F

    invoke-virtual {p0, v4, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    sget v0, La/a/b/b/bo;->s:F

    const-string v1, "vignette_feather"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    sget v0, La/a/b/b/bo;->t:F

    const-string v1, "vignette_highlights"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    sget v0, La/a/b/b/bo;->v:F

    const-string v1, "vignette_roundness"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    sget v0, La/a/b/b/bo;->w:F

    const-string v1, "vignette_size"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    sget v0, La/a/b/b/bo;->u:F

    const-string v1, "vignette_exposure"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    :cond_4
    :goto_1
    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v1, "grain_amount"

    invoke-static {v0, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "grain_roughness"

    const-string v3, "grain_highlights"

    const-string v4, "grain_size"

    if-eqz v0, :cond_5

    invoke-static {}, La/a/b/e;->a()La/a/b/e;

    move-result-object v0

    iget-object v5, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    invoke-virtual {v0, v5}, La/a/b/e;->a(Ljava/lang/String;)Lco/polarr/renderer/entities/FilterItem;

    const v0, 0x3da3d70a    # 0.08f

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/bo;->af:F

    invoke-virtual {p0, v4, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    const v0, 0x3f6147ae    # 0.88f

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    const v0, 0x3e4ccccd    # 0.2f

    :goto_2
    invoke-virtual {p0, v2, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    goto :goto_3

    :cond_5
    iget-boolean v0, p0, La/a/b/b/bo;->B:Z

    if-eqz v0, :cond_6

    iget v0, p0, La/a/b/b/bo;->ae:F

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/bo;->af:F

    invoke-virtual {p0, v4, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/bo;->ag:F

    invoke-virtual {p0, v3, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    iget v0, p0, La/a/b/b/bo;->ah:F

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;F)V

    :goto_3
    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    const-string v1, "overlay_amount"

    invoke-static {v0, v1}, Lco/polarr/renderer/FilterPackageUtil;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "is_apply_overlay"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, La/a/b/b/a/b;->l()Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-boolean v0, v0, Lco/polarr/renderer/entities/Context;->grainTextureBinded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, La/a/b/b/bo;->x:[B

    if-eqz v0, :cond_1

    sget-object v0, La/a/b/b/bo;->x:[B

    array-length v0, v0

    const/high16 v1, 0x400000

    if-eq v0, v1, :cond_4

    :cond_1
    const/4 v0, 0x0

    sget-object v1, La/a/b/b/bo;->q:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, La/a/b/b/bo;->q:Ljava/lang/String;

    const-string v3, "film_grain_small.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "textures/film_grain_small.bin"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_3
    invoke-static {v0}, La/a/b/f/p;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sput-object v1, La/a/b/b/bo;->x:[B

    :cond_4
    iget-object v0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v1, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object v1, v1, Lco/polarr/renderer/entities/Context;->grainTexture:La/a/b/c/d;

    iget v1, v1, La/a/b/c/d;->a:I

    sget-object v2, La/a/b/b/bo;->x:[B

    const/16 v3, 0x400

    invoke-virtual {p0, v1, v2, v3, v3}, La/a/b/b/bo;->a(I[BII)La/a/b/c/d;

    move-result-object v1

    iput-object v1, v0, Lco/polarr/renderer/entities/Context;->grainTexture:La/a/b/c/d;

    iget-object p0, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/polarr/renderer/entities/Context;->grainTextureBinded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, La/a/b/b/bo;->K:I

    return-void
.end method

.method public q()V
    .locals 10

    const-string v0, "AUTO_ENHANCE_FILTER"

    iput-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    iget-object v1, p0, La/a/b/b/bo;->F:Ljava/util/Map;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x400

    if-eqz v1, :cond_0

    iget-object p0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/b/c/d;

    invoke-static {p0, v3, v2}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    array-length v4, v1

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x400

    const/16 v9, 0x20

    move-object v5, v1

    invoke-static/range {v4 .. v9}, La/a/b/f/f;->a(I[IIIII)V

    const/4 v4, 0x0

    aget v1, v1, v4

    const/16 v4, 0x1908

    invoke-static {v1, v4, v3, v2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v1

    const/16 v2, 0x2600

    const v3, 0x812f

    invoke-static {v3, v3, v2, v2}, La/a/b/f/f;->c(IIII)V

    iget-object p0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public r()V
    .locals 12

    const-string v0, "COMBAIN_FILTER"

    iput-object v0, p0, La/a/b/b/bo;->E:Ljava/lang/String;

    iget-object v1, p0, La/a/b/b/bo;->C:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, La/a/b/b/bo;->q:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/File;

    sget-object v3, La/a/b/b/bo;->q:Ljava/lang/String;

    const-string v4, "lut_all_points.png"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, La/a/b/b/a/a;->i:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "textures/lut_all_points.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, La/a/b/b/bo;->C:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v1, p0, La/a/b/b/bo;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, La/a/b/b/bo;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget-object v2, p0, La/a/b/b/bo;->F:Ljava/util/Map;

    int-to-float v3, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/16 v9, 0x1908

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/c/d;

    invoke-static {v0, v1, v8}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    new-array v11, v2, [I

    array-length v2, v11

    const/4 v4, 0x0

    const/16 v5, 0x1908

    move-object v3, v11

    move v6, v1

    move v7, v8

    invoke-static/range {v2 .. v7}, La/a/b/f/f;->a(I[IIIII)V

    aget v2, v11, v10

    invoke-static {v2, v9, v1, v8}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v11, v3

    invoke-static {v3, v9, v1, v8}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object v1

    const/16 v3, 0x2600

    const v4, 0x812f

    invoke-static {v4, v4, v3, v3}, La/a/b/f/f;->c(IIII)V

    iget-object v3, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    const-string v3, "COMBAIN_FILTER_SWAP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_1
    iget v0, v0, La/a/b/c/d;->a:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p0, p0, La/a/b/b/bo;->C:Landroid/graphics/Bitmap;

    invoke-static {v1, v10, v9, p0, v10}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    iget v2, v2, La/a/b/c/d;->b:I

    iget v3, p0, La/a/b/b/bo;->X:I

    if-ne v2, v3, :cond_1

    aget-object v0, v0, v1

    iget v0, v0, La/a/b/c/d;->c:I

    iget v2, p0, La/a/b/b/bo;->Y:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, La/a/b/b/bo;->t()V

    :cond_2
    iget v0, p0, La/a/b/b/bo;->X:I

    if-lez v0, :cond_3

    iget v2, p0, La/a/b/b/bo;->Y:I

    if-lez v2, :cond_3

    iget-object v3, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    const/16 v4, 0x1908

    invoke-virtual {p0, v0, v2, v4}, La/a/b/b/a/a;->a(III)La/a/b/c/d;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    const/4 v1, 0x1

    iget v2, p0, La/a/b/b/bo;->X:I

    iget v3, p0, La/a/b/b/bo;->Y:I

    invoke-virtual {p0, v2, v3, v4}, La/a/b/b/a/a;->a(III)La/a/b/c/d;

    move-result-object p0

    aput-object p0, v0, v1

    :cond_3
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    iget-object v0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    aget-object v0, v0, v3

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a(La/a/b/c/d;)V

    iget-object p0, p0, La/a/b/b/bo;->Z:[La/a/b/c/d;

    aput-object v2, p0, v3

    :cond_1
    return-void
.end method

.method public u()La/a/b/c/d;
    .locals 2

    iget-object v0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    const-string v1, "AUTO_ENHANCE_FILTER"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    iget-object p0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/b/c/d;

    return-object p0

    :cond_0
    invoke-virtual {p0}, La/a/b/b/bo;->q()V

    goto :goto_0
.end method

.method public v()La/a/b/c/d;
    .locals 1

    iget-object p0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    const-string v0, "COMBAIN_FILTER"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/b/c/d;

    return-object p0
.end method

.method public w()La/a/b/c/d;
    .locals 1

    iget-object p0, p0, La/a/b/b/bo;->D:Ljava/util/Map;

    const-string v0, "COMBAIN_FILTER_SWAP"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/a/b/c/d;

    return-object p0
.end method

.method public x()I
    .locals 1

    iget v0, p0, La/a/b/b/bo;->K:I

    and-int/lit8 v0, v0, 0x22

    if-eqz v0, :cond_0

    iget-object p0, p0, La/a/b/b/bo;->P:La/a/b/b/ar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/a/b/b/ar;->o()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Ljava/lang/String;
    .locals 3

    iget v0, p0, La/a/b/b/bo;->K:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La/a/b/b/bo;->x()I

    move-result v0

    invoke-virtual {p0}, La/a/b/b/bo;->z()La/a/b/f/i;

    move-result-object p0

    invoke-virtual {p0}, La/a/b/f/i;->a()J

    move-result-wide v1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "s"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "g"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final z()La/a/b/f/i;
    .locals 3

    iget-object v0, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    if-nez v0, :cond_0

    new-instance v0, La/a/b/f/i;

    new-instance v1, La/a/b/b/bo$a;

    invoke-direct {v1, p0}, La/a/b/b/bo$a;-><init>(La/a/b/b/bo;)V

    const-string v2, "pacman.json"

    invoke-direct {v0, v1, v2}, La/a/b/f/i;-><init>(La/a/b/f/a;Ljava/lang/String;)V

    iput-object v0, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    iget-object v0, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    invoke-virtual {v0}, La/a/b/f/i;->b()V

    :cond_0
    iget-object p0, p0, La/a/b/b/bo;->Q:La/a/b/f/i;

    return-object p0
.end method
