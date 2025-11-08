.class Lcom/oplus/camera/ui/d$11;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/levelcontrol/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 1736
    iput-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    .line 1804
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->setBlurIndex(IZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBlurMenuListener, onBlurStateChange, isBlurOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oplus/camera/ui/CameraUIListener;->a(ZZ)V

    .line 1813
    iget-object p2, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p2}, Lcom/oplus/camera/ui/d;->S(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/o;

    move-result-object p2

    const-string v0, "pref_video_blur_menu"

    invoke-virtual {p2, v0, p1}, Lcom/oplus/camera/ui/menu/setting/o;->b(Ljava/lang/String;Z)V

    .line 1814
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->S(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1755
    iget-object p2, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p2}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->aN()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1756
    iget-object p2, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p2}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/oplus/camera/ui/CameraUIListener;->aH()V

    .line 1759
    :cond_0
    iget-object p2, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p2}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/oplus/camera/ui/CameraUIListener;->a(Z)V

    .line 1762
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->aX()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 1763
    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, v0, p3}, Lcom/oplus/camera/ui/d;->w(ZZ)V

    .line 1764
    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, p2, p3}, Lcom/oplus/camera/ui/d;->A(ZZ)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    .line 1765
    iget-object p3, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p3}, Lcom/oplus/camera/ui/d;->aX()I

    move-result p3

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->aw()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1766
    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/d;->g(I)V

    .line 1769
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->u(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1770
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aH()V

    :cond_4
    return-void
.end method

.method public a()Z
    .locals 0

    .line 1739
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->B()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public b()Z
    .locals 0

    .line 1744
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aN()Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->u(Lcom/oplus/camera/ui/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1777
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aH()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .line 1783
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aX()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lcom/oplus/camera/ui/d;->w(ZZ)V

    .line 1785
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0, v2, v2}, Lcom/oplus/camera/ui/d;->A(ZZ)V

    .line 1787
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/menu/setting/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->B(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/setting/f;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/menu/setting/f;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1790
    iget-object v2, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->aX()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1791
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/d;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1797
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aG()V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 0

    .line 1820
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aL()I

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d$11;->h()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 0

    .line 1830
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aO()Z

    move-result p0

    return p0
.end method

.method public i()Z
    .locals 0

    .line 1835
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->c()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 1

    .line 1840
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    const-string v0, "func_sat_camera"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public k()V
    .locals 1

    .line 1845
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->g(I)V

    return-void
.end method

.method public l()I
    .locals 0

    .line 1850
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bO()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    .line 1855
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->G()I

    move-result p0

    return p0
.end method

.method public n()Lcom/oplus/camera/ui/a/a;
    .locals 0

    .line 1860
    iget-object p0, p0, Lcom/oplus/camera/ui/d$11;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    return-object p0
.end method
