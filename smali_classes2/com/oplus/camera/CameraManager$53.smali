.class Lcom/oplus/camera/CameraManager$53;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->cS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ValueAnimator;

.field final synthetic b:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 18948
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$53;->a:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 18951
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 18952
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1, v1}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/Float;IZZ)V

    .line 18954
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    .line 18955
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->bt()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    .line 18956
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIListener;->ah()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18957
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$53;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18958
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$53;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->ey()V

    :cond_2
    return-void
.end method
