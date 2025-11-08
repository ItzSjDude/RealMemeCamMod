.class Lcom/oplus/camera/panorama/f$13;
.super Ljava/lang/Object;
.source "PanoramaCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/panorama/f;->onAfterStartPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/panorama/f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/panorama/f;Z)V
    .locals 0

    .line 994
    iput-object p1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    iput-boolean p2, p0, Lcom/oplus/camera/panorama/f$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 997
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->X(Lcom/oplus/camera/panorama/f;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/panorama/d;->a()V

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/f;->a(Z)V

    .line 1003
    iget-object p0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {p0}, Lcom/oplus/camera/panorama/f;->Y(Lcom/oplus/camera/panorama/f;)V

    goto/16 :goto_1

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->Z(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->e()Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/panorama/f;->getPreviewFrameSize(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Landroid/util/Size;)Landroid/util/Size;

    .line 1008
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;I)I

    .line 1009
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->aa(Lcom/oplus/camera/panorama/f;)I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->c(Lcom/oplus/camera/panorama/f;I)I

    .line 1015
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->d(Lcom/oplus/camera/panorama/f;I)I

    .line 1016
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->e(Lcom/oplus/camera/panorama/f;I)I

    .line 1017
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->aa(Lcom/oplus/camera/panorama/f;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->J(Lcom/oplus/camera/panorama/f;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;F)F

    .line 1018
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1019
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    div-double/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->ab(Lcom/oplus/camera/panorama/f;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v1, v3

    iget-object v3, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->ac(Lcom/oplus/camera/panorama/f;)F

    move-result v3

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0

    .line 1020
    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->ab(Lcom/oplus/camera/panorama/f;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->ac(Lcom/oplus/camera/panorama/f;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1018
    :goto_0
    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->f(Lcom/oplus/camera/panorama/f;I)I

    .line 1022
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1023
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->ad(Lcom/oplus/camera/panorama/f;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->ac(Lcom/oplus/camera/panorama/f;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/oplus/camera/panorama/f;->b(Lcom/oplus/camera/panorama/f;I)I

    .line 1026
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfterStartPreview, mUpdateRectLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->ae(Lcom/oplus/camera/panorama/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRearThumbnailMaxWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    .line 1027
    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->af(Lcom/oplus/camera/panorama/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanoramaCapMode"

    .line 1026
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->M(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1030
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->M(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Matrix;

    move-result-object v0

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1031
    iget-object v0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v0}, Lcom/oplus/camera/panorama/f;->M(Lcom/oplus/camera/panorama/f;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->ac(Lcom/oplus/camera/panorama/f;)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v2}, Lcom/oplus/camera/panorama/f;->ac(Lcom/oplus/camera/panorama/f;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1033
    invoke-static {}, Lcom/oplus/camera/panorama/f;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1034
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v1}, Lcom/oplus/camera/panorama/f;->ag(Lcom/oplus/camera/panorama/f;)Lcom/oplus/camera/panorama/g;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/oplus/camera/panorama/f$13;->a:Z

    if-eqz v1, :cond_5

    .line 1035
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    new-instance v2, Lcom/oplus/camera/panorama/g;

    iget-object v3, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v3}, Lcom/oplus/camera/panorama/f;->ah(Lcom/oplus/camera/panorama/f;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-static {v4}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    .line 1036
    invoke-static {v5}, Lcom/oplus/camera/panorama/f;->G(Lcom/oplus/camera/panorama/f;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget-object p0, p0, Lcom/oplus/camera/panorama/f$13;->b:Lcom/oplus/camera/panorama/f;

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/oplus/camera/panorama/g;-><init>(Landroid/content/Context;IILcom/oplus/camera/panorama/g$a;)V

    .line 1035
    invoke-static {v1, v2}, Lcom/oplus/camera/panorama/f;->a(Lcom/oplus/camera/panorama/f;Lcom/oplus/camera/panorama/g;)Lcom/oplus/camera/panorama/g;

    .line 1038
    :cond_5
    monitor-exit v0

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
