.class Lcom/oplus/camera/ag$20;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/widget/InertialZoomButton$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1075
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->A(Lcom/oplus/camera/ag;)V

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1083
    :cond_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigDecimal;

    const v2, 0x3dcccccd    # 0.1f

    .line 1084
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 1085
    iget-object v1, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->u(Lcom/oplus/camera/ag;)F

    move-result v1

    iget-object v2, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v2}, Lcom/oplus/camera/ag;->v(Lcom/oplus/camera/ag;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/util/Util;->a(FFF)F

    move-result v0

    .line 1086
    iget-object v1, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v3}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1087
    iget-object v1, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->z(Lcom/oplus/camera/ag;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1089
    iget-object p0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p0, v0, v4}, Lcom/oplus/camera/ag;->a(FZ)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1094
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->B(Lcom/oplus/camera/ag;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->B(Lcom/oplus/camera/ag;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1096
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->B(Lcom/oplus/camera/ag;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->B(Lcom/oplus/camera/ag;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1100
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;Z)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1105
    iget-object v0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->y(Lcom/oplus/camera/ag;)V

    .line 1106
    iget-object p0, p0, Lcom/oplus/camera/ag$20;->a:Lcom/oplus/camera/ag;

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method
