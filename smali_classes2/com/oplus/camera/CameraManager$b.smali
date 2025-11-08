.class Lcom/oplus/camera/CameraManager$b;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12623
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12624
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$b;->b:Landroid/util/Size;

    .line 12625
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$b;->c:Landroid/util/Size;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12623
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$b;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationEnd"

    .line 12654
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12656
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$b;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12658
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12659
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/z;->b(Z)V

    .line 12662
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12663
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$b;->b:Landroid/util/Size;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 12666
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12667
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12668
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12669
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/ui/inverse/e;->setMaskAlpha(Landroid/content/Context;ZZ)V

    .line 12670
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->h(Z)V

    .line 12671
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12672
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->cp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;I)V

    .line 12673
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/d;->i(Z)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 2

    const-string p1, "CameraManager"

    const-string v0, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationStart"

    .line 12629
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12631
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$b;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12633
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->at()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12634
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12635
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$b;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->R()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->switchCamera(I)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 12640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseSwitchDualCameraAnimationListenerImpl, onAnimationMiddle , fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 12641
    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 12642
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 12640
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12644
    iput-object p2, p0, Lcom/oplus/camera/CameraManager$b;->b:Landroid/util/Size;

    .line 12645
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$b;->c:Landroid/util/Size;

    .line 12647
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 12648
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    :cond_2
    return-void
.end method

.method public b()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method
