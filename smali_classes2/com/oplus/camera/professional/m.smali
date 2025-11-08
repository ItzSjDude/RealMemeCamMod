.class public Lcom/oplus/camera/professional/m;
.super Lcom/oplus/camera/professional/p;
.source "NightPanelContainer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/professional/p;-><init>(Landroid/content/Context;Lcom/oplus/camera/capmode/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/e/h;Landroid/os/Handler;Lcom/oplus/camera/professional/p$a;)V
    .locals 11

    .line 33
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->u()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->v()I

    move-result v1

    .line 34
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->w()I

    move-result v2

    .line 33
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/oplus/camera/professional/m;->a(IIILandroid/os/Handler;)V

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_0

    .line 37
    iget-wide v2, p3, Lcom/oplus/camera/professional/p$a;->a:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v2, p3, Lcom/oplus/camera/professional/p$a;->a:J

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->x()J

    move-result-wide v2

    :goto_0
    move-wide v5, v2

    if-eqz p3, :cond_1

    .line 40
    iget-wide v2, p3, Lcom/oplus/camera/professional/p$a;->b:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-wide v0, p3, Lcom/oplus/camera/professional/p$a;->b:J

    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->y()J

    move-result-wide v0

    :goto_1
    move-wide v7, v0

    const/16 p3, 0x100

    .line 44
    invoke-virtual {p1, p3}, Lcom/oplus/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v9

    move-object v4, p0

    move-object v10, p2

    .line 43
    invoke-virtual/range {v4 .. v10}, Lcom/oplus/camera/professional/m;->a(JJLjava/util/List;Landroid/os/Handler;)V

    .line 47
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->B()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/oplus/camera/professional/m;->a(Ljava/util/List;Landroid/os/Handler;)V

    .line 50
    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->n()F

    move-result p3

    invoke-virtual {p1}, Lcom/oplus/camera/e/h;->m()F

    move-result p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/oplus/camera/professional/m;->a(FFLandroid/os/Handler;)V

    .line 52
    invoke-virtual {p0}, Lcom/oplus/camera/professional/m;->e()V

    return-void
.end method

.method protected a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/camera/professional/z;",
            "JJ",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/oplus/camera/professional/z;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const v0, 0x7f030066

    .line 58
    invoke-virtual {p1, v0}, Lcom/oplus/camera/professional/z;->f(I)Lcom/oplus/camera/professional/z;

    .line 59
    invoke-super/range {p0 .. p6}, Lcom/oplus/camera/professional/p;->a(Lcom/oplus/camera/professional/z;JJLjava/util/List;)V

    return-void
.end method
