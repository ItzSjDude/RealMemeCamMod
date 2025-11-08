.class Lcom/oplus/camera/ui/d$9;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/facebeauty/g$a;


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

    .line 1486
    iput-object p1, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->getFaceBeautyItemValue(I)I

    move-result p0

    return p0
.end method

.method public a()V
    .locals 0

    .line 1489
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->resetFaceBeautyValues()V

    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 1518
    iget-object v0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemValueChange(IIZ)V

    .line 1523
    invoke-virtual {p0}, Lcom/oplus/camera/ui/d$9;->g()V

    .line 1525
    iget-object p1, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->O(Lcom/oplus/camera/ui/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x28

    if-eq p1, p2, :cond_1

    .line 1526
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->P(Lcom/oplus/camera/ui/d;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "key_bubble_type_custom_face_beauty_close"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1510
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, p1, v1, v2, v2}, Lcom/oplus/camera/ui/d;->a(Landroid/view/View;III)V

    goto :goto_0

    .line 1512
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0, v1, v2}, Lcom/oplus/camera/ui/d;->f(IZ)V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 0

    .line 1494
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aa()I

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->onFaceBeautyItemChange(I)V

    return-void
.end method

.method public c(I)I
    .locals 0

    .line 1552
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->e(I)I

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    .line 1532
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->t()Z

    move-result p0

    return p0
.end method

.method public d()I
    .locals 0

    .line 1537
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ab()I

    move-result p0

    return p0
.end method

.method public d(I)V
    .locals 1

    .line 1562
    iget-object v0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1563
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_face_beauty_last_tab_index"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public e()[I
    .locals 0

    .line 1542
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ac()[I

    move-result-object p0

    return-object p0
.end method

.method public f()[I
    .locals 0

    .line 1547
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->ad()[I

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 0

    .line 1557
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->Q(Lcom/oplus/camera/ui/d;)V

    return-void
.end method

.method public h()I
    .locals 2

    .line 1569
    iget-object v0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1570
    iget-object p0, p0, Lcom/oplus/camera/ui/d$9;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    const-string v0, "key_face_beauty_last_tab_index"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method
