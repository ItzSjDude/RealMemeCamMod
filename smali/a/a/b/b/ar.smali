.class public La/a/b/b/ar;
.super La/a/b/b/a/b;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/b/b/ar$a;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public final C:[F

.field public final D:[F

.field public final E:[F

.field public F:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:La/a/b/f/e;

.field public u:Z

.field public v:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "La/a/b/b/ar$a;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/Random;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lco/polarr/renderer/entities/Context;La/a/b/b/ar$a;)V
    .locals 2

    const-string v0, "glitch"

    invoke-static {v0}, La/a/b/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, La/a/b/b/a/b;-><init>(Landroid/content/res/Resources;Ljava/lang/String;Lco/polarr/renderer/entities/Context;)V

    new-instance p1, Ljava/util/Random;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object p1, p0, La/a/b/b/ar;->w:Ljava/util/Random;

    const/4 p1, 0x3

    iput p1, p0, La/a/b/b/ar;->x:I

    const/4 p2, 0x0

    iput p2, p0, La/a/b/b/ar;->y:I

    iput p2, p0, La/a/b/b/ar;->z:I

    iput p2, p0, La/a/b/b/ar;->A:I

    iput p2, p0, La/a/b/b/ar;->B:I

    const/16 v0, 0x400

    new-array v1, v0, [F

    iput-object v1, p0, La/a/b/b/ar;->C:[F

    new-array v0, v0, [F

    iput-object v0, p0, La/a/b/b/ar;->D:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, La/a/b/b/ar;->E:[F

    iput-boolean p2, p0, La/a/b/b/ar;->F:Z

    const/16 v0, 0xa

    iput v0, p0, La/a/b/b/ar;->q:I

    const/4 v0, 0x1

    iput v0, p0, La/a/b/b/ar;->r:I

    iput v0, p0, La/a/b/b/ar;->s:I

    new-instance v0, La/a/b/f/e;

    invoke-direct {v0, p1}, La/a/b/f/e;-><init>(I)V

    iput-object v0, p0, La/a/b/b/ar;->t:La/a/b/f/e;

    iput-boolean p2, p0, La/a/b/b/ar;->u:Z

    const/4 p1, 0x0

    iput-object p1, p0, La/a/b/b/ar;->v:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, La/a/b/b/ar;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, La/a/b/b/ar;->n()V

    return-void

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x3f333333    # 0.7f
        0x3f333333    # 0.7f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, La/a/b/b/ar;->F:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, La/a/b/b/ar;->F:Z

    invoke-virtual {p0}, La/a/b/b/ar;->n()V

    :cond_0
    return-void
.end method

.method public final a([[F[[F)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x10

    if-ge v1, v4, :cond_1

    move v5, v3

    move v3, v2

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_0

    mul-int/lit8 v6, v2, 0x4

    iget-object v7, p0, La/a/b/b/ar;->C:[F

    add-int/lit8 v8, v5, 0x1

    aget-object v9, p1, v1

    aget v9, v9, v6

    aput v9, v7, v5

    add-int/lit8 v5, v8, 0x1

    aget-object v9, p1, v1

    add-int/lit8 v10, v6, 0x1

    aget v9, v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v5, 0x1

    aget-object v9, p1, v1

    add-int/lit8 v10, v6, 0x2

    aget v9, v9, v10

    aput v9, v7, v5

    add-int/lit8 v5, v8, 0x1

    aget-object v9, p1, v1

    add-int/lit8 v6, v6, 0x3

    aget v6, v9, v6

    aput v6, v7, v8

    mul-int/lit8 v6, v2, 0x2

    iget-object v7, p0, La/a/b/b/ar;->D:[F

    add-int/lit8 v8, v3, 0x1

    aget-object v9, p2, v1

    aget v9, v9, v6

    aput v9, v7, v3

    add-int/lit8 v3, v8, 0x1

    aget-object v9, p2, v1

    add-int/lit8 v6, v6, 0x1

    aget v6, v9, v6

    aput v6, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, La/a/b/b/ar;->u:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, La/a/b/b/ar;->u:Z

    and-int/lit8 v1, p1, 0xf

    iput v1, p0, La/a/b/b/ar;->z:I

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, La/a/b/b/ar;->y:I

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, La/a/b/b/ar;->B:I

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, La/a/b/b/ar;->A:I

    shr-int/lit8 p1, p1, 0x10

    and-int/lit8 p1, p1, 0xf

    iput p1, p0, La/a/b/b/ar;->s:I

    iget p1, p0, La/a/b/b/ar;->s:I

    if-nez p1, :cond_1

    :goto_0
    iput-boolean v0, p0, La/a/b/b/ar;->u:Z

    iput v0, p0, La/a/b/b/ar;->x:I

    :cond_1
    return-void
.end method

.method public final b(III)[F
    .locals 6

    rem-int/lit8 p1, p1, 0x10

    mul-int/lit8 v0, p1, 0x10

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, p3, 0x2

    new-array v1, v1, [F

    rem-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    iget-object v4, p0, La/a/b/b/ar;->D:[F

    aget v5, v4, p2

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, p2, 0x1

    aget v4, v4, v5

    aput v4, v1, v3

    add-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, v0

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    rem-int/2addr p2, v3

    add-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final c(III)[F
    .locals 7

    rem-int/lit8 p1, p1, 0x10

    mul-int/lit8 v0, p1, 0x10

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, p3, 0x4

    new-array v1, v1, [F

    rem-int/lit8 p2, p2, 0x10

    mul-int/lit8 p2, p2, 0x4

    add-int/2addr p2, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    iget-object v4, p0, La/a/b/b/ar;->C:[F

    aget v5, v4, p2

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, p2, 0x1

    aget v6, v4, v6

    aput v6, v1, v5

    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, p2, 0x2

    aget v6, v4, v6

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v5, p2, 0x3

    aget v4, v4, v5

    aput v4, v1, v3

    add-int/lit8 p2, p2, 0x4

    sub-int/2addr p2, v0

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v3, v3, 0x10

    mul-int/lit8 v3, v3, 0x4

    sub-int/2addr v3, v0

    rem-int/2addr p2, v3

    add-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d(II)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    iput v1, p0, La/a/b/b/ar;->r:I

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, La/a/b/b/ar;->r:I

    :goto_0
    if-gtz p2, :cond_1

    const/16 p1, 0xa

    goto :goto_1

    :cond_1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    iput p1, p0, La/a/b/b/ar;->q:I

    iget p1, p0, La/a/b/b/ar;->r:I

    iget p2, p0, La/a/b/b/ar;->q:I

    if-le p1, p2, :cond_2

    iput p2, p0, La/a/b/b/ar;->r:I

    :cond_2
    return-void
.end method

.method public draw()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/ar;->m()V

    invoke-super {p0}, La/a/b/b/a/a;->draw()V

    return-void
.end method

.method public j()V
    .locals 9

    invoke-super {p0}, La/a/b/b/a/b;->j()V

    const/4 v0, 0x1

    const-string v1, "glitchEnabled"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget-object v1, p0, La/a/b/b/a/a;->a:Lco/polarr/renderer/entities/Context;

    invoke-static {v1}, La/a/b/f/h;->b(Lco/polarr/renderer/entities/Context;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v1, v2

    aget v1, v1, v0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, La/a/b/b/ar;->a(Z)V

    iget-object v1, p0, La/a/b/b/ar;->E:[F

    aget v5, v1, v2

    aget v6, v1, v0

    const/4 v0, 0x2

    aget v7, v1, v0

    const/4 v0, 0x3

    aget v8, v1, v0

    const-string v4, "forbiddenZone"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, La/a/b/b/a/a;->a(Ljava/lang/String;FFFF)V

    iget v0, p0, La/a/b/b/ar;->s:I

    const-string v1, "glitch_count"

    invoke-virtual {p0, v1, v0}, La/a/b/b/a/a;->a(Ljava/lang/String;I)V

    iget v0, p0, La/a/b/b/ar;->z:I

    iget v1, p0, La/a/b/b/ar;->y:I

    const/16 v3, 0x10

    invoke-virtual {p0, v0, v1, v3}, La/a/b/b/ar;->c(III)[F

    move-result-object v0

    iget v1, p0, La/a/b/b/ar;->B:I

    iget v4, p0, La/a/b/b/ar;->A:I

    invoke-virtual {p0, v1, v4, v3}, La/a/b/b/ar;->b(III)[F

    move-result-object v1

    const-string v4, "rects"

    invoke-virtual {p0, v4, v0, v2, v3}, La/a/b/b/a/a;->b(Ljava/lang/String;[FII)V

    const-string v0, "offsets"

    invoke-virtual {p0, v0, v1, v2, v3}, La/a/b/b/a/a;->a(Ljava/lang/String;[FII)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-boolean v0, p0, La/a/b/b/ar;->u:Z

    if-nez v0, :cond_2

    iget v0, p0, La/a/b/b/ar;->x:I

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/b/b/ar;->w:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/b/b/ar;->z:I

    iget-object v0, p0, La/a/b/b/ar;->w:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/b/b/ar;->B:I

    iget-object v0, p0, La/a/b/b/ar;->w:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/b/b/ar;->y:I

    iget-object v0, p0, La/a/b/b/ar;->w:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, La/a/b/b/ar;->A:I

    iget-object v0, p0, La/a/b/b/ar;->t:La/a/b/f/e;

    invoke-virtual {v0}, La/a/b/f/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, La/a/b/b/ar;->q:I

    goto :goto_0

    :cond_0
    iget v0, p0, La/a/b/b/ar;->r:I

    :goto_0
    iput v0, p0, La/a/b/b/ar;->s:I

    :cond_1
    iget v0, p0, La/a/b/b/ar;->x:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    iput v0, p0, La/a/b/b/ar;->x:I

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, La/a/b/b/ar;->v:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/b/b/ar$a;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, La/a/b/b/ar;->F:Z

    invoke-interface {v0, v1}, La/a/b/b/ar$a;->a(Z)[[F

    move-result-object v1

    iget-boolean v2, p0, La/a/b/b/ar;->F:Z

    invoke-interface {v0, v2}, La/a/b/b/ar$a;->b(Z)[[F

    move-result-object v0

    invoke-virtual {p0, v1, v0}, La/a/b/b/ar;->a([[F[[F)V

    :cond_0
    return-void
.end method

.method public o()I
    .locals 2

    iget v0, p0, La/a/b/b/ar;->z:I

    iget v1, p0, La/a/b/b/ar;->y:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, La/a/b/b/ar;->B:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, La/a/b/b/ar;->A:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iget p0, p0, La/a/b/b/ar;->s:I

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method public p()V
    .locals 0

    invoke-virtual {p0}, La/a/b/b/ar;->n()V

    return-void
.end method
