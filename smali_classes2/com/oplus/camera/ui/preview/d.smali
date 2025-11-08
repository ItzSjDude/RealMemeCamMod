.class public Lcom/oplus/camera/ui/preview/d;
.super Ljava/lang/Object;
.source "BlendingAnimManager.java"


# instance fields
.field private a:Landroid/view/animation/Interpolator;

.field private b:I

.field private c:J

.field private d:J

.field private final e:F

.field private final f:F

.field private g:F

.field private h:Z

.field private i:Z

.field private j:Lcom/oplus/camera/gl/s;

.field private k:Lcom/oplus/camera/gl/s;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/d;->a:Landroid/view/animation/Interpolator;

    const/16 v0, 0xb4

    .line 21
    iput v0, p0, Lcom/oplus/camera/ui/preview/d;->b:I

    const-wide v3, 0x7fffffffffffffffL

    .line 22
    iput-wide v3, p0, Lcom/oplus/camera/ui/preview/d;->c:J

    const-wide/16 v3, 0x0

    .line 23
    iput-wide v3, p0, Lcom/oplus/camera/ui/preview/d;->d:J

    .line 24
    iput v2, p0, Lcom/oplus/camera/ui/preview/d;->e:F

    .line 25
    iput v1, p0, Lcom/oplus/camera/ui/preview/d;->f:F

    .line 26
    iput v2, p0, Lcom/oplus/camera/ui/preview/d;->g:F

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->h:Z

    .line 28
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->i:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    .line 31
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    return-void
.end method

.method private a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V
    .locals 7

    if-nez p3, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->n()Z

    move-result p0

    if-nez p0, :cond_1

    .line 64
    invoke-virtual {p3, p1}, Lcom/oplus/camera/gl/s;->c(Lcom/oplus/camera/gl/h;)V

    .line 67
    :cond_1
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v5

    .line 68
    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v6

    .line 69
    invoke-interface {p1, p3}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/s;)V

    const/4 p0, 0x0

    int-to-float p3, v6

    .line 70
    invoke-interface {p1, p0, p3}, Lcom/oplus/camera/gl/h;->a(FF)V

    const/high16 p0, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 71
    invoke-interface {p1, p3, p0, p3}, Lcom/oplus/camera/gl/h;->a(FFF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    .line 72
    invoke-interface/range {v0 .. v6}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;[FIIII)V

    .line 73
    invoke-interface {p1}, Lcom/oplus/camera/gl/h;->h()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/preview/a/t;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/h;IIII)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 85
    new-instance v5, Lcom/oplus/camera/gl/s;

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->f()I

    move-result v7

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->g()I

    move-result v8

    invoke-direct {v5, v7, v8, v6}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->f()I

    move-result v7

    if-ne v5, v7, :cond_2

    iget-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    .line 87
    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->f()I

    move-result v5

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->g()I

    move-result v7

    if-eq v5, v7, :cond_3

    .line 88
    :cond_2
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    invoke-virtual {v5}, Lcom/oplus/camera/gl/s;->o()V

    .line 89
    new-instance v5, Lcom/oplus/camera/gl/s;

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->f()I

    move-result v7

    invoke-virtual {p2}, Lcom/oplus/camera/gl/g;->g()I

    move-result v8

    invoke-direct {v5, v7, v8, v6}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    .line 92
    :cond_3
    :goto_0
    iget-object v5, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    const/4 v7, 0x0

    invoke-interface {p1, p4, p2, v5, v7}, Lcom/oplus/camera/ui/preview/a/t;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/g;Lcom/oplus/camera/gl/s;Z)Lcom/oplus/camera/gl/s;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    .line 94
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    if-nez v1, :cond_4

    .line 95
    new-instance v1, Lcom/oplus/camera/gl/s;

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v2

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    invoke-direct {v1, v2, v5, v6}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    goto :goto_1

    .line 96
    :cond_4
    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->g()I

    move-result v1

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v2

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    .line 97
    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->f()I

    move-result v1

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 98
    :cond_5
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1}, Lcom/oplus/camera/gl/s;->o()V

    .line 99
    new-instance v1, Lcom/oplus/camera/gl/s;

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->f()I

    move-result v2

    invoke-virtual {p3}, Lcom/oplus/camera/gl/s;->g()I

    move-result v5

    invoke-direct {v1, v2, v5, v6}, Lcom/oplus/camera/gl/s;-><init>(IIZ)V

    iput-object v1, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    .line 102
    :cond_6
    :goto_1
    new-instance v1, Landroid/renderscript/Matrix4f;

    invoke-direct {v1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 103
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    invoke-virtual {v1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v5

    invoke-direct {p0, p4, p3, v2, v5}, Lcom/oplus/camera/ui/preview/d;->a(Lcom/oplus/camera/gl/h;Lcom/oplus/camera/gl/s;Lcom/oplus/camera/gl/s;[F)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawTextureBlending, alpha: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oplus/camera/ui/preview/d;->g:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlendingAnimManager"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    iget-object v3, v0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    iget v5, v0, Lcom/oplus/camera/ui/preview/d;->g:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v6, v0, v5

    .line 108
    invoke-virtual {v1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v7

    move-object v0, p4

    move-object v1, v2

    move-object v2, v3

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 107
    invoke-interface/range {v0 .. v9}, Lcom/oplus/camera/gl/h;->a(Lcom/oplus/camera/gl/c;Lcom/oplus/camera/gl/c;FF[FIIII)V

    :cond_7
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 7

    .line 34
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oplus/camera/ui/preview/d;->c:J

    .line 36
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/d;->h:Z

    .line 37
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/d;->i:Z

    .line 40
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->i:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/camera/ui/preview/d;->d:J

    .line 42
    iget-wide v3, p0, Lcom/oplus/camera/ui/preview/d;->d:J

    iget-wide v5, p0, Lcom/oplus/camera/ui/preview/d;->c:J

    sub-long/2addr v3, v5

    long-to-float v0, v3

    iget v3, p0, Lcom/oplus/camera/ui/preview/d;->b:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    .line 45
    iput-boolean v2, p0, Lcom/oplus/camera/ui/preview/d;->i:Z

    .line 46
    iput v3, p0, Lcom/oplus/camera/ui/preview/d;->g:F

    goto :goto_0

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/d;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/4 v2, 0x0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 49
    iput v0, p0, Lcom/oplus/camera/ui/preview/d;->g:F

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->h:Z

    .line 113
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/d;->i:Z

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 117
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/d;->j:Lcom/oplus/camera/gl/s;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Lcom/oplus/camera/gl/s;->o()V

    .line 122
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/d;->k:Lcom/oplus/camera/gl/s;

    :cond_1
    return-void
.end method
