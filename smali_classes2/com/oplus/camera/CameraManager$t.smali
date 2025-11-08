.class public Lcom/oplus/camera/CameraManager$t;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;

.field private b:Landroid/util/Size;

.field private c:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12728
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12729
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$t;->b:Landroid/util/Size;

    .line 12730
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$t;->c:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "CameraManager"

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationEnd"

    .line 12777
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12779
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 12780
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/z;->b(Z)V

    .line 12783
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bx()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12784
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$t;->b:Landroid/util/Size;

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Z)V

    .line 12787
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12788
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->bR(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ag;->d(I)V

    .line 12791
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cb()V

    .line 12792
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 12793
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12794
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->aj(Z)V

    .line 12795
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->c(Z)V

    .line 12796
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12797
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12798
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12799
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 12801
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->c:Landroid/util/Size;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$t;->b:Landroid/util/Size;

    .line 12802
    invoke-virtual {v0, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    .line 12803
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v2, "standard_high"

    const-string v3, "pref_camera_high_resolution_key"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12805
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v2, "pref_camera_photo_ratio_key"

    const-string v3, "standard"

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12806
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/camera/capmode/ModeManager;->h(Ljava/lang/String;)V

    .line 12809
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationStart"

    .line 12734
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12736
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bQ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/entry/b;->J()I

    move-result v0

    if-ne v1, v0, :cond_0

    return-void

    .line 12740
    :cond_0
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12741
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dj()V

    .line 12744
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12746
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne v1, p1, :cond_2

    .line 12747
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12750
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 12752
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->M()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12753
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->n(I)V

    goto :goto_0

    .line 12755
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->l(I)Z

    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 3

    .line 12761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureSizeAnimationListenerImpl, onAnimationMiddle , fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 12762
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

    .line 12763
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 12761
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12765
    iput-object p2, p0, Lcom/oplus/camera/CameraManager$t;->b:Landroid/util/Size;

    .line 12766
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$t;->c:Landroid/util/Size;

    .line 12768
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12769
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    .line 12772
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$t;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$t;->b()I

    move-result p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
