.class Lcom/oplus/camera/ui/d$62;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/modepanel/p$b;


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

    .line 12694
    iput-object p1, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 12749
    iget-object p0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->bx()V

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 12697
    iget-object v0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/d;->l(Lcom/oplus/camera/ui/d;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    const/16 v0, 0x1c

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 12702
    :goto_1
    iget-object v3, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->cv()I

    move-result v3

    invoke-static {v3}, Lcom/oplus/camera/e/a;->a(I)Z

    move-result v3

    .line 12704
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->al(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/modepanel/p;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 12705
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/control/a;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 12709
    :cond_3
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIListener;->Y()Z

    move-result v4

    if-nez v4, :cond_4

    return-void

    .line 12713
    :cond_4
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    invoke-interface {v4}, Lcom/oplus/camera/ui/CameraUIListener;->aY()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bf()Z

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    if-nez v0, :cond_6

    .line 12718
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->al(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/modepanel/p;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oplus/camera/ui/modepanel/p;->b(Z)Z

    .line 12722
    :cond_6
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 12723
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/oplus/camera/ui/CameraUIListener;->d(I)V

    const/16 v4, 0x10

    if-ne v4, p1, :cond_7

    .line 12726
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "key_microscope_guide_show_need"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 12730
    :cond_7
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->d(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v5}, Lcom/oplus/camera/ui/d;->aV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-void

    .line 12734
    :cond_8
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->bX()V

    .line 12735
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4, v2, v2}, Lcom/oplus/camera/ui/d;->h(ZZ)V

    .line 12736
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {v4, v2, v2}, Lcom/oplus/camera/ui/d;->k(ZZ)V

    .line 12738
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4, v2}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;Z)V

    .line 12739
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4, v1}, Lcom/oplus/camera/ui/d;->j(Lcom/oplus/camera/ui/d;Z)V

    .line 12740
    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v4, v0}, Lcom/oplus/camera/ui/d;->e(F)V

    .line 12741
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    iget-object v4, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v4}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v0, v4, v1, v1}, Lcom/oplus/camera/ui/inverse/e;->setMaskAlpha(Landroid/content/Context;ZZ)V

    .line 12742
    sget-object v0, Lcom/oplus/camera/ui/inverse/e;->INS:Lcom/oplus/camera/ui/inverse/e;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/inverse/e;->setExecuteDelayMsg(Z)V

    .line 12743
    iget-object v0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->E(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/control/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/control/a;->s(Z)V

    .line 12744
    iget-object p0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->f(Lcom/oplus/camera/ui/d;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p1, p0, v3}, Lcom/oplus/camera/util/Util;->a(ILandroid/content/Context;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 12754
    iget-object p0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->bw()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 12759
    iget-object p0, p0, Lcom/oplus/camera/ui/d$62;->a:Lcom/oplus/camera/ui/d;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/d;->g(Lcom/oplus/camera/ui/d;I)V

    return-void
.end method
