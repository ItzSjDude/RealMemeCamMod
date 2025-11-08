.class Lcom/oplus/camera/ui/d$43;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a$a;


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

    .line 641
    iput-object p1, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 710
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 712
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    .line 715
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    .line 716
    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->aQ()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 718
    iget-object p0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->aM()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->o(Lcom/oplus/camera/ui/d;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/a/a;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraUIManager"

    const-string p1, "onAISceneClosed, canRespondTouch is false!"

    .line 682
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Z)Z

    .line 689
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;I)I

    .line 691
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 692
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->q(Lcom/oplus/camera/ui/d;)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 699
    iget-object p0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/CameraUIListener;->c(I)V

    :cond_3
    return-void
.end method

.method public a(IZZ)V
    .locals 3

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnable, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enbalbe: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", changeByClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraUIManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    if-ne v0, p1, :cond_0

    .line 647
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/d;Z)Z

    .line 648
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/ui/d;I)I

    .line 650
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->n(Lcom/oplus/camera/ui/d;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    iget-object p0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/camera/ui/CameraUIListener;->a(IZZ)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/a/a;->e()V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 705
    iget-object p1, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/d$43;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p1}, Lcom/oplus/camera/ui/d;->r(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/preview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/preview/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 706
    :goto_0
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/d$43;->a(Z)V

    return-void
.end method
