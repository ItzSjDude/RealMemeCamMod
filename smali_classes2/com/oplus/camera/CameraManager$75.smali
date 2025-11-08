.class Lcom/oplus/camera/CameraManager$75;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ac$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 1708
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .line 1711
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s;->a(Z)V

    .line 1713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShellRise, preview started: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", front camera: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1714
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", video record stopped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->aG()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mMagShellResponseStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1715
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mbFrameAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    .line 1713
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1718
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1719
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-static {v0}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1720
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aG()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    .line 1721
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/s;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1722
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s;->c(Z)V

    .line 1723
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s;->e(Z)V

    .line 1725
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const-string v3, "common"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->eG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->eF()V

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dJ()V

    .line 1731
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/camera/ui/d;->a(ZLjava/lang/String;I)V

    .line 1733
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v2, v2, v4}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t;->b()Ljava/lang/String;

    move-result-object v0

    .line 1737
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v4

    .line 1739
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1740
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1746
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->a(II)V

    .line 1747
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/ui/d;->b(ILjava/lang/String;)V

    .line 1750
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v3, v1, v1, v2}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/String;IZZ)Z

    goto :goto_1

    .line 1741
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1742
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->V(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/CameraControlButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/control/CameraControlButtonListener;->onSwitchCameraButtonClick()V

    .line 1753
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    const-string v3, "2"

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    .line 1754
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/camera/s;->e(Z)V

    return v1

    .line 1759
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1
.end method

.method public b()Z
    .locals 2

    .line 1764
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->S(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/s;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/s;->a(Z)V

    .line 1766
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$75;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const v0, 0x7f10065c

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    :cond_0
    const-string p0, "CameraManager"

    const-string v0, "onShellDown"

    .line 1770
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
