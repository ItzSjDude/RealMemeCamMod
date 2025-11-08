.class public Lcom/oplus/camera/ui/preview/a/u;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/t;


# instance fields
.field private volatile a:Z

.field private volatile b:Z

.field private volatile c:Z

.field private d:I

.field private e:I

.field private f:[F

.field private g:[F

.field private h:Lcom/oplus/camera/gl/GLRootView;

.field private i:Lcom/oplus/camera/ui/preview/a/t$a;

.field private j:Lcom/oplus/camera/gl/t;

.field private k:Lcom/oplus/camera/ui/preview/a/aa;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/ui/preview/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/oplus/camera/ui/preview/a/y$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/u;->a:Z

    .line 41
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/u;->b:Z

    .line 42
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/u;->c:Z

    .line 43
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/u;->d:I

    .line 44
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/u;->e:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    .line 46
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    .line 48
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    .line 49
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    .line 50
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    .line 51
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    .line 52
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    .line 56
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$1;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->o:Lcom/oplus/camera/ui/preview/a/y$b;

    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    const/16 v2, 0xfff

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/oplus/camera/ui/preview/a/z;->a(Landroid/content/Context;I)Lcom/oplus/camera/ui/preview/a/y;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 142
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/u;->o:Lcom/oplus/camera/ui/preview/a/y$b;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$b;)V

    .line 143
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v0, 0x1

    shr-int v0, v2, v0

    if-nez v0, :cond_1

    .line 148
    new-instance p1, Lcom/oplus/camera/ui/preview/a/aa;

    invoke-direct {p1}, Lcom/oplus/camera/ui/preview/a/aa;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    .line 150
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    invoke-virtual {p1, v1, v0, v1}, Landroid/renderscript/Matrix4f;->scale(FFF)V

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p1, v1, v0, v1}, Landroid/renderscript/Matrix4f;->translate(FFF)V

    .line 153
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/oplus/camera/gl/h;ILcom/oplus/camera/gl/s;)Lcom/oplus/camera/gl/s;
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    .line 1474
    iget v1, v0, Lcom/oplus/camera/gl/s;->a:I

    iget v2, v0, Lcom/oplus/camera/gl/s;->b:I

    invoke-virtual {p3, v1, v2}, Lcom/oplus/camera/gl/s;->a(II)V

    .line 1475
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p2, p3}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/s;)V

    .line 1477
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->n()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1478
    invoke-virtual {p3, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 1481
    :cond_0
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object p1

    if-nez p1, :cond_1

    const/16 p1, 0x10

    .line 1482
    new-array p1, p1, [F

    invoke-virtual {v0, p1}, Lcom/oplus/camera/gl/s;->a([F)V

    .line 1485
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->t()[F

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/t;->a([F)V

    .line 1487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "swapTexture, inTexture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outTexture: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewEffectProcessImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1493
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;
    .locals 8

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1502
    :cond_0
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1503
    invoke-virtual {p3, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 1506
    :cond_1
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v6

    .line 1507
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v7

    .line 1508
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    if-eqz p5, :cond_2

    .line 1511
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    :cond_2
    const/4 p5, 0x0

    int-to-float v0, v7

    .line 1514
    invoke-interface {p1, p5, v0}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 p5, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1515
    invoke-interface {p1, v0, p5, v0}, Lcom/oplus/camera/gl/h;->a(FFF)V

    .line 1517
    iget-object p5, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {p5, v0}, Lcom/oplus/camera/gl/t;->a([F)V

    if-eqz p4, :cond_3

    goto :goto_0

    .line 1518
    :cond_3
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    :goto_0
    move-object v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 1519
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-object p3
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    return-object p0
.end method

.method private a(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 1574
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;IIII[FZ)V
    .locals 8

    const/4 v0, 0x2

    .line 2202
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p7, :cond_0

    .line 2203
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    const/4 v7, 0x1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIIIZ)V

    goto :goto_0

    .line 2205
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/u;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/u;->m(I)V

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;II[F)Z
    .locals 1

    .line 1972
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object p4

    .line 1973
    iput-object p1, p4, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 1974
    iput p2, p4, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    .line 1975
    iput p3, p4, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    .line 1976
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, p4}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 7

    .line 1526
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v0, 0x0

    .line 1528
    invoke-direct {p0, p1, p2, p7, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 1530
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1531
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_0
    return p7
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 7

    .line 1562
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1564
    invoke-direct {p0, p1, p2, p7, p8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 1566
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1567
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_0
    return p7
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FLcom/oplus/camera/aps/util/CameraApsResult;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    .line 2273
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2274
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v7

    .line 2275
    iput-object v1, v7, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    move v5, p5

    .line 2276
    iput v5, v7, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    move/from16 v6, p6

    .line 2277
    iput v6, v7, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    move-object/from16 v2, p8

    .line 2278
    iput-object v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->e:Lcom/oplus/camera/aps/util/CameraApsResult;

    .line 2279
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2, v7}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result v8

    .line 2280
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2282
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2283
    iget-boolean v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->f:Z

    if-eqz v2, :cond_0

    .line 2284
    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/y$a;->d:Lcom/oplus/camera/gl/s;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    .line 2286
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->j(Lcom/oplus/camera/gl/h;IIII[F)V

    .line 2290
    :cond_1
    :goto_0
    iget-boolean v0, v7, Lcom/oplus/camera/ui/preview/a/y$a;->f:Z

    if-nez v0, :cond_3

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FZ)Z
    .locals 10

    move-object v7, p0

    .line 1549
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    move-object v8, p1

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p7

    .line 1551
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1553
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1554
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[FZ)V

    :cond_0
    return v9
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z
    .locals 3

    .line 1659
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 1660
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 1661
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    .line 1664
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1665
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p3

    .line 1664
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1666
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1668
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1669
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p3

    .line 1668
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1670
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 1672
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1673
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p3

    .line 1672
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1674
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    .line 1676
    :cond_2
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1677
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z
    .locals 2

    .line 1954
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 1957
    iput-object p6, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1958
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 1960
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1961
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    .line 1963
    :cond_1
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1964
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1965
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z
    .locals 2

    .line 1630
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1631
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object p1

    .line 1632
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p2

    iput-object p2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1633
    iput p4, p1, Lcom/oplus/camera/ui/preview/a/y$a;->n:I

    .line 1634
    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/a/u;->c:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/a/u;->b:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Lcom/oplus/camera/ui/preview/a/y$a;->h:Z

    .line 1635
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z
    .locals 2

    .line 1919
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 1920
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    if-eqz p4, :cond_0

    .line 1923
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1924
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    .line 1926
    :cond_0
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1927
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1928
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[F[FIIIIZZZZZZI)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1580
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v3, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1581
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v3

    .line 1582
    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 1583
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object v5

    iput-object v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1584
    iput-object v2, v3, Lcom/oplus/camera/ui/preview/a/y$a;->b:Lcom/oplus/camera/gl/g;

    move-object v5, p4

    .line 1585
    iput-object v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->i:[F

    move v5, p7

    .line 1586
    iput v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    move v5, p8

    .line 1587
    iput v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    move v5, p5

    .line 1588
    iput v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->l:I

    move v5, p6

    .line 1589
    iput v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->m:I

    move/from16 v5, p15

    .line 1590
    iput v5, v3, Lcom/oplus/camera/ui/preview/a/y$a;->o:I

    if-eqz p10, :cond_0

    .line 1593
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto/16 :goto_0

    :cond_0
    if-eqz p9, :cond_2

    .line 1594
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    .line 1595
    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/aa;->g()F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/aa;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1596
    :cond_1
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    :cond_2
    if-eqz p12, :cond_3

    .line 1598
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    :cond_3
    if-eqz p13, :cond_4

    .line 1600
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    :cond_4
    if-eqz p11, :cond_5

    .line 1602
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    :cond_5
    if-eqz p14, :cond_6

    .line 1604
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v3, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    .line 1606
    :cond_6
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object v5

    move-object v6, p3

    invoke-direct {p0, p1, p2, v5, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1609
    :goto_0
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;[FIIIII)Z
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1615
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 1616
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 1617
    iput-object p2, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    const/4 p1, 0x0

    .line 1618
    invoke-static {p3, p1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 1619
    iput-object p3, v0, Lcom/oplus/camera/ui/preview/a/y$a;->i:[F

    .line 1620
    iput p6, v0, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    .line 1621
    iput p7, v0, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    .line 1622
    iput p4, v0, Lcom/oplus/camera/ui/preview/a/y$a;->l:I

    .line 1623
    iput p5, v0, Lcom/oplus/camera/ui/preview/a/y$a;->m:I

    .line 1624
    iput p8, v0, Lcom/oplus/camera/ui/preview/a/y$a;->o:I

    .line 1626
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/u;)Ljava/util/HashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/gl/h;IIII[F)Z
    .locals 7

    .line 1643
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;II[F)Z

    move-result p6

    if-eqz p6, :cond_0

    .line 1646
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->f(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_0
    return p6
.end method

.method private b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 2

    .line 1539
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1540
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/t;->k()V

    .line 1541
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/t;->a([F)V

    .line 1543
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    .line 1768
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1769
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move/from16 v4, p8

    .line 1771
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v8

    .line 1772
    invoke-direct {p0, p1, p2, v3, v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v9

    .line 1774
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v9, :cond_0

    .line 1776
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    .line 1778
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v9, :cond_3

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :cond_3
    :goto_1
    return v7
.end method

.method private b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z
    .locals 2

    .line 1936
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 1937
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    if-eqz p4, :cond_0

    .line 1940
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1941
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    goto :goto_0

    .line 1943
    :cond_0
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 1944
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 1945
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private c(II)V
    .locals 2

    .line 1424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1426
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/u;->d(II)V

    .line 1427
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/u;->w()V

    .line 1428
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/u;->v()V

    .line 1430
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "updateTextureRes, cost time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewEffectProcessImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 1653
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 14

    move-object v6, p0

    move-object v7, p1

    .line 1687
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1688
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v9, 0x0

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    .line 1690
    invoke-direct {p0, p1, v10, v11, v9}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    .line 1691
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v13

    .line 1693
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v13, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1695
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1697
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v13, :cond_3

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :cond_3
    :goto_1
    return v8
.end method

.method private c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 14

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v5, p7

    .line 1787
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1788
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1789
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move/from16 v0, p8

    .line 1791
    invoke-direct {p0, p1, v9, v5, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v11

    .line 1792
    invoke-direct {p0, p1, v9, v5, v11}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v12

    .line 1793
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1794
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    .line 1793
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v13

    .line 1796
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_0

    .line 1798
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    .line 1800
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    .line 1802
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v13, :cond_4

    if-nez v12, :cond_4

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :cond_4
    :goto_1
    return v10
.end method

.method private c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z
    .locals 2

    .line 2068
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 2069
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    if-eqz p4, :cond_0

    .line 2072
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    .line 2074
    :cond_0
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 2075
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 2078
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private d(II)V
    .locals 3

    .line 1434
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    .line 1435
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1436
    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 2197
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1709
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1710
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1711
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v10, 0x0

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    .line 1713
    invoke-direct {v7, v8, v11, v12, v10}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v13

    .line 1714
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1715
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object/from16 v5, p7

    .line 1714
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v14

    const/4 v5, 0x0

    move v4, v14

    .line 1716
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v15

    .line 1718
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1720
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v14, :cond_1

    .line 1722
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1724
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v15, :cond_4

    if-nez v14, :cond_4

    if-eqz v13, :cond_3

    goto :goto_1

    :cond_3
    move v9, v10

    :cond_4
    :goto_1
    return v9
.end method

.method private d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 12

    move-object v7, p0

    move-object v8, p1

    .line 1813
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1814
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move-object v9, p2

    move-object/from16 v5, p7

    move/from16 v0, p8

    .line 1816
    invoke-direct {p0, p1, p2, v5, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v10

    .line 1817
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v11

    .line 1819
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v11, :cond_0

    .line 1821
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 1823
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v11, :cond_3

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z
    .locals 2

    .line 2258
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object v0

    .line 2259
    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    if-eqz p4, :cond_0

    .line 2262
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    goto :goto_0

    .line 2264
    :cond_0
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p4

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 2265
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->f()Lcom/oplus/camera/gl/s;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/ui/preview/a/y$a;->c:Lcom/oplus/camera/gl/s;

    .line 2268
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private e(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 2210
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private e(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 11

    move-object v7, p0

    move-object v8, p1

    .line 1735
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1736
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p7

    .line 1738
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v9

    const/4 v5, 0x0

    move v4, v9

    .line 1739
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v10

    .line 1741
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v10, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1743
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    .line 1745
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v10, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private e(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 12

    move-object v6, p0

    move-object v7, p1

    .line 1834
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1835
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1837
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/t;->k()V

    .line 1838
    iget-object v0, v6, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v1, v6, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/t;->a([F)V

    move-object v8, p2

    move-object/from16 v9, p7

    move/from16 v0, p8

    .line 1840
    invoke-direct {p0, p1, p2, v9, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v10

    .line 1841
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v11

    .line 1843
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v11, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1845
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 1847
    iget-object v8, v6, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v11, :cond_3

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private f(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 2214
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private f(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 8

    .line 1755
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1757
    invoke-direct/range {v1 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 1760
    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_0
    return v0
.end method

.method private f(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 14

    move-object v7, p0

    move-object v8, p1

    .line 1859
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1860
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1861
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1863
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/t;->k()V

    .line 1864
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/t;->a([F)V

    move-object/from16 v9, p2

    move-object/from16 v10, p7

    move/from16 v0, p8

    .line 1866
    invoke-direct {p0, p1, v9, v10, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v11

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v4, v11

    move-object/from16 v5, p7

    .line 1867
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v12

    move v4, v12

    move v5, v11

    .line 1868
    invoke-direct/range {v0 .. v5}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZZ)Z

    move-result v13

    .line 1870
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    .line 1872
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    .line 1874
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    .line 1876
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v13, :cond_4

    if-nez v12, :cond_4

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private g(Lcom/oplus/camera/gl/h;IIII[F)Z
    .locals 7

    .line 2218
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->g()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2219
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private g(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 14

    move-object v7, p0

    move-object v8, p1

    .line 1887
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 1888
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v10, 0x0

    move-object/from16 v11, p2

    move-object/from16 v5, p7

    .line 1890
    invoke-direct {p0, p1, v11, v5, v10}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v12

    .line 1891
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 1892
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v12

    .line 1891
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v13

    .line 1894
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v13, :cond_0

    .line 1896
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    .line 1898
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v13, :cond_3

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    :cond_3
    :goto_1
    return v9
.end method

.method private g(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p7

    .line 2102
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2103
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move/from16 v1, p8

    .line 2105
    invoke-direct {p0, v8, v9, v0, v1}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    .line 2106
    invoke-direct {p0, v8, v9, v0, v10}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    .line 2110
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    goto :goto_1

    :cond_1
    move v14, v13

    :goto_1
    if-eqz v11, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v10, :cond_3

    .line 2113
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2114
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_3
    if-eqz v11, :cond_4

    if-nez v14, :cond_6

    :cond_4
    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v12, v13

    :cond_6
    :goto_2
    return v12
.end method

.method private h(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 2234
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private h(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 0

    .line 1907
    iget-object p3, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 p4, 0x40

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object p3

    .line 1908
    iput-object p1, p3, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 1909
    iput p5, p3, Lcom/oplus/camera/ui/preview/a/y$a;->j:I

    .line 1910
    iput p6, p3, Lcom/oplus/camera/ui/preview/a/y$a;->k:I

    .line 1912
    iput-object p2, p3, Lcom/oplus/camera/ui/preview/a/y$a;->b:Lcom/oplus/camera/gl/g;

    .line 1914
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, p3}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private h(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    .line 2122
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2123
    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v5, 0x200

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move/from16 v4, p8

    .line 2125
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v7

    .line 2126
    invoke-direct {p0, p1, p2, v3, v7}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v8

    .line 2128
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v8, :cond_0

    .line 2130
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    .line 2132
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v8, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private i(Lcom/oplus/camera/gl/h;IIII[F)Z
    .locals 7

    .line 2294
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/aa;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2295
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private i(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 8

    .line 1981
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v0, 0x0

    .line 1983
    invoke-direct {p0, p1, p2, p7, v0}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 1986
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1987
    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p7, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private i(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v5, p7

    .line 2141
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2142
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2143
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2145
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/t;->k()V

    .line 2146
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/t;->a([F)V

    move/from16 v0, p8

    .line 2148
    invoke-direct {v7, v8, v9, v5, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    .line 2149
    invoke-direct {v7, v8, v9, v5, v10}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    .line 2150
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 2151
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move v4, v10

    .line 2150
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_0

    .line 2154
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2155
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    move v15, v14

    goto :goto_2

    :cond_0
    if-eqz v11, :cond_2

    .line 2158
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    move v15, v0

    goto :goto_1

    :cond_2
    move v15, v14

    :goto_1
    if-eqz v11, :cond_3

    if-nez v15, :cond_4

    :cond_3
    if-eqz v10, :cond_4

    .line 2161
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2162
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_4
    :goto_2
    if-nez v12, :cond_7

    if-eqz v11, :cond_5

    if-nez v15, :cond_7

    :cond_5
    if-eqz v10, :cond_6

    goto :goto_3

    :cond_6
    move v13, v14

    :cond_7
    :goto_3
    return v13
.end method

.method private j(Lcom/oplus/camera/gl/h;IIII[F)V
    .locals 7

    .line 2303
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    return-void
.end method

.method private j(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 7

    .line 1995
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v0, 0x0

    .line 1997
    invoke-direct {p0, p1, p2, p7, v0}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result p7

    if-eqz p7, :cond_0

    .line 1999
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2000
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_0
    return p7
.end method

.method private j(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 13

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v5, p7

    .line 2171
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2172
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2173
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2175
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    invoke-virtual {v0}, Lcom/oplus/camera/gl/t;->k()V

    .line 2176
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    invoke-virtual {v0, v2}, Lcom/oplus/camera/gl/t;->a([F)V

    move/from16 v0, p8

    .line 2178
    invoke-direct {p0, p1, p2, v5, v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    .line 2179
    invoke-direct {p0, p1, p2, v5, v10}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    .line 2180
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 2181
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v11

    move v4, v10

    .line 2180
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v12

    .line 2183
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v12, :cond_0

    .line 2185
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    .line 2187
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_1
    if-eqz v10, :cond_2

    .line 2189
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_2
    :goto_0
    if-nez v12, :cond_4

    if-nez v11, :cond_4

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private k(Lcom/oplus/camera/gl/h;IIII[F)Z
    .locals 7

    .line 2307
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    move-object v0, p1

    move-object v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private k(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 13

    move-object v7, p0

    move-object v8, p1

    .line 2007
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2008
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v9, 0x0

    move-object v10, p2

    move-object/from16 v5, p7

    .line 2010
    invoke-direct {p0, p1, p2, v5, v9}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    .line 2011
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 2012
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v11

    .line 2011
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v12

    .line 2014
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v12, :cond_0

    .line 2016
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_1

    .line 2018
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_1
    :goto_0
    if-nez v12, :cond_2

    if-eqz v11, :cond_3

    :cond_2
    const/4 v9, 0x1

    :cond_3
    return v9
.end method

.method private k(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p7

    .line 2239
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2240
    iget-object v1, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    move/from16 v1, p8

    .line 2242
    invoke-direct {p0, v8, v9, v0, v1}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FI)Z

    move-result v10

    .line 2243
    invoke-direct {p0, v8, v9, v0, v10}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_1

    .line 2247
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v14, v0

    goto :goto_1

    :cond_1
    move v14, v13

    :goto_1
    if-eqz v11, :cond_2

    if-nez v14, :cond_3

    :cond_2
    if-eqz v10, :cond_3

    .line 2250
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2251
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_3
    if-eqz v11, :cond_4

    if-nez v14, :cond_6

    :cond_4
    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v12, v13

    :cond_6
    :goto_2
    return v12
.end method

.method private l(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 0

    .line 2026
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 p2, 0x800

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    .line 2027
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->t()Lcom/oplus/camera/ui/preview/a/y$a;

    move-result-object p2

    .line 2028
    iput-object p1, p2, Lcom/oplus/camera/ui/preview/a/y$a;->a:Lcom/oplus/camera/gl/h;

    .line 2029
    iput-object p7, p2, Lcom/oplus/camera/ui/preview/a/y$a;->i:[F

    .line 2030
    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/y$a;)Z

    move-result p0

    return p0
.end method

.method private m(I)V
    .locals 6

    .line 1386
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/oplus/camera/gl/GLRootView;->getSurfaceState()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1392
    :cond_0
    monitor-enter p0

    .line 1393
    :try_start_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/u;->a:Z

    if-nez v0, :cond_1

    const-string p1, "PreviewEffectProcessImpl"

    const-string v0, "onlyCreateEngines, texture has been released"

    .line 1394
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    monitor-exit p0

    return-void

    .line 1398
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onlyCreateEngines, effectFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewEffectProcessImpl"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1404
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1405
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 1406
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v4, p1}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v4, :cond_2

    .line 1408
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/camera/ui/preview/a/y;

    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/aa;)V

    goto :goto_0

    .line 1412
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz v2, :cond_5

    and-int/2addr p1, v4

    if-eqz p1, :cond_4

    .line 1413
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/u;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1414
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/aa;)V

    goto :goto_1

    .line 1416
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->e()V

    .line 1420
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onlyCreateEngines, cost time: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewEffectProcessImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1398
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1387
    :cond_6
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onlyCreateEngines, mGLRootView: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewEffectProcessImpl"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private m(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 8

    .line 2034
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 2035
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2036
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1, p7}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 2038
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/preview/a/u;->l(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2039
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v1, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private n(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p7

    .line 2047
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/oplus/camera/ui/preview/a/y;

    .line 2048
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/oplus/camera/ui/preview/a/y;

    .line 2049
    invoke-virtual {v10, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2050
    invoke-virtual {v11, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p7

    .line 2052
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    invoke-virtual {v10}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    .line 2054
    invoke-virtual {v11}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    .line 2053
    invoke-direct {p0, p1, v0, v1, v9}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    move-object v1, p2

    goto :goto_0

    .line 2056
    :cond_0
    invoke-virtual {v11}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    move-object v1, p2

    invoke-direct {p0, p1, p2, v0, v9}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    .line 2059
    :goto_0
    invoke-direct/range {p0 .. p7}, Lcom/oplus/camera/ui/preview/a/u;->l(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2060
    invoke-virtual {v11}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    iget-object v2, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private o(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 14

    move-object v7, p0

    move-object v8, p1

    .line 2083
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    .line 2084
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v9, 0x0

    move-object/from16 v10, p2

    move-object/from16 v5, p7

    .line 2086
    invoke-direct {p0, p1, v10, v5, v9}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result v11

    .line 2087
    iget-object v0, v7, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 2088
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v11

    .line 2087
    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;ZZ[FLcom/oplus/camera/gl/s;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    .line 2091
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2092
    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_0

    :cond_0
    if-eqz v11, :cond_2

    .line 2094
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, v7, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v9

    :goto_1
    if-nez v12, :cond_3

    if-eqz v11, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    move v9, v13

    :cond_4
    return v9
.end method

.method private p(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z
    .locals 8

    .line 2228
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/h;)V

    const/4 v0, 0x0

    .line 2229
    invoke-direct {p0, p1, p2, p7, v0}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[FZ)Z

    move-result p7

    .line 2230
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p7, :cond_1

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private u()Z
    .locals 1

    .line 1376
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 1378
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private v()V
    .locals 2

    .line 1442
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 1443
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$8;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$8;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 1458
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$9;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$9;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;
    .locals 9

    .line 651
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->s()I

    move-result v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureEffectPreview, flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviewEffectProcessImpl"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x1

    .line 656
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v1, :cond_0

    .line 657
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v5

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    .line 658
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p4

    xor-int/lit8 v8, p4, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 657
    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 660
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v5

    iget-object v7, p0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    .line 661
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p4

    xor-int/lit8 v8, p4, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 660
    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto/16 :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 662
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v4, 0x2

    .line 663
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 664
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_2

    .line 665
    invoke-direct {p0, p1, v4, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;ILcom/oplus/camera/gl/s;)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto/16 :goto_0

    .line 666
    :cond_2
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v5

    const/4 v7, 0x0

    .line 667
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p4

    xor-int/lit8 v8, p4, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 666
    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto/16 :goto_0

    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    .line 668
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 669
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 670
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_4

    .line 671
    invoke-direct {p0, p1, v2, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;ILcom/oplus/camera/gl/s;)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto/16 :goto_0

    .line 672
    :cond_4
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v5

    const/4 v7, 0x0

    .line 673
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p4

    xor-int/lit8 v8, p4, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 672
    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 674
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 675
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_6

    .line 677
    invoke-direct {p0, p1, v1, p3}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;ILcom/oplus/camera/gl/s;)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto :goto_0

    .line 678
    :cond_6
    iget-object p4, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p4}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v5

    const/4 v7, 0x0

    .line 679
    invoke-static {}, Lcom/oplus/camera/util/Util;->C()Z

    move-result p4

    xor-int/lit8 v8, p4, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    .line 678
    invoke-direct/range {v3 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[FZ)Lcom/oplus/camera/gl/s;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/4 p4, 0x0

    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/s;[F)Lcom/oplus/camera/gl/s;

    move-result-object p0

    .line 684
    :goto_0
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->j()J

    move-result-wide p3

    invoke-virtual {p0, p3, p4}, Lcom/oplus/camera/gl/s;->a(J)V

    .line 685
    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->k()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/gl/s;->b(J)V

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1008
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1181
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1182
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->d(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz p1, :cond_0

    .line 213
    new-instance p2, Lcom/oplus/camera/ui/preview/a/u$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/a/u$3;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {p1, p2}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    .line 786
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    .line 788
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 792
    :cond_1
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(J)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    .line 1188
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1189
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 4

    .line 770
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    .line 771
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    .line 773
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 777
    :cond_1
    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 778
    invoke-virtual {v1, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(Landroid/util/Size;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lcom/oplus/camera/c$a;)V
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1057
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/c$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/c;)V
    .locals 2

    .line 1314
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/doubleexposure/c;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/GLRootView;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    .line 170
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 171
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/gl/GLRootView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/t;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->j:Lcom/oplus/camera/gl/t;

    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 1042
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1043
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1036
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/tiltshift/TiltShiftParam;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/aa$b;)V
    .locals 0

    .line 933
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 934
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Lcom/oplus/camera/ui/preview/a/aa$b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/l$a;)V
    .locals 1

    .line 188
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/l;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/l;->a(Lcom/oplus/camera/ui/preview/a/l$a;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/t$a;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 940
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 941
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 194
    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/preview/a/y;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/u;->a:Z

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZZ)V
    .locals 0

    .line 1349
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/u;->b:Z

    .line 1350
    iput-boolean p2, p0, Lcom/oplus/camera/ui/preview/a/u;->c:Z

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 907
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 908
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a([B)V

    :cond_0
    return-void
.end method

.method public a([F)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    return-void
.end method

.method public a([I)V
    .locals 0

    .line 1049
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1050
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->c([I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;)Z
    .locals 4

    .line 692
    invoke-virtual {p1}, Lcom/oplus/camera/gl/g;->s()I

    move-result p1

    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    return v1

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x2

    .line 699
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 700
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/s;)Z

    move-result p0

    return p0

    :cond_2
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 703
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 704
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/s;)Z

    move-result p0

    return p0

    :cond_3
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    .line 706
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 707
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    .line 708
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/gl/s;->n()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 709
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->g()Lcom/oplus/camera/gl/s;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/gl/s;->a(Lcom/oplus/camera/gl/s;)Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method public a(Lcom/oplus/camera/gl/h;IIII)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/b/f;Lcom/oplus/camera/gl/s;IIIII)Z
    .locals 9

    move-object v0, p0

    .line 354
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;[FIIIII)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIII)Z
    .locals 16

    move-object/from16 v0, p0

    .line 302
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v10, v1

    goto :goto_0

    :cond_0
    move v10, v3

    .line 304
    :goto_0
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v11, v1

    goto :goto_1

    :cond_1
    move v11, v3

    .line 306
    :goto_1
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 307
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 308
    :goto_2
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    .line 310
    :goto_3
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 311
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    :cond_4
    move v5, v3

    .line 312
    :goto_4
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v14, v7

    goto :goto_5

    :cond_5
    move v14, v3

    .line 314
    :goto_5
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v8, 0x80

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v7

    .line 315
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v9, 0x100

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v12

    .line 316
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v9, 0x200

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v13

    .line 317
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/camera/ui/preview/a/y;

    const/4 v8, 0x1

    if-eqz v4, :cond_6

    .line 318
    invoke-virtual {v4}, Lcom/oplus/camera/ui/preview/a/y;->a()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v8

    goto :goto_6

    :cond_6
    move v4, v3

    :goto_6
    if-eqz v5, :cond_7

    .line 319
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/preview/a/y;->y()Z

    move-result v5

    if-eqz v5, :cond_7

    move v9, v8

    goto :goto_7

    :cond_7
    move v9, v3

    :goto_7
    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    .line 322
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->f(Lcom/oplus/camera/gl/h;IIII[F)V

    return v8

    :cond_8
    if-eqz v1, :cond_9

    .line 325
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    return v8

    :cond_9
    if-eqz v7, :cond_a

    .line 328
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    iget-object v4, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v15, p7

    invoke-direct/range {v0 .. v15}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;[F[FIIIIZZZZZZI)Z

    move-result v0

    return v0

    :cond_a
    if-eqz v10, :cond_b

    .line 332
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    return v8

    :cond_b
    if-eqz v9, :cond_c

    .line 335
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    return v0

    :cond_c
    if-eqz v13, :cond_d

    .line 337
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;IIII[F)V

    return v8

    :cond_d
    if-eqz v11, :cond_e

    if-nez v12, :cond_e

    .line 340
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    return v8

    :cond_e
    if-eqz v12, :cond_f

    .line 343
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    return v0

    :cond_f
    if-eqz v14, :cond_10

    .line 345
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->k(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    return v0

    :cond_10
    return v3
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIIILcom/oplus/camera/aps/util/CameraApsResult;Z)Z
    .locals 32

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v0

    .line 391
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    move v13, v12

    .line 395
    :goto_0
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move v15, v1

    goto :goto_1

    :cond_1
    move v15, v12

    .line 399
    :goto_1
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v16, 0x4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v17, v12

    .line 403
    :goto_2
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v18, 0x8

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v19, v1

    goto :goto_3

    :cond_3
    move/from16 v19, v12

    .line 407
    :goto_3
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 408
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v21, v1

    goto :goto_4

    :cond_4
    move/from16 v21, v12

    .line 411
    :goto_4
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v22, 0x20

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 412
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v23, v1

    goto :goto_5

    :cond_5
    move/from16 v23, v12

    .line 415
    :goto_5
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v24, 0x200

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 416
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v25, v1

    goto :goto_6

    :cond_6
    move/from16 v25, v12

    .line 419
    :goto_6
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v26, 0x40

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 420
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v27, v1

    goto :goto_7

    :cond_7
    move/from16 v27, v12

    .line 423
    :goto_7
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v28, 0x100

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 424
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v29, v1

    goto :goto_8

    :cond_8
    move/from16 v29, v12

    .line 427
    :goto_8
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v30, 0x400

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 428
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    move/from16 v31, v1

    goto :goto_9

    :cond_9
    move/from16 v31, v12

    .line 431
    :goto_9
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 432
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v0

    goto :goto_a

    :cond_a
    move v0, v12

    .line 435
    :goto_a
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v31, :cond_b

    if-nez v13, :cond_b

    if-nez v15, :cond_b

    if-nez v19, :cond_b

    if-nez v21, :cond_b

    if-nez v17, :cond_b

    if-nez v23, :cond_b

    if-nez v27, :cond_b

    if-nez v29, :cond_b

    if-nez v25, :cond_b

    if-eqz v0, :cond_29

    :cond_b
    if-eqz v31, :cond_c

    .line 454
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FLcom/oplus/camera/aps/util/CameraApsResult;)Z

    move-result v0

    :goto_b
    move v8, v0

    goto/16 :goto_e

    :cond_c
    if-eqz v21, :cond_d

    .line 456
    iget-object v6, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    goto :goto_b

    :cond_d
    if-eqz v0, :cond_f

    if-eqz v15, :cond_e

    .line 459
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->n(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto :goto_b

    .line 461
    :cond_e
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->m(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto :goto_b

    :cond_f
    if-eqz v13, :cond_10

    if-nez v15, :cond_10

    if-nez v19, :cond_10

    if-nez v17, :cond_10

    .line 464
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto :goto_b

    :cond_10
    if-eqz v13, :cond_11

    if-nez v15, :cond_11

    if-eqz v19, :cond_11

    .line 466
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto :goto_b

    :cond_11
    if-eqz v13, :cond_12

    if-eqz v15, :cond_12

    if-nez v19, :cond_12

    if-nez v17, :cond_12

    .line 468
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_12
    if-eqz v13, :cond_13

    if-eqz v15, :cond_13

    if-eqz v19, :cond_13

    .line 470
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_13
    if-eqz v13, :cond_14

    if-nez v15, :cond_14

    if-nez v19, :cond_14

    if-eqz v17, :cond_14

    .line 472
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_14
    if-eqz v13, :cond_15

    if-eqz v15, :cond_15

    if-nez v19, :cond_15

    if-eqz v17, :cond_15

    .line 475
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_15
    if-nez v13, :cond_18

    if-eqz v15, :cond_18

    if-nez v19, :cond_18

    if-nez v17, :cond_18

    if-nez v23, :cond_18

    if-nez v25, :cond_18

    .line 478
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    if-nez p9, :cond_17

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->l()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_c

    :cond_16
    move v8, v12

    goto :goto_d

    :cond_17
    :goto_c
    move v8, v11

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 478
    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FZ)Z

    move-result v0

    goto/16 :goto_b

    :cond_18
    if-nez v13, :cond_19

    if-eqz v15, :cond_19

    if-eqz v19, :cond_19

    if-nez v17, :cond_19

    .line 481
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_19
    if-nez v13, :cond_1a

    if-nez v15, :cond_1a

    if-eqz v19, :cond_1a

    if-nez v17, :cond_1a

    .line 483
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->f(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_1a
    if-nez v13, :cond_1b

    if-nez v25, :cond_1b

    if-nez v15, :cond_1b

    if-nez v19, :cond_1b

    if-eqz v17, :cond_1b

    if-nez v23, :cond_1b

    if-nez v29, :cond_1b

    .line 491
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_1b
    if-nez v13, :cond_1c

    if-eqz v15, :cond_1c

    if-nez v19, :cond_1c

    if-eqz v17, :cond_1c

    if-nez v23, :cond_1c

    if-nez v25, :cond_1c

    .line 493
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_1c
    if-nez v13, :cond_1d

    if-nez v15, :cond_1d

    if-eqz v19, :cond_1d

    if-eqz v17, :cond_1d

    .line 496
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_1d
    if-nez v13, :cond_1e

    if-eqz v15, :cond_1e

    if-eqz v19, :cond_1e

    if-eqz v17, :cond_1e

    .line 499
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->f(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_1e
    if-eqz v25, :cond_1f

    if-nez v15, :cond_1f

    if-nez v17, :cond_1f

    .line 502
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->j(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_1f
    if-eqz v25, :cond_20

    if-eqz v15, :cond_20

    if-nez v17, :cond_20

    .line 504
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->k(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_20
    if-eqz v25, :cond_21

    if-nez v15, :cond_21

    if-eqz v17, :cond_21

    .line 506
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->h(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_21
    if-eqz v25, :cond_22

    if-eqz v15, :cond_22

    if-eqz v17, :cond_22

    .line 509
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->j(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_22
    if-eqz v23, :cond_23

    if-nez v15, :cond_23

    if-nez v17, :cond_23

    .line 512
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_23
    if-eqz v23, :cond_24

    if-eqz v15, :cond_24

    if-nez v17, :cond_24

    .line 514
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->o(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_24
    if-eqz v23, :cond_25

    if-nez v15, :cond_25

    if-eqz v17, :cond_25

    .line 516
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_25
    if-eqz v23, :cond_26

    if-eqz v15, :cond_26

    if-eqz v17, :cond_26

    .line 519
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_26
    if-eqz v27, :cond_27

    .line 522
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_27
    if-eqz v29, :cond_28

    if-nez v23, :cond_28

    if-nez v17, :cond_28

    .line 524
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/oplus/camera/ui/preview/a/u;->p(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[F)Z

    move-result v0

    goto/16 :goto_b

    :cond_28
    if-eqz v29, :cond_29

    if-nez v23, :cond_29

    if-eqz v17, :cond_29

    .line 526
    iget-object v7, v9, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->k(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v0

    goto/16 :goto_b

    :cond_29
    move v8, v12

    :goto_e
    if-nez v8, :cond_2c

    .line 531
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    if-nez v0, :cond_2c

    if-nez p9, :cond_2b

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->l()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_f

    .line 535
    :cond_2a
    iget-object v2, v9, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    goto :goto_10

    .line 533
    :cond_2b
    :goto_f
    iget-object v2, v9, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIIIZ)V

    :cond_2c
    :goto_10
    if-eqz v13, :cond_2d

    move v0, v11

    goto :goto_11

    :cond_2d
    move v0, v12

    :goto_11
    if-eqz v15, :cond_2e

    goto :goto_12

    :cond_2e
    move v14, v12

    :goto_12
    or-int/2addr v0, v14

    if-eqz v17, :cond_2f

    goto :goto_13

    :cond_2f
    move/from16 v16, v12

    :goto_13
    or-int v0, v0, v16

    if-eqz v19, :cond_30

    goto :goto_14

    :cond_30
    move/from16 v18, v12

    :goto_14
    or-int v0, v0, v18

    if-eqz v21, :cond_31

    goto :goto_15

    :cond_31
    move/from16 v20, v12

    :goto_15
    or-int v0, v0, v20

    if-eqz v23, :cond_32

    goto :goto_16

    :cond_32
    move/from16 v22, v12

    :goto_16
    or-int v0, v0, v22

    if-eqz v25, :cond_33

    goto :goto_17

    :cond_33
    move/from16 v24, v12

    :goto_17
    or-int v0, v0, v24

    if-eqz v27, :cond_34

    goto :goto_18

    :cond_34
    move/from16 v26, v12

    :goto_18
    or-int v0, v0, v26

    if-eqz v29, :cond_35

    goto :goto_19

    :cond_35
    move/from16 v28, v12

    :goto_19
    or-int v0, v0, v28

    if-eqz v31, :cond_36

    goto :goto_1a

    :cond_36
    move/from16 v30, v12

    :goto_1a
    or-int v0, v0, v30

    if-eqz v8, :cond_37

    move v1, v0

    goto :goto_1b

    :cond_37
    move v1, v12

    .line 549
    :goto_1b
    invoke-virtual {v10, v1}, Lcom/oplus/camera/gl/g;->a(I)V

    .line 551
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->k()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, v9, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v9, v0}, Lcom/oplus/camera/ui/preview/a/u;->l(I)I

    move-result v0

    if-le v1, v0, :cond_38

    iget-object v0, v9, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_1c

    .line 554
    :cond_38
    iget-object v0, v9, Lcom/oplus/camera/ui/preview/a/u;->n:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 553
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Lcom/oplus/camera/gl/g;->a(J)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/gl/g;->t()Z

    move-result v0

    xor-int/2addr v0, v11

    return v0
.end method

.method public a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIIIZ)Z
    .locals 18

    move-object/from16 v0, p0

    .line 562
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v1

    .line 563
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 564
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 565
    :goto_0
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    iget-object v3, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v4

    .line 567
    :goto_1
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 568
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    .line 569
    :goto_2
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 570
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_3

    :cond_3
    move v6, v4

    .line 571
    :goto_3
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 572
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_4

    :cond_4
    move v7, v4

    .line 573
    :goto_4
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v10, 0x80

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    .line 574
    iget-object v9, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v10, 0x100

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v7, :cond_5

    .line 575
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v7}, Lcom/oplus/camera/ui/preview/a/y;->y()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    goto :goto_5

    :cond_5
    move v7, v4

    .line 576
    :goto_5
    iget-object v8, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v8, v1}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v8

    if-eqz v6, :cond_7

    if-eqz p8, :cond_6

    .line 580
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->f(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_6
    return v10

    :cond_7
    if-eqz v5, :cond_9

    if-eqz p8, :cond_8

    .line 586
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->c(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_8
    return v10

    :cond_9
    if-eqz v2, :cond_b

    if-eqz p8, :cond_a

    .line 592
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->d(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_a
    return v10

    :cond_b
    if-eqz v8, :cond_e

    if-eqz p8, :cond_d

    .line 598
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 599
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->e(Lcom/oplus/camera/gl/h;IIII[F)V

    goto :goto_6

    .line 601
    :cond_c
    iget-object v13, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-interface/range {v11 .. v17}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    :cond_d
    :goto_6
    return v10

    :cond_e
    if-eqz v7, :cond_f

    if-eqz p8, :cond_12

    .line 608
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->g(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    return v0

    :cond_f
    if-eqz v3, :cond_11

    if-nez v9, :cond_11

    if-eqz p8, :cond_10

    .line 613
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;IIII[F)V

    :cond_10
    return v10

    :cond_11
    if-eqz v9, :cond_12

    if-eqz p8, :cond_12

    .line 619
    iget-object v6, v0, Lcom/oplus/camera/ui/preview/a/u;->f:[F

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/ui/preview/a/u;->i(Lcom/oplus/camera/gl/h;IIII[F)Z

    move-result v0

    return v0

    :cond_12
    return v4
.end method

.method public a([BIII)Z
    .locals 1

    .line 800
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    if-eqz p0, :cond_0

    .line 802
    invoke-virtual {p0, p4}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 803
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/ui/preview/a/y;->a([BII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a([B[BIII)Z
    .locals 1

    .line 812
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    if-eqz p0, :cond_0

    .line 814
    invoke-virtual {p0, p5}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 815
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/ui/preview/a/y;->a([B[BII)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$2;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 0

    .line 1014
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1015
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->b(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 229
    iget v0, p0, Lcom/oplus/camera/ui/preview/a/u;->d:I

    iget v1, p0, Lcom/oplus/camera/ui/preview/a/u;->e:I

    invoke-direct {p0, v0, v1}, Lcom/oplus/camera/ui/preview/a/u;->c(II)V

    .line 231
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 232
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/u$4;-><init>(Lcom/oplus/camera/ui/preview/a/u;I)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 878
    iput p1, p0, Lcom/oplus/camera/ui/preview/a/u;->d:I

    .line 879
    iput p2, p0, Lcom/oplus/camera/ui/preview/a/u;->e:I

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/u;->c(II)V

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 915
    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/aa;->a(J)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 971
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 947
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->g(Z)V

    :cond_0
    return-void
.end method

.method public b([I)V
    .locals 0

    .line 1167
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1168
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a([I)V

    :cond_0
    return-void
.end method

.method public b(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIIII)Z
    .locals 9

    move-object v0, p0

    .line 629
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v1

    .line 633
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/preview/a/y;->a_(I)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 638
    iget-object v7, v0, Lcom/oplus/camera/ui/preview/a/u;->g:[F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;IIII[FI)Z

    move-result v4

    :cond_1
    return v4
.end method

.method public b(Lcom/oplus/camera/sticker/data/StickerItem;)Z
    .locals 1

    .line 1111
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1115
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->m()V

    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1029
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->c(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyEngine, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviewEffectProcessImpl"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x596

    move v2, v1

    move v1, p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5b7

    .line 280
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz p1, :cond_3

    .line 283
    new-instance v3, Lcom/oplus/camera/ui/preview/a/u$5;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/oplus/camera/ui/preview/a/u$5;-><init>(Lcom/oplus/camera/ui/preview/a/u;III)V

    invoke-virtual {p1, v3}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 954
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 955
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->h(Z)V

    :cond_0
    return-void
.end method

.method public c([I)V
    .locals 0

    .line 1174
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1175
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->b([I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->n()V

    :cond_0
    return-void
.end method

.method public d(F)V
    .locals 0

    .line 1282
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1283
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->d(F)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 886
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 887
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 985
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->f(Z)V

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1290
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->e(F)V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 893
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    .line 894
    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/preview/a/y;->d(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1022
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->c(Z)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 3

    .line 747
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->h()Z

    goto :goto_0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->o()V

    .line 752
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->p()V

    .line 756
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 757
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/u;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/preview/a/y;->a(Lcom/oplus/camera/ui/preview/a/aa;)V

    .line 759
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->h()Z

    goto :goto_1

    .line 761
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->e()V

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public f(I)V
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 927
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->c(I)V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1064
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->j(Z)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x10

    .line 742
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->k()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/a/y;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g()V
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->c()V

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 992
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(I)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 0

    .line 1070
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1071
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->k(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 844
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 845
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$6;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$6;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 977
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 978
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->b(I)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 1195
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1196
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->b(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    if-eqz v0, :cond_0

    .line 859
    new-instance v1, Lcom/oplus/camera/ui/preview/a/u$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/u$7;-><init>(Lcom/oplus/camera/ui/preview/a/u;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 872
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->h:Lcom/oplus/camera/gl/GLRootView;

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1146
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1147
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->f(I)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1132
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1133
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->a(Z)V

    :cond_0
    return-void
.end method

.method public j()Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 0

    .line 1077
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->o()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public j(I)Lcom/oplus/camera/ui/preview/a/y;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    return-object p0
.end method

.method public j(Z)V
    .locals 0

    .line 1139
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1140
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->m(Z)V

    :cond_0
    return-void
.end method

.method public k()I
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "func_face_blur"

    .line 1212
    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "pref_filter_process_key"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v1, v1, 0x2

    .line 1220
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "pref_sticker_process_key"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x8

    .line 1224
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "pref_omoji_process_key"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v1, v1, 0x10

    .line 1228
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_face_slender_process"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    or-int/lit8 v1, v1, 0x4

    .line 1232
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_video_blur_process"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    or-int/lit8 v1, v1, 0x20

    .line 1236
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_super_text_gpu_process"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    or-int/lit8 v1, v1, 0x40

    .line 1240
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "pref_watermark_function_key"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    or-int/lit16 v1, v1, 0x80

    .line 1244
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_video_retention"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    or-int/lit16 v1, v1, 0x100

    .line 1248
    :cond_8
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_tilt_shift"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    or-int/lit16 v1, v1, 0x200

    .line 1252
    :cond_9
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v2, "func_video_double_exposure"

    invoke-interface {v0, v2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    or-int/lit16 v0, v1, 0x400

    move v1, v0

    .line 1256
    :cond_a
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->i:Lcom/oplus/camera/ui/preview/a/t$a;

    const-string v0, "fish_eye"

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    or-int/lit16 v1, v1, 0x800

    :cond_b
    return v1
.end method

.method public k(I)V
    .locals 0

    .line 1370
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1371
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->e(I)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1202
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1203
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->i(Z)V

    :cond_0
    return-void
.end method

.method public l(I)I
    .locals 3

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/a/y;->l()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    const/4 v0, 0x4

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 1362
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->l()I

    move-result p0

    add-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public l(Z)V
    .locals 0

    .line 1153
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1154
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->d(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1274
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->D()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public m()F
    .locals 0

    .line 1296
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1297
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->E()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public m(Z)V
    .locals 0

    .line 1160
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1161
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->e(Z)V

    :cond_0
    return-void
.end method

.method public n()F
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1306
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->F()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public n(Z)V
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1267
    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/aa;->l(Z)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1321
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->u()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 1328
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1329
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->v()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->w()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->l:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/camera/ui/preview/a/y;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/y;->x()V

    :cond_0
    return-void
.end method

.method public s()Z
    .locals 0

    .line 1102
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u;->k:Lcom/oplus/camera/ui/preview/a/aa;

    if-eqz p0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/aa;->r()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public t()Z
    .locals 0

    .line 1120
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/u;->j()Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
