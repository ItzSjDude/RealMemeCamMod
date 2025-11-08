.class Lcom/oplus/camera/ui/d$10;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/levelcontrol/g$a;


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

    .line 1577
    iput-object p1, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1580
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->o()V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/oplus/camera/ui/CameraUIListener;->onEffectItemChange(IZZ)V

    .line 1613
    iget-object p2, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p2}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p2

    const-string v0, "key_support_grand_tour_fitlers"

    invoke-interface {p2, v0}, Lcom/oplus/camera/ui/CameraUIListener;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    .line 1614
    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->cv()I

    move-result p2

    invoke-static {p2}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1615
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    .line 1616
    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "pref_face_beauty_filter_recommend_icon_clicked"

    invoke-virtual {p1, v0, p2}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1617
    iget-object p1, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1618
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->G(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/menu/facebeauty/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/facebeauty/g;->g()V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V
    .locals 1

    .line 1587
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1588
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->J(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/g;->a(Lcom/oplus/camera/ui/menu/levelcontrol/j;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 1625
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1626
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->b(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1635
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->t()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1665
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->x()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 1673
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->B()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public e()I
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1679
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->v()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f()I
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->R(Lcom/oplus/camera/ui/d;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->R(Lcom/oplus/camera/ui/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->U()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public g()Z
    .locals 0

    .line 1732
    iget-object p0, p0, Lcom/oplus/camera/ui/d$10;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->e()Z

    move-result p0

    return p0
.end method
