.class public Lcom/oplus/camera/ui/menu/levelcontrol/l;
.super Lcom/oplus/camera/ui/menu/levelcontrol/k;
.source "GLProducerRender2DHorizontal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/menu/levelcontrol/k;-><init>(Landroid/content/Context;I)V

    .line 13
    iput p3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->H:I

    return-void
.end method


# virtual methods
.method protected c(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
    .locals 1

    .line 71
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->H:I

    if-nez p0, :cond_0

    .line 72
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

    return p0

    .line 74
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->r()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method protected d(Lcom/oplus/camera/ui/menu/levelcontrol/i;)I
    .locals 1

    .line 80
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->H:I

    if-nez p0, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->q()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 83
    :cond_0
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
.end method

.method protected k()V
    .locals 7

    .line 18
    invoke-static {}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a()V

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 22
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v3, v3, Lcom/oplus/camera/ui/menu/levelcontrol/a;->n:F

    iget-boolean v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->E:Z

    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    const/4 v3, 0x1

    .line 24
    iget v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->G:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_1

    .line 25
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->f:F

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float p0, p0

    div-float/2addr v3, p0

    mul-float/2addr v3, v1

    mul-float/2addr v3, v6

    invoke-static {v3, v2, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 26
    invoke-static {v0, v2, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    goto/16 :goto_1

    .line 28
    :cond_1
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->H:I

    if-nez v3, :cond_4

    .line 30
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->f:F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v4, v4, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    mul-float/2addr v3, v6

    .line 32
    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    iget v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->f:F

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v4, v4, Lcom/oplus/camera/ui/menu/levelcontrol/a;->d:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    mul-float/2addr v3, v6

    .line 36
    :cond_2
    invoke-static {v3, v2, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 38
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result p0

    if-nez p0, :cond_7

    .line 40
    invoke-static {v0, v2, v1, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    goto :goto_1

    .line 43
    :cond_3
    iget-boolean p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->E:Z

    if-nez p0, :cond_7

    .line 44
    invoke-static {v0, v2, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    goto :goto_1

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->n()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    invoke-static {v5, v1, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->b(FFF)V

    move v5, v1

    .line 55
    :cond_5
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->f:F

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v3, v3, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v0, v5

    mul-float/2addr v0, v6

    .line 57
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->o()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 58
    iget v0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->f:F

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->p:Lcom/oplus/camera/ui/menu/levelcontrol/i;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/menu/levelcontrol/i;->s()F

    move-result v3

    sub-float/2addr v0, v3

    iget-object v3, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->d:Lcom/oplus/camera/ui/menu/levelcontrol/a;

    iget v3, v3, Lcom/oplus/camera/ui/menu/levelcontrol/a;->c:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    mul-float/2addr v5, v0

    mul-float v0, v5, v6

    .line 61
    :cond_6
    invoke-static {v0, v2, v2}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFF)V

    .line 62
    iget p0, p0, Lcom/oplus/camera/ui/menu/levelcontrol/l;->H:I

    int-to-float p0, p0

    invoke-static {p0, v2, v2, v1}, Lcom/oplus/camera/ui/menu/levelcontrol/p;->a(FFFF)V

    .line 66
    :cond_7
    :goto_1
    invoke-static {}, Lcom/oplus/camera/gl/i;->i()V

    return-void
.end method
