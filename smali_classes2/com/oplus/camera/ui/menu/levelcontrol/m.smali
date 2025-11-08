.class public Lcom/oplus/camera/ui/menu/levelcontrol/m;
.super Lcom/oplus/camera/ui/menu/levelcontrol/k;
.source "GLProducerRender2DVertical.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/k;-><init>(Landroid/content/Context;I)V

    .line 13
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->H:I

    return-void
.end method


# virtual methods
.method protected c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
    .locals 1

    .line 60
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->H:I

    if-nez p0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 63
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result p0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected d(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
    .locals 1

    .line 69
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->H:I

    if-nez p0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q()F

    move-result p0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v0

    add-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected k()V
    .locals 7

    .line 18
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->H:I

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0x10e

    if-ne v6, v0, :cond_1

    .line 19
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 21
    invoke-static {v3, v4, v5, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 22
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v6, v6, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    invoke-static {v0, v6, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    .line 23
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->f:F

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v6, v6, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    mul-float/2addr v0, v4

    mul-float/2addr v0, v2

    invoke-static {v5, v0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 24
    invoke-static {v1, v5, v5, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 25
    invoke-static {v3, v5, v5, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 27
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 28
    invoke-static {v3, v4, v5, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 31
    :cond_0
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    .line 32
    iget v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->H:I

    if-ne v0, v6, :cond_2

    .line 33
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 35
    invoke-static {v3, v4, v5, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 36
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v0, v0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    iget-object v6, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v6, v6, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    invoke-static {v0, v6, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    .line 37
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->f:F

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v2

    invoke-static {v5, v0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 39
    invoke-static {v1, v5, v5, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 40
    invoke-static {v3, v4, v5, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 42
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    goto :goto_1

    .line 44
    :cond_2
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    .line 46
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    invoke-static {v3, v4, v5, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 50
    :cond_3
    invoke-static {v3, v5, v4, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 51
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    .line 52
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v1, v1, Lcom/oplus/camera/ui/menu/levelcontrol/a;->m:F

    invoke-static {v4, v1, v4}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    .line 53
    iget v1, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->f:F

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/m;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v5, v0, v5}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 54
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    :goto_1
    return-void
.end method
