.class public La/a/b/f/z;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/f/z$b;,
        La/a/b/f/z$c;,
        La/a/b/f/z$d;
    }
.end annotation


# instance fields
.field public a:Landroid/content/res/Resources;

.field public b:Lco/polarr/renderer/entities/Context;

.field public c:I

.field public d:La/a/b/c/d;

.field public e:[La/a/b/c/d;

.field public f:[[F

.field public g:I

.field public h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

.field public i:Z

.field public j:I

.field public k:La/a/b/c/d;

.field public l:La/a/b/c/d;

.field public m:La/a/b/c/d;

.field public n:La/a/b/c/d;

.field public o:Z

.field public p:I

.field public q:[F

.field public r:La/a/b/b/x;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;La/a/b/f/m;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/f/z;->c:I

    iget v1, p0, La/a/b/f/z;->c:I

    new-array v2, v1, [La/a/b/c/d;

    iput-object v2, p0, La/a/b/f/z;->e:[La/a/b/c/d;

    new-array v1, v1, [[F

    iput-object v1, p0, La/a/b/f/z;->f:[[F

    iput-object p1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    new-instance p1, Lco/polarr/renderer/entities/Context;

    invoke-direct {p1}, Lco/polarr/renderer/entities/Context;-><init>()V

    iput-object p1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    iget-object p1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    new-instance v1, Lco/polarr/renderer/entities/Mesh$Options;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v0, v2}, Lco/polarr/renderer/entities/Mesh$Options;-><init>(ZZZI)V

    invoke-static {v1}, Lco/polarr/renderer/entities/Mesh;->plane(Lco/polarr/renderer/entities/Mesh$Options;)Lco/polarr/renderer/entities/Mesh;

    move-result-object v1

    iput-object v1, p1, Lco/polarr/renderer/entities/Context;->mesh:Lco/polarr/renderer/entities/Mesh;

    iget-object p1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    iput-object p2, p1, Lco/polarr/renderer/entities/Context;->shaderUtil:La/a/b/f/m;

    iput v0, p0, La/a/b/f/z;->g:I

    const/4 p1, 0x3

    new-array p1, p1, [I

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p1

    invoke-static/range {v3 .. v8}, La/a/b/f/f;->a(I[IIIII)V

    aget p2, p1, v0

    const/16 v0, 0x1908

    invoke-static {p2, v0, v2, v2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p2

    iput-object p2, p0, La/a/b/f/z;->d:La/a/b/c/d;

    aget p2, p1, v2

    invoke-static {p2, v0, v2, v2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p2

    iput-object p2, p0, La/a/b/f/z;->l:La/a/b/c/d;

    const/4 p2, 0x2

    aget p1, p1, p2

    invoke-static {p1, v0, v2, v2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p1

    iput-object p1, p0, La/a/b/f/z;->m:La/a/b/c/d;

    invoke-virtual {p0, v2, v2}, La/a/b/f/z;->a(II)La/a/b/c/d;

    move-result-object p1

    iput-object p1, p0, La/a/b/f/z;->k:La/a/b/c/d;

    invoke-virtual {p0, v2, v2}, La/a/b/f/z;->a(II)La/a/b/c/d;

    move-result-object p1

    iput-object p1, p0, La/a/b/f/z;->n:La/a/b/c/d;

    return-void
.end method

.method public static a(Landroid/graphics/RectF;FFF)[F
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p3, v1

    add-float/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, p2

    iget v4, p0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, p3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v5, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, p1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p3

    invoke-static {p0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    sub-float p1, p2, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    div-float/2addr p0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p2, p1, v0

    div-float p3, p1, v2

    invoke-static {}, La/a/b/f/r;->a()[F

    move-result-object v0

    mul-float/2addr v4, v1

    mul-float/2addr v4, p2

    const/high16 v2, -0x40800000    # -1.0f

    sub-float v4, v2, v4

    mul-float/2addr p0, v1

    mul-float/2addr p0, p3

    add-float/2addr p0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, p0, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-static {v0, v1, p2, p3, p1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-static {v0, v1, p1, v2, v3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-object v0
.end method


# virtual methods
.method public final a(III)I
    .locals 0

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final a(II)La/a/b/c/d;
    .locals 2

    const/16 v0, 0x1908

    const/16 v1, 0x140b

    invoke-virtual {p0, v0, v1, p1, p2}, La/a/b/f/z;->a(IIII)La/a/b/c/d;

    move-result-object p0

    iget p1, p0, La/a/b/c/d;->a:I

    const/16 p2, 0xde1

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2600

    const v0, 0x812f

    invoke-static {v0, v0, p1, p1}, La/a/b/f/f;->c(IIII)V

    const/4 p1, 0x0

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-object p0
.end method

.method public final a(IIII)La/a/b/c/d;
    .locals 7

    const/4 p0, 0x1

    new-array p0, p0, [I

    array-length v0, p0

    const/4 v2, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, La/a/b/f/f;->a(I[IIIIII)V

    const/4 p2, 0x0

    aget p0, p0, p2

    invoke-static {p0, p1, p3, p4}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p0

    return-object p0
.end method

.method public final a(La/a/b/c/d;I)La/a/b/c/d;
    .locals 3

    iget v0, p1, La/a/b/c/d;->b:I

    iget v1, p1, La/a/b/c/d;->c:I

    invoke-virtual {p0, v0, v1}, La/a/b/f/z;->b(II)La/a/b/c/d;

    move-result-object v0

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, La/a/b/b/t;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/t;

    move-result-object v1

    iget p1, p1, La/a/b/c/d;->a:I

    invoke-virtual {v1, p1}, La/a/b/b/a/a;->a(I)V

    iput p2, v1, La/a/b/b/t;->r:I

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    return-object v0
.end method

.method public final a(La/a/b/f/z$b;I)La/a/b/c/d;
    .locals 7

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x6

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p1, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    iget-object v2, v2, La/a/b/f/z$d;->b:La/a/b/c/d;

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-gt v4, v0, :cond_1

    iget-object v5, p1, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    invoke-virtual {p0, p1, v5, v1}, La/a/b/f/z;->a(La/a/b/f/z$b;La/a/b/f/z$d;I)V

    if-lt p2, v3, :cond_0

    if-ne v4, v0, :cond_0

    iget-object v5, p1, La/a/b/f/z$b;->c:Ljava/util/List;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_0
    iget-object v5, p1, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, La/a/b/f/z$c;

    iget-object v6, p1, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    invoke-virtual {p0, p1, v6, v5, v2}, La/a/b/f/z;->a(La/a/b/f/z$b;La/a/b/f/z$d;La/a/b/f/z$c;La/a/b/c/d;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, La/a/b/f/z;->o:Z

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/opengl/GLES30;->glFinish()V

    :cond_2
    return-object v2
.end method

.method public final a(La/a/b/f/z$c;)La/a/b/c/d;
    .locals 3

    iget v0, p1, La/a/b/c/d;->b:I

    iget v1, p1, La/a/b/c/d;->c:I

    invoke-virtual {p0, v0, v1}, La/a/b/f/z;->b(II)La/a/b/c/d;

    move-result-object v0

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, La/a/b/b/n;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/n;

    move-result-object v1

    iget v2, p1, La/a/b/c/d;->a:I

    iput v2, v1, La/a/b/b/n;->r:I

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    invoke-virtual {p0, p1, v0}, La/a/b/f/z;->a(La/a/b/c/d;La/a/b/c/d;)V

    iget v1, p1, La/a/b/f/z$c;->e:I

    iget v2, p1, La/a/b/f/z$c;->f:I

    invoke-static {v0, v1, v2}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget v2, p1, La/a/b/c/d;->a:I

    invoke-virtual {v1, v2}, La/a/b/b/a/a;->a(I)V

    iget-object p1, p1, La/a/b/f/z$c;->g:[F

    invoke-virtual {v1, p1}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    return-object v0
.end method

.method public final a(La/a/b/f/z$b;La/a/b/c/d;La/a/b/c/d;La/a/b/f/z$c;)La/a/b/f/z$d;
    .locals 6

    iget v0, p4, La/a/b/f/z$c;->e:I

    iget v1, p4, La/a/b/f/z$c;->f:I

    const v2, 0x881a

    const/16 v3, 0x140b

    invoke-static {p2, v2, v3, v0, v1}, La/a/b/f/f;->a(La/a/b/c/d;IIII)V

    iget-object v0, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, La/a/b/b/aq;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/aq;

    move-result-object v0

    iget-object v1, p4, La/a/b/f/z$c;->g:[F

    iput-object v1, v0, La/a/b/b/aq;->v:[F

    iget v1, p4, La/a/b/c/d;->a:I

    iput v1, v0, La/a/b/b/aq;->r:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p4, La/a/b/c/d;->b:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p4, La/a/b/c/d;->c:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iput-object v2, v0, La/a/b/b/aq;->s:[F

    iget-object p1, p1, La/a/b/f/z$b;->a:La/a/b/c/d;

    new-array v1, v1, [F

    iget v2, p1, La/a/b/c/d;->b:I

    int-to-float v2, v2

    aput v2, v1, v4

    iget p1, p1, La/a/b/c/d;->c:I

    int-to-float p1, p1

    aput p1, v1, v5

    iput-object v1, v0, La/a/b/b/aq;->t:[F

    iget-boolean p1, p0, La/a/b/f/z;->i:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v1, p0, La/a/b/f/z;->j:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/b/f/z;->j:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, La/a/b/b/aq;->u:F

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float p1, v1

    iput p1, v0, La/a/b/b/aq;->u:F

    iget-object p1, p0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object p1, p1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v1, v0, La/a/b/b/aq;->u:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p4, La/a/b/f/z$c;->g:[F

    invoke-virtual {v0, p1}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {p0, v0, p2}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    new-instance p1, La/a/b/f/z$d;

    invoke-direct {p1, p0, p4, p3, p2}, La/a/b/f/z$d;-><init>(La/a/b/f/z;La/a/b/f/z$c;La/a/b/c/d;La/a/b/c/d;)V

    return-object p1
.end method

.method public final a(La/a/b/f/z$b;La/a/b/f/z$d;La/a/b/c/d;La/a/b/f/z$c;)La/a/b/f/z$d;
    .locals 8

    iget-object p2, p2, La/a/b/f/z$d;->c:La/a/b/c/d;

    iget-object v0, p1, La/a/b/f/z$b;->f:La/a/b/c/d;

    iget v1, p4, La/a/b/f/z$c;->e:I

    iget v2, p4, La/a/b/f/z$c;->f:I

    const v3, 0x881a

    const/16 v4, 0x140b

    invoke-static {v0, v3, v4, v1, v2}, La/a/b/f/f;->a(La/a/b/c/d;IIII)V

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, La/a/b/b/o;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/o;

    move-result-object v1

    iget-object v2, p4, La/a/b/f/z$c;->g:[F

    iput-object v2, v1, La/a/b/b/o;->x:[F

    iget v3, p4, La/a/b/c/d;->a:I

    iput v3, v1, La/a/b/b/o;->s:I

    iget v3, p3, La/a/b/c/d;->a:I

    iput v3, v1, La/a/b/b/o;->r:I

    iget v3, p2, La/a/b/c/d;->a:I

    iput v3, v1, La/a/b/b/o;->t:I

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget v5, p4, La/a/b/c/d;->b:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p4, La/a/b/c/d;->c:I

    int-to-float v5, v5

    const/4 v7, 0x1

    aput v5, v4, v7

    iput-object v4, v1, La/a/b/b/o;->u:[F

    new-array v4, v3, [F

    iget v5, p3, La/a/b/c/d;->b:I

    int-to-float v5, v5

    aput v5, v4, v6

    iget v5, p3, La/a/b/c/d;->c:I

    int-to-float v5, v5

    aput v5, v4, v7

    iput-object v4, v1, La/a/b/b/o;->v:[F

    iget-object p1, p1, La/a/b/f/z$b;->a:La/a/b/c/d;

    new-array v3, v3, [F

    iget v4, p1, La/a/b/c/d;->b:I

    int-to-float v4, v4

    aput v4, v3, v6

    iget p1, p1, La/a/b/c/d;->c:I

    int-to-float p1, p1

    aput p1, v3, v7

    iput-object v3, v1, La/a/b/b/o;->w:[F

    invoke-virtual {v1, v2}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    invoke-virtual {p0, p2, v0}, La/a/b/f/z;->a(La/a/b/c/d;La/a/b/c/d;)V

    new-instance p1, La/a/b/f/z$d;

    invoke-direct {p1, p0, p4, p3, p2}, La/a/b/f/z$d;-><init>(La/a/b/f/z;La/a/b/f/z$c;La/a/b/c/d;La/a/b/c/d;)V

    return-object p1
.end method

.method public a(Ljava/util/List;F)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, La/a/b/f/z;->q:[F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v0, v1, p2}, La/a/b/f/z;->a(Ljava/util/List;Landroid/graphics/PointF;F)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, La/a/b/f/z;->c(II)V

    iget-object v0, p0, La/a/b/f/z;->d:La/a/b/c/d;

    if-eqz v0, :cond_0

    invoke-static {v0}, La/a/b/c/g;->a(La/a/b/c/d;)V

    iget-object v0, p0, La/a/b/f/z;->d:La/a/b/c/d;

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-static {v0}, La/a/b/c/g;->e(I)V

    :cond_0
    iget-object v0, p0, La/a/b/f/z;->m:La/a/b/c/d;

    if-eqz v0, :cond_1

    invoke-static {v0}, La/a/b/c/g;->a(La/a/b/c/d;)V

    iget-object v0, p0, La/a/b/f/z;->m:La/a/b/c/d;

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-static {v0}, La/a/b/c/g;->e(I)V

    :cond_1
    iget-object v0, p0, La/a/b/f/z;->l:La/a/b/c/d;

    if-eqz v0, :cond_2

    invoke-static {v0}, La/a/b/c/g;->a(La/a/b/c/d;)V

    iget-object v0, p0, La/a/b/f/z;->l:La/a/b/c/d;

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-static {v0}, La/a/b/c/g;->e(I)V

    :cond_2
    iget-object v0, p0, La/a/b/f/z;->k:La/a/b/c/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, La/a/b/f/z;->a(La/a/b/c/d;)V

    iput-object v1, p0, La/a/b/f/z;->k:La/a/b/c/d;

    :cond_3
    iget-object v0, p0, La/a/b/f/z;->n:La/a/b/c/d;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, La/a/b/f/z;->a(La/a/b/c/d;)V

    iput-object v1, p0, La/a/b/f/z;->n:La/a/b/c/d;

    :cond_4
    return-void
.end method

.method public final a(I)V
    .locals 6

    iget v0, p0, La/a/b/f/z;->c:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    invoke-static {}, La/a/b/b/a/c;->l()La/a/b/b/a/c;

    move-result-object v2

    invoke-virtual {v2, p1}, La/a/b/b/a/c;->b(I)V

    iget-object p1, p0, La/a/b/f/z;->d:La/a/b/c/d;

    iget v3, p1, La/a/b/c/d;->b:I

    iget p1, p1, La/a/b/c/d;->c:I

    invoke-virtual {v2, v3, p1}, La/a/b/b/a/a;->c(II)V

    invoke-virtual {v2}, La/a/b/b/a/c;->s()V

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, v3, v3, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object p1, p0, La/a/b/f/z;->d:La/a/b/c/d;

    iget p1, p1, La/a/b/c/d;->a:I

    invoke-virtual {v0, p1}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    move p1, v1

    :goto_0
    iget v3, p0, La/a/b/f/z;->g:I

    if-ge p1, v3, :cond_1

    iget-object v3, p0, La/a/b/f/z;->e:[La/a/b/c/d;

    aget-object v3, v3, p1

    iget-object v4, p0, La/a/b/f/z;->f:[[F

    aget-object v4, v4, p1

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v5

    invoke-static {v5, v1, v4, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget v3, v3, La/a/b/c/d;->a:I

    invoke-virtual {v0, v3}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {v0}, Lco/polarr/renderer/filters/Basic;->draw()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, La/a/b/b/a/c;->n()V

    return-void
.end method

.method public a(IILandroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p2, p0, v0}, La/a/b/f/f;->b(III)V

    invoke-static {p1, p2, p3}, La/a/b/f/f;->a(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public a(ILco/polarr/renderer/entities/MagicEraserPath;)V
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, La/a/b/f/z;->d:La/a/b/c/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, La/a/b/c/d;->b:I

    iget v0, v0, La/a/b/c/d;->c:I

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move v3, v9

    move v4, v3

    move v5, v10

    move v11, v5

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    goto :goto_0

    :cond_1
    iget v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v2, v12

    const/4 v13, 0x2

    new-array v13, v13, [F

    int-to-float v1, v1

    div-float v1, v2, v1

    const/4 v14, 0x0

    aput v1, v13, v14

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v15, 0x1

    aput v2, v13, v15

    aget v0, v13, v14

    sub-float/2addr v3, v0

    aget v0, v13, v15

    sub-float/2addr v4, v0

    aget v0, v13, v14

    add-float/2addr v5, v0

    aget v0, v13, v15

    add-float/2addr v11, v0

    cmpg-float v0, v3, v10

    if-gtz v0, :cond_2

    aget v0, v13, v14

    mul-float/2addr v0, v12

    add-float/2addr v5, v0

    :cond_2
    cmpg-float v0, v4, v10

    if-gtz v0, :cond_3

    aget v0, v13, v15

    mul-float/2addr v0, v12

    add-float/2addr v11, v0

    :cond_3
    cmpl-float v0, v5, v9

    if-ltz v0, :cond_4

    aget v0, v13, v14

    mul-float/2addr v0, v12

    sub-float/2addr v3, v0

    :cond_4
    cmpl-float v0, v11, v9

    if-ltz v0, :cond_5

    aget v0, v13, v15

    mul-float/2addr v0, v12

    sub-float/2addr v4, v0

    :cond_5
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13, v3, v4, v5, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v0, La/a/b/b/bf;

    iget-object v1, v6, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    iget-object v2, v6, La/a/b/f/z;->a:Landroid/content/res/Resources;

    invoke-direct {v0, v1, v2}, La/a/b/b/bf;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, La/a/b/f/w;->a(D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, La/a/b/b/bf;->o:F

    iput v9, v0, La/a/b/b/bf;->p:F

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, La/a/b/b/bf;->q:[F

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    iget-object v2, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v3, v2, La/a/b/c/d;->b:I

    iget v2, v2, La/a/b/c/d;->c:I

    invoke-static {v1, v3, v2}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    invoke-static {}, La/a/b/b/a/c;->l()La/a/b/b/a/c;

    move-result-object v1

    iget-object v2, v6, La/a/b/f/z;->l:La/a/b/c/d;

    iget v2, v2, La/a/b/c/d;->a:I

    invoke-virtual {v1, v2}, La/a/b/b/a/c;->b(I)V

    iget-object v2, v6, La/a/b/f/z;->l:La/a/b/c/d;

    iget v3, v2, La/a/b/c/d;->b:I

    iget v2, v2, La/a/b/c/d;->c:I

    invoke-virtual {v1, v3, v2}, La/a/b/b/a/a;->c(II)V

    invoke-virtual {v1}, La/a/b/b/a/c;->s()V

    invoke-static {v10, v10, v10, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, v8, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    mul-float/2addr v2, v12

    iput v2, v0, La/a/b/b/bf;->n:F

    iget-object v3, v8, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-virtual {v6, v3, v2}, La/a/b/f/z;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, La/a/b/b/bf;->a(Ljava/util/List;Z)V

    :cond_6
    invoke-virtual {v1}, La/a/b/b/a/c;->n()V

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v0

    int-to-float v1, v15

    div-float v11, v0, v1

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v12, v0, v1

    move v5, v14

    :goto_1
    if-ge v5, v15, :cond_b

    move v0, v14

    :goto_2
    if-ge v0, v15, :cond_a

    iget-boolean v1, v6, La/a/b/f/z;->i:Z

    if-nez v1, :cond_7

    new-instance v1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    invoke-direct {v1}, Lco/polarr/renderer/entities/MagicEraserHistoryItem;-><init>()V

    iput-object v1, v6, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v1, v6, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iput-object v8, v1, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->path:Lco/polarr/renderer/entities/MagicEraserPath;

    :cond_7
    int-to-float v1, v5

    iget v2, v13, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/RectF;->top:F

    add-int/lit8 v15, v5, 0x1

    int-to-float v15, v15

    add-int/lit8 v0, v0, 0x1

    new-instance v14, Landroid/graphics/RectF;

    mul-float/2addr v1, v11

    add-float/2addr v1, v2

    mul-float/2addr v3, v12

    add-float/2addr v3, v4

    mul-float/2addr v15, v11

    add-float/2addr v15, v2

    int-to-float v2, v0

    mul-float/2addr v2, v12

    add-float/2addr v2, v4

    invoke-direct {v14, v1, v3, v15, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, v14, Landroid/graphics/RectF;->left:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v14, Landroid/graphics/RectF;->left:F

    iget v1, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v14, Landroid/graphics/RectF;->top:F

    iget v1, v14, Landroid/graphics/RectF;->right:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v14, Landroid/graphics/RectF;->right:F

    iget v1, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v14, Landroid/graphics/RectF;->bottom:F

    iget v1, v14, Landroid/graphics/RectF;->left:F

    iget-object v2, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v3, v2, La/a/b/c/d;->b:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget v2, v2, La/a/b/c/d;->c:I

    new-instance v15, Landroid/graphics/Rect;

    int-to-float v2, v2

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iget v9, v14, Landroid/graphics/RectF;->right:F

    mul-float/2addr v9, v3

    float-to-int v3, v9

    iget v9, v14, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v9, v2

    float-to-int v2, v9

    invoke-direct {v15, v1, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_8

    iget v1, v15, Landroid/graphics/Rect;->right:I

    iget v3, v15, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v3

    rsub-int/lit8 v4, v4, 0x6

    add-int/2addr v1, v4

    iput v1, v15, Landroid/graphics/Rect;->right:I

    iget v1, v15, Landroid/graphics/Rect;->right:I

    iget-object v4, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v4, v4, La/a/b/c/d;->b:I

    sub-int/2addr v1, v4

    if-lez v1, :cond_8

    iput v4, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v15, Landroid/graphics/Rect;->left:I

    iget v1, v15, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v15, Landroid/graphics/Rect;->left:I

    :cond_8
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, v2, :cond_9

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    iget v3, v15, Landroid/graphics/Rect;->top:I

    sub-int v4, v1, v3

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v15, Landroid/graphics/Rect;->bottom:I

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v2, v2, La/a/b/c/d;->c:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_9

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v15, Landroid/graphics/Rect;->top:I

    iget v1, v15, Landroid/graphics/Rect;->top:I

    const/4 v9, 0x0

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v15, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    iget-object v1, v6, La/a/b/f/z;->m:La/a/b/c/d;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, La/a/b/c/d;->b:I

    iget-object v1, v6, La/a/b/f/z;->m:La/a/b/c/d;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, La/a/b/c/d;->c:I

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, La/a/b/c/d;->b:I

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, La/a/b/c/d;->c:I

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    iget v1, v1, La/a/b/c/d;->a:I

    iget-object v2, v6, La/a/b/f/z;->m:La/a/b/c/d;

    iget v2, v2, La/a/b/c/d;->a:I

    invoke-virtual {v6, v1, v2, v15}, La/a/b/f/z;->a(IILandroid/graphics/Rect;)V

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    iget v1, v1, La/a/b/c/d;->a:I

    invoke-virtual {v6, v7, v1, v15}, La/a/b/f/z;->a(IILandroid/graphics/Rect;)V

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v7, v1, v2}, La/a/b/f/f;->b(III)V

    iget-object v1, v6, La/a/b/f/z;->l:La/a/b/c/d;

    invoke-static {v1}, La/a/b/f/z$c;->a(La/a/b/c/d;)La/a/b/f/z$c;

    move-result-object v1

    iget-object v2, v6, La/a/b/f/z;->m:La/a/b/c/d;

    const/4 v3, 0x2

    new-instance v4, Landroid/graphics/RectF;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v4, v10, v10, v14, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v17, v5

    move/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, La/a/b/f/z;->a(La/a/b/f/z$c;La/a/b/c/d;ILandroid/graphics/RectF;I)V

    iget-object v0, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-virtual {v6, v0, v7, v15}, La/a/b/f/z;->b(IILandroid/graphics/Rect;)V

    iget-object v0, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v1, v0, La/a/b/c/d;->b:I

    iget v0, v0, La/a/b/c/d;->c:I

    invoke-static {v7, v1, v0}, La/a/b/f/f;->b(III)V

    iget-object v0, v6, La/a/b/f/z;->d:La/a/b/c/d;

    iget v1, v0, La/a/b/c/d;->a:I

    iget v2, v0, La/a/b/c/d;->b:I

    iget v0, v0, La/a/b/c/d;->c:I

    invoke-static {v1, v7, v2, v0}, La/a/b/f/f;->a(IIII)V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    move/from16 v0, v16

    move/from16 v5, v17

    const/4 v15, 0x1

    move/from16 v18, v14

    move v14, v9

    move/from16 v9, v18

    goto/16 :goto_2

    :cond_a
    move/from16 v17, v5

    move/from16 v18, v14

    move v14, v9

    move/from16 v9, v18

    add-int/lit8 v5, v17, 0x1

    const/4 v15, 0x1

    move/from16 v18, v14

    move v14, v9

    move/from16 v9, v18

    goto/16 :goto_1

    :cond_b
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a(La/a/b/b/a/a;La/a/b/c/d;)V
    .locals 1

    invoke-static {}, La/a/b/b/a/c;->l()La/a/b/b/a/c;

    move-result-object p0

    iget v0, p2, La/a/b/c/d;->a:I

    invoke-virtual {p0, v0}, La/a/b/b/a/c;->b(I)V

    invoke-static {}, La/a/b/f/r;->a()[F

    move-result-object v0

    invoke-virtual {p0, v0}, La/a/b/b/a/a;->a([F)V

    iget v0, p2, La/a/b/c/d;->b:I

    iget p2, p2, La/a/b/c/d;->c:I

    invoke-virtual {p0, v0, p2}, La/a/b/b/a/a;->c(II)V

    invoke-virtual {p0, p1}, La/a/b/b/a/c;->a(La/a/b/b/a/a;)V

    invoke-virtual {p0}, La/a/b/b/a/c;->s()V

    invoke-virtual {p1}, La/a/b/b/a/a;->draw()V

    invoke-virtual {p0}, La/a/b/b/a/c;->n()V

    return-void
.end method

.method public final a(La/a/b/c/d;)V
    .locals 0

    iget p0, p1, La/a/b/c/d;->a:I

    if-eqz p0, :cond_0

    invoke-static {p0}, La/a/b/f/f;->a(I)V

    iget p0, p1, La/a/b/c/d;->a:I

    invoke-static {p0}, La/a/b/c/g;->e(I)V

    :cond_0
    const/4 p0, 0x0

    iput p0, p1, La/a/b/c/d;->a:I

    return-void
.end method

.method public a(La/a/b/c/d;ILco/polarr/renderer/entities/MagicEraserPath;IIFFF)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    iget-object v3, v0, La/a/b/f/z;->d:La/a/b/c/d;

    iget v4, v3, La/a/b/c/d;->b:I

    iget v3, v3, La/a/b/c/d;->c:I

    invoke-static {p1, v4, v3}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    new-instance v3, La/a/b/b/bf;

    iget-object v4, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    iget-object v5, v0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v5}, La/a/b/b/bf;-><init>(Lco/polarr/renderer/entities/Context;Landroid/content/res/Resources;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, La/a/b/f/w;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v3, La/a/b/b/bf;->o:F

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, La/a/b/b/bf;->p:F

    const/4 v5, 0x4

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    iput-object v6, v3, La/a/b/b/bf;->q:[F

    invoke-static {}, La/a/b/b/a/c;->l()La/a/b/b/a/c;

    move-result-object v6

    iget v7, v1, La/a/b/c/d;->a:I

    invoke-virtual {v6, v7}, La/a/b/b/a/c;->b(I)V

    iget v7, v1, La/a/b/c/d;->b:I

    iget v8, v1, La/a/b/c/d;->c:I

    invoke-virtual {v6, v7, v8}, La/a/b/b/a/a;->c(II)V

    invoke-virtual {v6}, La/a/b/b/a/c;->s()V

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v8, 0x4000

    invoke-static {v8}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v8, v2, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v2, Lco/polarr/renderer/entities/MagicEraserPath;->radius:F

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v8, v10

    iput v8, v3, La/a/b/b/bf;->n:F

    iget-object v2, v2, Lco/polarr/renderer/entities/MagicEraserPath;->points:Ljava/util/List;

    invoke-virtual {p0, v2, v8}, La/a/b/f/z;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2, v9}, La/a/b/b/bf;->a(Ljava/util/List;Z)V

    :cond_0
    invoke-virtual {v6}, La/a/b/b/a/c;->n()V

    move v2, p4

    move/from16 v3, p5

    invoke-static {v9, v9, p4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v3, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v2, v3}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v2

    invoke-virtual {v2}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v3

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v3, v9, v4, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-virtual {v2}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v3

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-static {v3, v9, v8, v10, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    invoke-virtual {v2}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v3

    move/from16 v7, p8

    invoke-static {v3, v9, v7, v7, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    move v3, p2

    invoke-virtual {v2, p2}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {v2}, Lco/polarr/renderer/filters/Basic;->draw()V

    iget-object v2, v0, La/a/b/f/z;->r:La/a/b/b/x;

    if-nez v2, :cond_1

    new-instance v2, La/a/b/b/x;

    iget-object v3, v0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v7, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-direct {v2, v3, v7}, La/a/b/b/x;-><init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)V

    iput-object v2, v0, La/a/b/f/z;->r:La/a/b/b/x;

    iget-object v2, v0, La/a/b/f/z;->r:La/a/b/b/x;

    invoke-virtual {v2}, La/a/b/b/a/a;->a()V

    :cond_1
    iget-object v2, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    new-array v3, v5, [F

    fill-array-data v3, :array_1

    iput-object v3, v2, Lco/polarr/renderer/entities/Context;->overlayMask:[F

    iget-object v2, v0, La/a/b/f/z;->r:La/a/b/b/x;

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v2, La/a/b/b/x;->r:F

    iget v1, v1, La/a/b/c/d;->a:I

    invoke-virtual {v2, v1}, La/a/b/b/a/a;->a(I)V

    iget-object v1, v0, La/a/b/f/z;->r:La/a/b/b/x;

    invoke-virtual {v1}, La/a/b/b/a/a;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v9}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v1, v0, La/a/b/f/z;->r:La/a/b/b/x;

    invoke-virtual {v1}, La/a/b/b/a/a;->getMatrix()[F

    move-result-object v1

    invoke-static {v1, v9, v4, v6, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const v2, 0x8006

    invoke-static {v2}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, v0, La/a/b/f/z;->r:La/a/b/b/x;

    invoke-virtual {v0}, La/a/b/b/x;->draw()V

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final a(La/a/b/c/d;La/a/b/c/d;)V
    .locals 1

    iget p0, p2, La/a/b/c/d;->a:I

    iget v0, p1, La/a/b/c/d;->a:I

    iput v0, p2, La/a/b/c/d;->a:I

    iput p0, p1, La/a/b/c/d;->a:I

    iget p0, p2, La/a/b/c/d;->b:I

    iget v0, p1, La/a/b/c/d;->b:I

    iput v0, p2, La/a/b/c/d;->b:I

    iput p0, p1, La/a/b/c/d;->b:I

    iget p0, p2, La/a/b/c/d;->c:I

    iget v0, p1, La/a/b/c/d;->c:I

    iput v0, p2, La/a/b/c/d;->c:I

    iput p0, p1, La/a/b/c/d;->c:I

    return-void
.end method

.method public final a(La/a/b/f/z$b;La/a/b/f/z$d;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, La/a/b/f/z$d;->a:La/a/b/f/z$c;

    iget-object v4, v2, La/a/b/f/z$d;->b:La/a/b/c/d;

    iget-object v5, v2, La/a/b/f/z$d;->c:La/a/b/c/d;

    iget v6, v5, La/a/b/c/d;->b:I

    iget v7, v5, La/a/b/c/d;->c:I

    iget-object v8, v1, La/a/b/f/z$b;->f:La/a/b/c/d;

    const/16 v10, 0x8

    move v12, v10

    const/4 v11, 0x0

    move/from16 v10, p3

    :goto_0
    if-ge v11, v10, :cond_3

    iget-object v13, v0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v14, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v13, v14}, La/a/b/b/ah;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/ah;

    move-result-object v13

    :goto_1
    const/4 v14, 0x2

    if-lez v12, :cond_0

    const v15, 0x881a

    const/16 v9, 0x140b

    invoke-static {v8, v15, v9, v6, v7}, La/a/b/f/f;->a(La/a/b/c/d;IIII)V

    iget-object v9, v3, La/a/b/f/z$c;->g:[F

    iput-object v9, v13, La/a/b/b/ah;->z:[F

    iget v15, v3, La/a/b/c/d;->a:I

    iput v15, v13, La/a/b/b/ah;->s:I

    iget v15, v4, La/a/b/c/d;->a:I

    iput v15, v13, La/a/b/b/ah;->r:I

    iget v15, v5, La/a/b/c/d;->a:I

    iput v15, v13, La/a/b/b/ah;->t:I

    new-array v15, v14, [F

    iget v14, v3, La/a/b/c/d;->b:I

    int-to-float v14, v14

    const/16 v17, 0x0

    aput v14, v15, v17

    iget v14, v3, La/a/b/c/d;->c:I

    int-to-float v14, v14

    const/16 v16, 0x1

    aput v14, v15, v16

    iput-object v15, v13, La/a/b/b/ah;->u:[F

    const/4 v14, 0x2

    new-array v15, v14, [F

    iget v14, v4, La/a/b/c/d;->b:I

    int-to-float v14, v14

    aput v14, v15, v17

    iget v14, v4, La/a/b/c/d;->c:I

    int-to-float v14, v14

    aput v14, v15, v16

    iput-object v15, v13, La/a/b/b/ah;->v:[F

    const/4 v14, 0x2

    new-array v15, v14, [F

    iget v14, v5, La/a/b/c/d;->b:I

    int-to-float v14, v14

    aput v14, v15, v17

    iget v14, v5, La/a/b/c/d;->c:I

    int-to-float v14, v14

    aput v14, v15, v16

    iput-object v15, v13, La/a/b/b/ah;->w:[F

    iget-object v14, v1, La/a/b/f/z$b;->a:La/a/b/c/d;

    const/4 v15, 0x2

    new-array v15, v15, [F

    move/from16 v18, v6

    iget v6, v14, La/a/b/c/d;->b:I

    int-to-float v6, v6

    aput v6, v15, v17

    iget v6, v14, La/a/b/c/d;->c:I

    int-to-float v6, v6

    aput v6, v15, v16

    iput-object v15, v13, La/a/b/b/ah;->x:[F

    int-to-float v6, v12

    iput v6, v13, La/a/b/b/ah;->y:F

    invoke-virtual {v13, v9}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {v0, v13, v8}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    iget-object v6, v2, La/a/b/f/z$d;->c:La/a/b/c/d;

    invoke-virtual {v0, v6, v8}, La/a/b/f/z;->a(La/a/b/c/d;La/a/b/c/d;)V

    shr-int/lit8 v12, v12, 0x1

    move/from16 v6, v18

    goto :goto_1

    :cond_0
    move/from16 v18, v6

    iget-boolean v6, v0, La/a/b/f/z;->o:Z

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_1
    iget-object v6, v0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v9, v0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v6, v9}, La/a/b/b/j;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/j;

    move-result-object v6

    iget-object v9, v3, La/a/b/f/z$c;->g:[F

    iput-object v9, v6, La/a/b/b/j;->y:[F

    iget v9, v3, La/a/b/c/d;->a:I

    iput v9, v6, La/a/b/b/j;->s:I

    iget v9, v4, La/a/b/c/d;->a:I

    iput v9, v6, La/a/b/b/j;->r:I

    iget v9, v5, La/a/b/c/d;->a:I

    iput v9, v6, La/a/b/b/j;->t:I

    const/4 v9, 0x2

    new-array v13, v9, [F

    iget v14, v3, La/a/b/c/d;->b:I

    int-to-float v14, v14

    const/4 v15, 0x0

    aput v14, v13, v15

    iget v14, v3, La/a/b/c/d;->c:I

    int-to-float v14, v14

    const/16 v16, 0x1

    aput v14, v13, v16

    iput-object v13, v6, La/a/b/b/j;->u:[F

    new-array v13, v9, [F

    iget v14, v4, La/a/b/c/d;->b:I

    int-to-float v14, v14

    aput v14, v13, v15

    iget v14, v4, La/a/b/c/d;->c:I

    int-to-float v14, v14

    aput v14, v13, v16

    iput-object v13, v6, La/a/b/b/j;->v:[F

    iget-object v13, v1, La/a/b/f/z$b;->a:La/a/b/c/d;

    new-array v9, v9, [F

    iget v14, v13, La/a/b/c/d;->b:I

    int-to-float v14, v14

    aput v14, v9, v15

    iget v13, v13, La/a/b/c/d;->c:I

    int-to-float v13, v13

    aput v13, v9, v16

    iput-object v9, v6, La/a/b/b/j;->w:[F

    iget-boolean v9, v0, La/a/b/f/z;->i:Z

    if-eqz v9, :cond_2

    iget-object v9, v0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v9, v9, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget v13, v0, La/a/b/f/z;->j:I

    if-le v9, v13, :cond_2

    iget-object v9, v0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v9, v9, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    add-int/lit8 v14, v13, 0x1

    iput v14, v0, La/a/b/f/z;->j:I

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iput v9, v6, La/a/b/b/j;->x:F

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v9, v13

    iput v9, v6, La/a/b/b/j;->x:F

    iget-object v9, v0, La/a/b/f/z;->h:Lco/polarr/renderer/entities/MagicEraserHistoryItem;

    iget-object v9, v9, Lco/polarr/renderer/entities/MagicEraserHistoryItem;->randomLists:Ljava/util/List;

    iget v13, v6, La/a/b/b/j;->x:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v9, v3, La/a/b/f/z$c;->g:[F

    invoke-virtual {v6, v9}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {v0, v6, v8}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    iget-object v6, v2, La/a/b/f/z$d;->c:La/a/b/c/d;

    invoke-virtual {v0, v6, v8}, La/a/b/f/z;->a(La/a/b/c/d;La/a/b/c/d;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v18

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public final a(La/a/b/f/z$b;La/a/b/f/z$d;La/a/b/f/z$c;La/a/b/c/d;)V
    .locals 6

    iget-object v0, p1, La/a/b/f/z$b;->e:La/a/b/c/d;

    iget-object p2, p2, La/a/b/f/z$d;->c:La/a/b/c/d;

    iget v1, p3, La/a/b/f/z$c;->e:I

    iget v2, p3, La/a/b/f/z$c;->f:I

    invoke-static {v0, v1, v2}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, La/a/b/b/bi;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)La/a/b/b/bi;

    move-result-object v1

    iget-object v2, p3, La/a/b/f/z$c;->g:[F

    iput-object v2, v1, La/a/b/b/bi;->w:[F

    iget p2, p2, La/a/b/c/d;->a:I

    iput p2, v1, La/a/b/b/bi;->t:I

    iget p2, p3, La/a/b/c/d;->a:I

    iput p2, v1, La/a/b/b/bi;->s:I

    iget p2, p4, La/a/b/c/d;->a:I

    iput p2, v1, La/a/b/b/bi;->r:I

    const/4 p2, 0x2

    new-array p3, p2, [F

    iget v3, p4, La/a/b/c/d;->b:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, p3, v4

    iget v3, p4, La/a/b/c/d;->c:I

    int-to-float v3, v3

    const/4 v5, 0x1

    aput v3, p3, v5

    iput-object p3, v1, La/a/b/b/bi;->u:[F

    iget-object p1, p1, La/a/b/f/z$b;->a:La/a/b/c/d;

    new-array p2, p2, [F

    iget p3, p1, La/a/b/c/d;->b:I

    int-to-float p3, p3

    aput p3, p2, v4

    iget p1, p1, La/a/b/c/d;->c:I

    int-to-float p1, p1

    aput p1, p2, v5

    iput-object p2, v1, La/a/b/b/bi;->v:[F

    invoke-virtual {v1, v2}, La/a/b/b/a/a;->a([F)V

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    invoke-virtual {p0, p4, v0}, La/a/b/f/z;->a(La/a/b/c/d;La/a/b/c/d;)V

    return-void
.end method

.method public final a(La/a/b/f/z$c;La/a/b/c/d;ILandroid/graphics/RectF;I)V
    .locals 10

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    new-instance v0, La/a/b/f/z$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La/a/b/f/z$b;-><init>(La/a/b/f/z;La/a/b/f/z$a;)V

    iput-object p1, v0, La/a/b/f/z$b;->a:La/a/b/c/d;

    iput-object p4, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    iput-object v1, v0, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    const/4 p4, 0x1

    invoke-virtual {p0, p4, p4}, La/a/b/f/z;->b(II)La/a/b/c/d;

    move-result-object v2

    iput-object v2, v0, La/a/b/f/z$b;->e:La/a/b/c/d;

    iget-object v2, p0, La/a/b/f/z;->k:La/a/b/c/d;

    iput-object v2, v0, La/a/b/f/z$b;->f:La/a/b/c/d;

    const/4 v2, 0x0

    iput-boolean v2, p0, La/a/b/f/z;->o:Z

    iget-object v3, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v6, p0, La/a/b/f/z;->l:La/a/b/c/d;

    mul-float/2addr v3, v5

    iget v5, v6, La/a/b/c/d;->c:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    iget v5, v6, La/a/b/c/d;->b:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pixels:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POLARR_SDK"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x4b189680    # 1.0E7f

    cmpl-float v5, v3, v5

    const/4 v6, 0x3

    if-lez v5, :cond_0

    iput-boolean p4, p0, La/a/b/f/z;->o:Z

    move p4, v6

    goto :goto_0

    :cond_0
    const v5, 0x49f42400    # 2000000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    iput-boolean p4, p0, La/a/b/f/z;->o:Z

    const/4 p4, 0x2

    goto :goto_0

    :cond_1
    const v5, 0x49742400    # 1000000.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    iput-boolean p4, p0, La/a/b/f/z;->o:Z

    goto :goto_0

    :cond_2
    const v5, 0x48f42400    # 500000.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    iput-boolean p4, p0, La/a/b/f/z;->o:Z

    :cond_3
    move p4, v2

    :goto_0
    iget-boolean v3, p0, La/a/b/f/z;->o:Z

    if-eqz v3, :cond_4

    iget v3, p0, La/a/b/f/z;->p:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, La/a/b/f/z;->p:I

    iget v3, p0, La/a/b/f/z;->p:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, La/a/b/f/z;->p:I

    iget v3, p0, La/a/b/f/z;->p:I

    add-int/2addr p4, v3

    :cond_4
    iget p2, p2, La/a/b/c/d;->a:I

    invoke-virtual {p0, p1, p2}, La/a/b/f/z;->a(La/a/b/c/d;I)La/a/b/c/d;

    move-result-object p2

    invoke-static {p2}, La/a/b/f/z$c;->a(La/a/b/c/d;)La/a/b/f/z$c;

    move-result-object p2

    iget-object v3, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v3, p2, La/a/b/c/d;->b:I

    int-to-float v3, v3

    iget-object v5, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v5, p3, 0x2

    add-int/2addr v3, v5

    iget v7, p2, La/a/b/c/d;->b:I

    invoke-virtual {p0, v3, v2, v7}, La/a/b/f/z;->a(III)I

    move-result v3

    iput v3, p2, La/a/b/f/z$c;->e:I

    iget v3, p2, La/a/b/c/d;->c:I

    int-to-float v3, v3

    iget-object v7, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, La/a/b/c/d;->c:I

    invoke-virtual {p0, v3, v2, v7}, La/a/b/f/z;->a(III)I

    move-result v3

    iput v3, p2, La/a/b/f/z$c;->f:I

    iget-object v3, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    iget v7, p2, La/a/b/c/d;->b:I

    int-to-float v7, v7

    iget v8, p2, La/a/b/c/d;->c:I

    int-to-float v8, v8

    int-to-float v9, p3

    invoke-static {v3, v7, v8, v9}, La/a/b/f/z;->a(Landroid/graphics/RectF;FFF)[F

    move-result-object v3

    iput-object v3, p2, La/a/b/f/z$c;->g:[F

    :goto_1
    iget v3, p2, La/a/b/f/z$c;->e:I

    if-le v3, p3, :cond_5

    iget v3, p2, La/a/b/f/z$c;->f:I

    if-le v3, p3, :cond_5

    invoke-virtual {p0, p2}, La/a/b/f/z;->b(La/a/b/c/d;)La/a/b/c/d;

    move-result-object p2

    invoke-static {p2}, La/a/b/f/z$c;->a(La/a/b/c/d;)La/a/b/f/z$c;

    move-result-object p2

    iget v3, p2, La/a/b/c/d;->b:I

    int-to-float v3, v3

    iget-object v7, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, La/a/b/c/d;->b:I

    invoke-virtual {p0, v3, v2, v7}, La/a/b/f/z;->a(III)I

    move-result v3

    iput v3, p2, La/a/b/f/z$c;->e:I

    iget v3, p2, La/a/b/c/d;->c:I

    int-to-float v3, v3

    iget-object v7, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v5

    iget v7, p2, La/a/b/c/d;->c:I

    invoke-virtual {p0, v3, v2, v7}, La/a/b/f/z;->a(III)I

    move-result v3

    iput v3, p2, La/a/b/f/z$c;->f:I

    iget-object v3, v0, La/a/b/f/z$b;->d:Landroid/graphics/RectF;

    iget v7, p2, La/a/b/c/d;->b:I

    int-to-float v7, v7

    iget v8, p2, La/a/b/c/d;->c:I

    int-to-float v8, v8

    invoke-static {v3, v7, v8, v9}, La/a/b/f/z;->a(Landroid/graphics/RectF;FFF)[F

    move-result-object v3

    iput-object v3, p2, La/a/b/f/z$c;->g:[F

    iget-object v3, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p2, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    move p3, p2

    :goto_2
    if-lt p3, p4, :cond_8

    iget-object v3, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/a/b/f/z$c;

    if-ne p3, p2, :cond_6

    invoke-virtual {p0, v3}, La/a/b/f/z;->a(La/a/b/f/z$c;)La/a/b/c/d;

    move-result-object v1

    iget-object v5, p0, La/a/b/f/z;->n:La/a/b/c/d;

    invoke-virtual {p0, v0, v5, v1, v3}, La/a/b/f/z;->a(La/a/b/f/z$b;La/a/b/c/d;La/a/b/c/d;La/a/b/f/z$c;)La/a/b/f/z$d;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v5, v0, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    invoke-virtual {p0, v0, v5, v1, v3}, La/a/b/f/z;->a(La/a/b/f/z$b;La/a/b/f/z$d;La/a/b/c/d;La/a/b/f/z$c;)La/a/b/f/z$d;

    move-result-object v1

    :goto_3
    iput-object v1, v0, La/a/b/f/z$b;->b:La/a/b/f/z$d;

    invoke-virtual {p0, v0, p3}, La/a/b/f/z;->a(La/a/b/f/z$b;I)La/a/b/c/d;

    move-result-object v1

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    if-ne p3, p4, :cond_7

    iget-object v5, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v6, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v5, v6}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v5

    invoke-virtual {v5, v2}, Lco/polarr/renderer/filters/Basic;->setNeedClear(Z)V

    invoke-static {}, La/a/b/b/a/c;->l()La/a/b/b/a/c;

    move-result-object v6

    invoke-virtual {v6, p5}, La/a/b/b/a/c;->b(I)V

    iget v7, p1, La/a/b/c/d;->b:I

    iget v8, p1, La/a/b/c/d;->c:I

    invoke-virtual {v6, v7, v8}, La/a/b/b/a/a;->c(II)V

    invoke-virtual {v6}, La/a/b/b/a/c;->s()V

    const/4 v7, 0x0

    invoke-static {v7, v7, v7, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v7, 0x4000

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    iget v7, v3, La/a/b/c/d;->a:I

    invoke-virtual {v5, v7}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->draw()V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->getMatrix()[F

    move-result-object v7

    iget-object v3, v3, La/a/b/f/z$c;->g:[F

    invoke-static {v7, v2, v3, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    iget v3, v1, La/a/b/c/d;->a:I

    invoke-virtual {v5, v3}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {v5}, Lco/polarr/renderer/filters/Basic;->draw()V

    invoke-virtual {v6}, La/a/b/b/a/c;->n()V

    iget-object v3, v0, La/a/b/f/z$b;->e:La/a/b/c/d;

    invoke-virtual {p0, v3}, La/a/b/f/z;->a(La/a/b/c/d;)V

    iget-object v3, v0, La/a/b/f/z$b;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La/a/b/c/d;

    invoke-virtual {p0, v5}, La/a/b/f/z;->a(La/a/b/c/d;)V

    goto :goto_4

    :cond_7
    add-int/lit8 p3, p3, -0x1

    goto/16 :goto_2

    :cond_8
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    return-void
.end method

.method public a(Ljava/util/List;Landroid/graphics/PointF;F)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/PointF;",
            "F)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, La/a/b/f/z;->d:La/a/b/c/d;

    iget v2, v1, La/a/b/c/d;->b:I

    iget v1, v1, La/a/b/c/d;->c:I

    const/4 v3, 0x2

    new-array v4, v3, [F

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    const/4 v7, 0x0

    aput v6, v4, v7

    int-to-float v1, v1

    div-float v6, v5, v1

    const/4 v8, 0x1

    aput v6, v4, v8

    const/4 v6, 0x3

    new-array v9, v6, [F

    iget v10, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v2

    aput v10, v9, v7

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p2

    mul-float/2addr v5, v1

    aput v5, v9, v8

    const/high16 p2, 0x3f000000    # 0.5f

    aput p2, v9, v3

    iget-object p2, p0, La/a/b/f/z;->q:[F

    if-nez p2, :cond_0

    new-array p2, v6, [F

    aget p3, v9, v7

    aput p3, p2, v7

    aget p3, v9, v8

    aput p3, p2, v8

    aget p3, v9, v3

    aput p3, p2, v3

    iput-object p2, p0, La/a/b/f/z;->q:[F

    aget p0, v9, v7

    aget p2, v4, v7

    mul-float/2addr p0, p2

    aput p0, v9, v7

    aget p0, v9, v8

    aget p2, v4, v8

    mul-float/2addr p0, p2

    aput p0, v9, v8

    aget p0, v9, v7

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget p0, v9, v8

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget p0, v9, v3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    const p2, 0x3e99999a    # 0.3f

    mul-float/2addr p3, p2

    aget p2, v9, v3

    mul-float/2addr p3, p2

    float-to-int p2, p3

    if-ge p2, v8, :cond_1

    move p2, v8

    :cond_1
    iget-object p3, p0, La/a/b/f/z;->q:[F

    invoke-static {v9, p3}, La/a/b/f/r;->a([F[F)F

    move-result p3

    int-to-float v1, p2

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    :goto_0
    int-to-float v5, v2

    cmpg-float v10, v5, p3

    if-gtz v10, :cond_2

    :try_start_0
    iget-object v10, p0, La/a/b/f/z;->q:[F

    div-float/2addr v5, p3

    invoke-static {v10, v9, v5, v0}, La/a/b/f/r;->a([F[FF[F)V

    aget v5, v0, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v5, v0, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, p2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p3, p2, -0x3

    new-array v0, v6, [F

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v7

    add-int/lit8 v2, p3, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v8

    add-int/2addr p3, v3

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    aput p3, v0, v3

    iput-object v0, p0, La/a/b/f/z;->q:[F

    move p0, v7

    :goto_1
    if-ge p0, p2, :cond_3

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    aget v0, v4, v7

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {v1, p0, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p3, p0, 0x1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aget v2, v4, v8

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v1, p3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public final b(II)La/a/b/c/d;
    .locals 6

    const/4 p0, 0x1

    new-array p0, p0, [I

    array-length v0, p0

    const/4 v2, 0x0

    const/16 v3, 0x1908

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, La/a/b/f/f;->a(I[IIIII)V

    const/4 v0, 0x0

    aget p0, p0, v0

    const/16 v0, 0x1908

    invoke-static {p0, v0, p1, p2}, La/a/b/f/f;->b(IIII)La/a/b/c/d;

    move-result-object p0

    return-object p0
.end method

.method public final b(La/a/b/c/d;)La/a/b/c/d;
    .locals 3

    iget v0, p1, La/a/b/c/d;->b:I

    shr-int/lit8 v0, v0, 0x1

    iget v1, p1, La/a/b/c/d;->c:I

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, La/a/b/f/z;->b(II)La/a/b/c/d;

    move-result-object v0

    iget-object v1, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v2, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v1, v2}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v1

    iget p1, p1, La/a/b/c/d;->a:I

    invoke-virtual {v1, p1}, La/a/b/b/a/a;->a(I)V

    invoke-virtual {p0, v1, v0}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    return-object v0
.end method

.method public b()V
    .locals 0

    invoke-static {}, La/a/b/b/t;->m()V

    invoke-static {}, La/a/b/b/n;->m()V

    invoke-static {}, La/a/b/b/bi;->m()V

    invoke-static {}, La/a/b/b/ah;->m()V

    invoke-static {}, La/a/b/b/j;->m()V

    invoke-static {}, La/a/b/b/o;->m()V

    invoke-static {}, La/a/b/b/aq;->m()V

    return-void
.end method

.method public b(IIII)V
    .locals 0

    iput p4, p0, La/a/b/f/z;->p:I

    iget-object p4, p0, La/a/b/f/z;->d:La/a/b/c/d;

    invoke-static {p4, p2, p3}, La/a/b/f/f;->b(La/a/b/c/d;II)V

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, La/a/b/f/z;->c(II)V

    return-void
.end method

.method public b(IILandroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2, p3}, La/a/b/f/f;->b(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public c(II)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, La/a/b/f/z;->a:Landroid/content/res/Resources;

    iget-object v1, p0, La/a/b/f/z;->b:Lco/polarr/renderer/entities/Context;

    invoke-static {v0, v1}, Lco/polarr/renderer/filters/Basic;->a(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;)Lco/polarr/renderer/filters/Basic;

    move-result-object v0

    invoke-virtual {v0, p1}, La/a/b/b/a/a;->a(I)V

    iget-object p1, p0, La/a/b/f/z;->d:La/a/b/c/d;

    invoke-virtual {p0, v0, p1}, La/a/b/f/z;->a(La/a/b/b/a/a;La/a/b/c/d;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, -0x1

    iput p1, p0, La/a/b/f/z;->g:I

    invoke-virtual {p0, p2}, La/a/b/f/z;->a(I)V

    :cond_1
    iget-object p1, p0, La/a/b/f/z;->e:[La/a/b/c/d;

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, La/a/b/f/z;->a(La/a/b/c/d;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move p1, v0

    :goto_1
    iget p2, p0, La/a/b/f/z;->c:I

    if-ge p1, p2, :cond_4

    iget-object p2, p0, La/a/b/f/z;->e:[La/a/b/c/d;

    const/4 v1, 0x0

    aput-object v1, p2, p1

    iget-object p2, p0, La/a/b/f/z;->f:[[F

    aput-object v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iput v0, p0, La/a/b/f/z;->g:I

    return-void
.end method
