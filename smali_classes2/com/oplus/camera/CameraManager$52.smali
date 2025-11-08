.class Lcom/oplus/camera/CameraManager$52;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/CameraUIListener;


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

    .line 16555
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Z[Ljava/lang/Object;)V
    .locals 0

    .line 18146
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/oplus/camera/ag;->b(IZ)V

    return-void
.end method

.method public static synthetic lambda$8mPIJ5CIxhoxA1L9oEI1KuoAtDc(Lcom/oplus/camera/CameraManager$52;Z[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/CameraManager$52;->a(Z[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 17068
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17069
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->w()V

    :cond_0
    return-void
.end method

.method public B()Z
    .locals 0

    .line 17075
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result p0

    return p0
.end method

.method public C()Z
    .locals 1

    .line 17080
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17081
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public D()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onPreviewTextureCopied"

    .line 17089
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17091
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 17092
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/w/b;->sendEmptyMessage(I)Z

    return-void
.end method

.method public E()V
    .locals 1

    .line 17097
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/CameraManager;->b(ZI)V

    return-void
.end method

.method public F()I
    .locals 5

    .line 17104
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17105
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17106
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f10023d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    .line 17105
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 17109
    :goto_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17110
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 17113
    :goto_2
    iget-object v4, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dj()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "on"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/4 p0, 0x2

    move v2, p0

    :cond_4
    :goto_3
    return v2
.end method

.method public G()I
    .locals 0

    .line 17122
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public H()I
    .locals 0

    .line 17127
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->an()I

    move-result p0

    return p0
.end method

.method public I()I
    .locals 0

    .line 17132
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result p0

    return p0
.end method

.method public J()Z
    .locals 1

    .line 17137
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17138
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->s()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public K()Z
    .locals 1

    .line 17146
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17147
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->t()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public L()Z
    .locals 0

    .line 17155
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result p0

    return p0
.end method

.method public M()V
    .locals 1

    .line 17160
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->di(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17161
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->di(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/i;->f()V

    :cond_0
    return-void
.end method

.method public N()Z
    .locals 1

    .line 17167
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17168
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bW(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public O()Z
    .locals 1

    .line 17173
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->X()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public P()Z
    .locals 0

    .line 17178
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ca(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public Q()Z
    .locals 0

    .line 17188
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aZ()Z

    move-result p0

    return p0
.end method

.method public R()Z
    .locals 1

    .line 17203
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17204
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->F()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public S()V
    .locals 0

    .line 17227
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dj(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public T()V
    .locals 1

    .line 17249
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17250
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->at()V

    :cond_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 17288
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17289
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aG()V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 1

    .line 17295
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17296
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aH()V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 1

    .line 17302
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17303
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aI()V

    :cond_0
    return-void
.end method

.method public X()Z
    .locals 0

    .line 17309
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public Y()Z
    .locals 0

    .line 17314
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->isAllowSwitchMode()Z

    move-result p0

    return p0
.end method

.method public Z()I
    .locals 1

    .line 17521
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17522
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bF()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(F)F
    .locals 3

    .line 17670
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dm(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 17671
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->dn(Lcom/oplus/camera/CameraManager;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17672
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->dn(Lcom/oplus/camera/CameraManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17673
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dn(Lcom/oplus/camera/CameraManager;)Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    monitor-exit v0

    return p0

    .line 17676
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(D)Landroid/util/Size;
    .locals 1

    .line 17800
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17801
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;D)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    .line 17000
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p3, :cond_0

    .line 17001
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 17004
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eq p2, p3, :cond_1

    .line 17005
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, v1, v1, p1}, Lcom/oplus/camera/ui/d;->b(ZZZZ)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 1

    .line 16559
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->w(Z)V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 16741
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/d;->v(I)V

    goto :goto_0

    .line 16736
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ag;->o()V

    goto :goto_0

    .line 16731
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/d;->v(I)V

    .line 16750
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/CameraManager$52;->a(IZ)V

    .line 16751
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->di()V

    return-void
.end method

.method public a(IIJ)V
    .locals 8

    .line 17232
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->k(I)V

    .line 17233
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/CameraManager;->c(ZZ)V

    .line 17234
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    move-wide v6, p3

    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IIZJ)V

    return-void
.end method

.method public a(IIZZZZ)V
    .locals 7

    .line 18652
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/oplus/camera/ui/d;->a(IIZZZZ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 18812
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 18813
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 18814
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 18815
    iput-object p2, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 18816
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ao()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 18817
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 18818
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 18819
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->B()Z

    move-result p0

    xor-int/2addr p0, v1

    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 18820
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 18187
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;IZ)V

    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .line 17263
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17264
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(IZ)V

    .line 17267
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17268
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 17269
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_1

    move v1, p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 17270
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 17271
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/w/b;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    if-eqz p3, :cond_3

    .line 17275
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;IZ)V

    :cond_3
    return-void
.end method

.method public a(Lcom/oplus/c/a/b/a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 18865
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/c/a/b/a;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V
    .locals 1

    .line 18546
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18547
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/doubleexposure/b;Lcom/oplus/camera/doubleexposure/g$a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/doubleexposure/f;)V
    .locals 1

    .line 18539
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 18540
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/camera/doubleexposure/f;->a()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t;->k(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/u/a;)V
    .locals 2

    .line 17809
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 17813
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/u/a;)Lcom/oplus/camera/u/a;

    .line 17815
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$52$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$52$1;-><init>(Lcom/oplus/camera/CameraManager$52;Lcom/oplus/camera/u/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 1

    .line 18431
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18432
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17013
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->K()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2, p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17014
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 16684
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16685
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dd(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16686
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16687
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->by()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16688
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16690
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->A()Z

    move-result v0

    if-nez v0, :cond_1

    .line 16691
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16692
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16693
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cK(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16694
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/CameraManager;->e(ZZ)V

    .line 16695
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 16698
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16699
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->q(Z)V

    .line 16702
    :cond_2
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16703
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ab(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/oplus/camera/aa;->c(Z)V

    :cond_4
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 18037
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18038
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->c(ZZ)V

    if-eqz p2, :cond_0

    .line 18041
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const-string p1, "pref_video_blur_menu_state"

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 2

    .line 16756
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16757
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16758
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aw()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16759
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dH()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 16766
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/camera/ui/d;->Q(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16767
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->s()F

    move-result p2

    invoke-static {p1, p2}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;F)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16768
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->s()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->b(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16769
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->isNoneSatUltraWideAngleOpen()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16770
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->bO()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "pref_zoom_key"

    .line 16771
    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$52;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 16763
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ui/d;->Q(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 18771
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18775
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_flashmode_key"

    .line 16638
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "pref_camera_videoflashmode_key"

    .line 16639
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16640
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16641
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bG()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16642
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/camera/ui/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "pref_intelligent_high_frame_selected_key"

    .line 16643
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16644
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const-string p1, "key_intelligent_high_frame_usage_key"

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .line 16985
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16986
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2, p1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "pref_camera_torch_mode_key"

    .line 16988
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->dh(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16989
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "pref_camera_hdr_mode_key"

    const-string v1, "off"

    .line 16990
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16991
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16992
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;ZZ)Z
    .locals 8

    .line 16844
    invoke-static {p1}, Lcom/oplus/camera/entry/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "pref_video_size_key"

    .line 16846
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    const-string v0, "pref_video_fps_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p3, :cond_4

    if-nez p2, :cond_4

    .line 16848
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result v3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16849
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v6

    :goto_1
    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 16848
    invoke-static/range {v0 .. v5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;ZZZZ)V

    .line 16852
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    const-string p3, "CameraManager"

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16853
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16854
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16855
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 16856
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bq()Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16857
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16858
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16859
    invoke-virtual {p2}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16860
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16861
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16862
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    sget-object v0, Lcom/oplus/camera/d$a;->MENU:Lcom/oplus/camera/d$a;

    invoke-virtual {p2, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/d$a;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16863
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    const-string v0, "pref_burst_shot_key"

    invoke-virtual {p2, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result p2

    if-nez p2, :cond_16

    .line 16864
    :cond_5
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->L()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16865
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->aT()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16866
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->B()Z

    move-result p2

    if-nez p2, :cond_16

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16867
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->ba()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16868
    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    const-string v0, "key_intelligent_high_frame_usage_key"

    invoke-virtual {p2, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string p2, "pref_camera_high_resolution_key"

    .line 16890
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 16891
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    const v0, 0x7f10050c

    invoke-virtual {p2, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 16894
    :cond_7
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->B()Z

    move-result p2

    const-string v0, "pref_video_blur_menu"

    if-nez p2, :cond_b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 16895
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->O()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 16896
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->aL()I

    move-result p2

    if-nez p2, :cond_8

    .line 16897
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->O(I)V

    return v6

    .line 16900
    :cond_8
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->df(Lcom/oplus/camera/CameraManager;)V

    .line 16901
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    invoke-static {p2, v1, v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/content/SharedPreferences;Z)V

    .line 16902
    invoke-virtual {p0, v7, v7}, Lcom/oplus/camera/CameraManager$52;->setBlurIndex(IZ)V

    goto :goto_2

    .line 16904
    :cond_9
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->aN()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 16905
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->df(Lcom/oplus/camera/CameraManager;)V

    .line 16906
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    invoke-static {p1, p2, v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Landroid/content/SharedPreferences;Z)V

    .line 16907
    invoke-virtual {p0, v7, v7}, Lcom/oplus/camera/CameraManager$52;->setBlurIndex(IZ)V

    .line 16908
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/oplus/camera/capmode/ModeManager;->B(Z)V

    return v6

    .line 16912
    :cond_a
    :goto_2
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->dg(Lcom/oplus/camera/CameraManager;)V

    .line 16915
    :cond_b
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "pref_portrait_new_style_menu"

    const-string v1, "pref_video_filter_menu"

    if-nez p2, :cond_c

    const-string p2, "pref_tilt_shift_blur_menu"

    .line 16916
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "pref_filter_menu"

    .line 16917
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 16918
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "pref_portrait_blur_menu"

    .line 16919
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 16920
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "pref_video_super_eis_key"

    .line 16921
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 16922
    :cond_c
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/oplus/camera/ui/d;->B(Z)V

    .line 16925
    :cond_d
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oplus/camera/ui/d;->r(Ljava/lang/String;)V

    .line 16927
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 16928
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "pref_night_filter_menu"

    .line 16929
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 16930
    :cond_e
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->aW()V

    .line 16933
    :cond_f
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ag;->j()Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p2, "onMenuButtonClick(), consumed by ZoomMenu"

    .line 16934
    invoke-static {p3, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "pref_night_tripod_mode_key"

    .line 16936
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 16937
    invoke-virtual {p0, p2}, Lcom/oplus/camera/CameraManager$52;->h(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    const-string p2, "com.oplus.night.tripod.zoom.hide.ultra.wide.support"

    .line 16938
    invoke-static {p2}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 16939
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/oplus/camera/ag;->b(Z)Z

    .line 16940
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2, v6}, Lcom/oplus/camera/ag;->j(Z)V

    goto :goto_3

    .line 16942
    :cond_10
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/oplus/camera/ag;->b(Z)Z

    .line 16943
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/oplus/camera/ag;->j(Z)V

    goto :goto_3

    .line 16946
    :cond_11
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    invoke-virtual {p2, v7}, Lcom/oplus/camera/ag;->j(Z)V

    :goto_3
    const-string p2, "key_multicamera_type_menu_key"

    .line 16949
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16950
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/d;->af()Z

    move-result p3

    if-eqz p3, :cond_12

    .line 16951
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p3

    invoke-virtual {p3, p2, v7, v7, v7}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;ZII)V

    .line 16952
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "multi_video_setting_menu_reddot_show"

    invoke-interface {p2, p3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 16953
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_12
    const-string p2, "pref_super_raw_control_key"

    .line 16956
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    iget-object p3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16957
    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/camera/ui/d;->ag()Z

    move-result p3

    if-eqz p3, :cond_13

    .line 16958
    iget-object p3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p3

    invoke-virtual {p3, p2, v7, v7, v7}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;ZII)V

    .line 16959
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "super_raw_setting_menu_reddot_show"

    invoke-interface {p2, p3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 16960
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    const-string p2, "pref_focus_peaking_key"

    .line 16963
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16964
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "focus_peaking_clicked"

    invoke-interface {p1, p2, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_14

    .line 16966
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/j;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 16967
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16970
    :cond_14
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string p2, "common"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16971
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aA()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 16972
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/oplus/camera/ui/d;->l(Z)V

    :cond_15
    return v6

    .line 16869
    :cond_16
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMenuButtonClick, key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mbPaused: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16870
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbDoubleFinger: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16871
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mbInitialized: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16872
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->de(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mbFrameAvailable: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16873
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !isPreviewStarted: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16874
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bq()Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbSizeChanging: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16875
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", CaptureModeChangeState: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16876
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAnimationRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16877
    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->e()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbSwitchingCamera: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16878
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEffectMenuScrolling: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16879
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->cU()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mModeManager.isAllowSwitch: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16880
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    sget-object v0, Lcom/oplus/camera/d$a;->MENU:Lcom/oplus/camera/d$a;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/d$a;)Z

    move-result p1

    xor-int/2addr p1, v6

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbBurstShot: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16881
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->L(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTimerSnapShotRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16882
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->L()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mModeManager.isVideoRecordStarting: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16883
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->aT()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mCameraUIManager.isAnimationRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16884
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/ui/d;->B()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mModeManager.isVideoRecordStopping: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 16885
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ba()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16869
    invoke-static {p3, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public aA()V
    .locals 1

    .line 17909
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17910
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cr()V

    :cond_0
    return-void
.end method

.method public aB()V
    .locals 1

    .line 17916
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17917
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cs()V

    :cond_0
    return-void
.end method

.method public aC()V
    .locals 1

    .line 17923
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17924
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->p()V

    :cond_0
    return-void
.end method

.method public aD()Ljava/lang/String;
    .locals 1

    .line 17930
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17931
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dm()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "key_filter_index"

    :goto_0
    return-object p0
.end method

.method public aE()Ljava/lang/String;
    .locals 1

    .line 17936
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dn()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_filter_menu"

    :goto_0
    return-object p0
.end method

.method public aF()Ljava/lang/String;
    .locals 1

    .line 17941
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->do()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "pref_video_blur_menu"

    :goto_0
    return-object p0
.end method

.method public aG()V
    .locals 2

    .line 17946
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17947
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aR()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;F)F

    :cond_0
    const/4 v0, 0x4

    .line 17950
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ca()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 17951
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;F)V

    :cond_1
    return-void
.end method

.method public aH()V
    .locals 2

    .line 17957
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ca()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->aO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17958
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bh(Lcom/oplus/camera/CameraManager;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;F)V

    :cond_0
    return-void
.end method

.method public aI()Z
    .locals 3

    .line 17964
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 17965
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->az()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 17969
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aJ()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.oplus.feature.tilt.shift.fastvideo.support"

    .line 17970
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 17974
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cS()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "com.oplus.star.video.support"

    .line 17975
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public aJ()Z
    .locals 1

    .line 17982
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17983
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bM()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public aK()V
    .locals 1

    .line 17991
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17992
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dg()V

    :cond_0
    return-void
.end method

.method public aL()I
    .locals 1

    .line 17998
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17999
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bQ()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3c

    return p0
.end method

.method public aM()V
    .locals 1

    .line 18030
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18031
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->O()V

    :cond_0
    return-void
.end method

.method public aN()Z
    .locals 1

    .line 18048
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18049
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bR()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aO()Z
    .locals 1

    .line 18057
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18058
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aJ()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aP()Z
    .locals 1

    .line 18066
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18067
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aK()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aQ()Z
    .locals 0

    .line 18092
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aR()Lcom/oplus/camera/ui/a/a;
    .locals 0

    .line 18096
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->k()Lcom/oplus/camera/ui/a/a;

    move-result-object p0

    return-object p0
.end method

.method public aS()I
    .locals 0

    .line 18101
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cy(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public aT()Z
    .locals 0

    .line 18106
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aW(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aU()Z
    .locals 0

    .line 18111
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bS(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public aV()V
    .locals 1

    .line 18116
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18117
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ct()V

    :cond_0
    return-void
.end method

.method public aW()V
    .locals 0

    .line 18164
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->do(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public aX()Z
    .locals 2

    .line 18169
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18170
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->eo()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/camera/Camera;->l:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oplus/camera/Camera;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18173
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18174
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "key_support_show_dim_hint"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18175
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18176
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dp(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18177
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->c()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public aY()Z
    .locals 0

    .line 18206
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p0

    return p0
.end method

.method public aZ()Z
    .locals 1

    .line 18211
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18212
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cH()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aa()I
    .locals 1

    .line 17530
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17531
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bC()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ab()I
    .locals 1

    .line 17571
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17572
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bH()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x28

    return p0
.end method

.method public ac()[I
    .locals 1

    .line 17580
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17581
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bI()[I

    move-result-object p0

    return-object p0

    .line 17583
    :cond_0
    sget-object p0, Lcom/oplus/camera/d;->a:[I

    return-object p0
.end method

.method public ad()[I
    .locals 1

    .line 17589
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17590
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bJ()[I

    move-result-object p0

    return-object p0

    .line 17592
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/g;->a:[I

    return-object p0
.end method

.method public ae()I
    .locals 1

    .line 17619
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17620
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bK()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public af()Z
    .locals 1

    .line 17628
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17629
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ch()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ag()Z
    .locals 1

    .line 17637
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17638
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bL()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ah()Z
    .locals 1

    .line 17653
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17654
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->j()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ai()Z
    .locals 1

    .line 17662
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17663
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aj()Z
    .locals 1

    .line 17683
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17684
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bl()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ak()V
    .locals 2

    .line 17692
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dm(Lcom/oplus/camera/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 17693
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->dn(Lcom/oplus/camera/CameraManager;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17694
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 17696
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public al()V
    .locals 1

    .line 17708
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17709
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->c()V

    :cond_0
    return-void
.end method

.method public am()Z
    .locals 1

    .line 17715
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public an()V
    .locals 0

    .line 17720
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aw()Z

    return-void
.end method

.method public ao()Ljava/lang/String;
    .locals 1

    .line 17725
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17726
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public ap()Z
    .locals 1

    .line 17734
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17735
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cN()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aq()Z
    .locals 1

    .line 17743
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17744
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ar()Z
    .locals 1

    .line 17752
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17753
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public as()Z
    .locals 1

    .line 17761
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17762
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->c()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public at()Z
    .locals 1

    .line 17770
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17771
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->d()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public au()V
    .locals 1

    .line 17847
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17848
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cw()V

    :cond_0
    return-void
.end method

.method public av()Z
    .locals 1

    .line 17854
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17855
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bh()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 17863
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17864
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cU()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ax()Landroid/util/Size;
    .locals 1

    .line 17872
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17873
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t;->c(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public ay()V
    .locals 1

    .line 17881
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/16 v0, 0x44

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public az()Z
    .locals 1

    .line 17891
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17892
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->af()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(II)V
    .locals 3

    .line 17212
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17213
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/ui/preview/o;->a(II)V

    .line 17216
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->aO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17217
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bJ()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 17218
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/d;->bJ()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->initialize(Landroid/util/Size;Landroid/graphics/Rect;)V

    .line 17221
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aU(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/tiltshift/TiltShiftManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/tiltshift/TiltShiftManager;->setPreviewSize(II)V

    :cond_2
    return-void
.end method

.method public b(Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 17835
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->b(Lcom/oplus/camera/u/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18182
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 8

    .line 17364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeTitleClick, modeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17366
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bq()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 17373
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->eL()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "onModeTitleClick, TimeLapseProMenu\'s animation is running, so return."

    .line 17374
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17379
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aP()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 17383
    :cond_2
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->L()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "onModeTitleTouch, can not touch, timesnap is running"

    .line 17384
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17389
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onModeTitleTouch, can not touch, video record started"

    .line 17390
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_0

    .line 17395
    :cond_5
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->f()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "night"

    .line 17397
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17398
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17399
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(Ljava/lang/String;)Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    const-string v1, "pref_support_night_process"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/BaseMode;->getSupportFunction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17400
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->q()Ljava/lang/String;

    move-result-object p1

    .line 17403
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17405
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "common"

    .line 17409
    :cond_7
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->D()V

    .line 17410
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/camera/ui/d;->b(ILjava/lang/String;)V

    .line 17414
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17415
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    goto :goto_1

    :cond_8
    move v0, v1

    .line 17420
    :goto_1
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/g;->m()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 17421
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/g;->m()Lcom/oplus/camera/screen/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v2

    goto :goto_2

    :cond_9
    move v2, v1

    :goto_2
    const/4 v3, 0x1

    if-ne v3, v0, :cond_a

    move v4, v3

    goto :goto_3

    :cond_a
    move v4, v1

    :goto_3
    if-eqz v4, :cond_b

    move v5, v3

    goto :goto_4

    :cond_b
    const/4 v5, 0x3

    .line 17428
    :goto_4
    iget-object v6, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v6}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oplus/camera/ui/d;->dY()Z

    move-result v6

    const/16 v7, 0x96

    if-eqz v6, :cond_c

    .line 17429
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bL()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->r()Z

    move-result v0

    if-eqz v0, :cond_f

    sget v0, Lcom/oplus/camera/util/Util;->i:I

    if-le v7, v0, :cond_f

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17431
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 17432
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ui/d;->a(II)V

    goto :goto_5

    .line 17435
    :cond_c
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v6

    if-nez v6, :cond_d

    .line 17436
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ui/d;->a(II)V

    goto :goto_5

    :cond_d
    if-eq v3, v2, :cond_e

    .line 17437
    sget v2, Lcom/oplus/camera/util/Util;->i:I

    if-lt v7, v2, :cond_e

    sget v2, Lcom/oplus/camera/util/Util;->i:I

    if-le v7, v2, :cond_f

    if-eq v3, v0, :cond_f

    .line 17441
    :cond_e
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/oplus/camera/ui/d;->a(II)V

    :cond_f
    :goto_5
    if-eqz v4, :cond_10

    .line 17446
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/oplus/camera/ui/d;->c(ZI)V

    goto :goto_6

    .line 17448
    :cond_10
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->j()V

    .line 17451
    :goto_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v3}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    .line 17453
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_11

    .line 17454
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    .line 17455
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v3, v1}, Lcom/oplus/camera/ui/d;->b(ZI)V

    .line 17456
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v3}, Lcom/oplus/camera/ui/d;->a(II)V

    :cond_11
    return-void

    .line 17367
    :cond_12
    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onModeTitleTouch, return false, state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mbFrameAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17368
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->T(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 17367
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 17701
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17702
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->b(Z)Z

    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 1

    .line 18528
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 18530
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ag;->d(Z)V

    goto :goto_0

    .line 18532
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/oplus/camera/ag;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Z
    .locals 0

    .line 16564
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aq()Z

    move-result p0

    return p0
.end method

.method public b(I)Z
    .locals 1

    .line 16785
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16786
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->h(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 18780
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 18784
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 16653
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bA()Z
    .locals 1

    .line 18569
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18570
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dr()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bB()Z
    .locals 1

    .line 18578
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18579
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ds()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bC()V
    .locals 1

    .line 18587
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->du(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18588
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dt()V

    .line 18589
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->x(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_0
    return-void
.end method

.method public bD()V
    .locals 1

    .line 18595
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dv(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18596
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/oplus/camera/w/b;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public bE()V
    .locals 1

    .line 18602
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18603
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->du()V

    :cond_0
    return-void
.end method

.method public bF()Z
    .locals 1

    .line 18615
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18616
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bG()Z
    .locals 1

    .line 18629
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18630
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cQ()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bH()V
    .locals 1

    .line 18644
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18645
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/preview/a/t;->c(I)V

    :cond_0
    return-void
.end method

.method public bI()V
    .locals 1

    .line 18658
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->f(I)V

    return-void
.end method

.method public bJ()Z
    .locals 1

    .line 18662
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const-string v0, "pref_subsetting_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bK()Z
    .locals 1

    .line 18666
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18667
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dC()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bL()Lcom/oplus/camera/screen/b/a;
    .locals 0

    .line 18682
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    return-object p0
.end method

.method public bM()I
    .locals 0

    .line 18687
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public bN()I
    .locals 0

    .line 18691
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->b()I

    move-result p0

    return p0
.end method

.method public bO()I
    .locals 1

    .line 18696
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18697
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dK()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x3c

    return p0
.end method

.method public bP()I
    .locals 0

    .line 18705
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bR(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public bQ()I
    .locals 1

    .line 18710
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dA()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bR()V
    .locals 1

    .line 18715
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18716
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->U()V

    :cond_0
    return-void
.end method

.method public bS()Z
    .locals 1

    .line 18722
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18723
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->T()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bT()Z
    .locals 2

    .line 18746
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cE(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ThumbnailProcessor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 18747
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dw(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cE(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aps/service/ThumbnailProcessor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/aps/service/ThumbnailProcessor;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public bU()Z
    .locals 1

    .line 18755
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18756
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->eI()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bV()Z
    .locals 0

    .line 18789
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public bW()Z
    .locals 1

    .line 18794
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->eJ()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bX()V
    .locals 1

    .line 18825
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18826
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->ai()V

    :cond_0
    return-void
.end method

.method public bY()V
    .locals 1

    .line 18832
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dx(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/v/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18833
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dx(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/v/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/v/c;->b()V

    :cond_0
    return-void
.end method

.method public bZ()V
    .locals 1

    .line 18839
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18840
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bG()Landroid/util/Size;

    move-result-object v0

    .line 18841
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->d(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method public ba()Z
    .locals 3

    .line 18222
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18223
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18224
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1003be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_share_and_edit_key"

    .line 18223
    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "key_support_share_edit_thumb"

    .line 18227
    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager$52;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "on"

    .line 18228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public bb()V
    .locals 3

    .line 18233
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18234
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/oplus/camera/ui/d;->b(ZZZZ)V

    .line 18237
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18238
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 18241
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 18242
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->Y()V

    .line 18245
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18246
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18247
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aA()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18248
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18249
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->bk()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18250
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->cc()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18251
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/oplus/camera/ag;->a(ZZ)V

    :cond_4
    return-void
.end method

.method public bc()Lcom/oplus/camera/entry/b;
    .locals 0

    .line 18270
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p0

    return-object p0
.end method

.method public bd()Z
    .locals 1

    .line 18290
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public be()Z
    .locals 1

    .line 18295
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cP()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bf()Ljava/lang/String;
    .locals 0

    .line 18301
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dq(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bg()Ljava/lang/String;
    .locals 0

    .line 18307
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dr(Lcom/oplus/camera/CameraManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bh()Z
    .locals 2

    .line 18312
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18313
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18314
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cB(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->b(Z)Ljava/lang/String;

    move-result-object p0

    const-string v1, "pref_camera_mode_key"

    .line 18313
    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "movie"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bi()F
    .locals 1

    .line 18319
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cV()F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method public bj()Z
    .locals 1

    .line 18324
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cW()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bk()Z
    .locals 1

    .line 18328
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18329
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bs()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bl()Z
    .locals 1

    .line 18337
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18338
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aa()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bm()Z
    .locals 1

    .line 18345
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18346
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bt()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bn()Z
    .locals 1

    .line 18353
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18354
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bo()V
    .locals 1

    .line 18397
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18398
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->B()V

    :cond_0
    return-void
.end method

.method public bp()Z
    .locals 1

    .line 18404
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bq()Z
    .locals 0

    .line 18409
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result p0

    return p0
.end method

.method public br()V
    .locals 1

    .line 18424
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ds(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/soloop/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18425
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ds(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/soloop/b;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/entry/b;->w()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/soloop/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public bs()V
    .locals 1

    .line 18437
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18438
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->y()V

    :cond_0
    return-void
.end method

.method public bt()Z
    .locals 1

    .line 18444
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18445
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->z()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bu()Z
    .locals 1

    .line 18453
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18454
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->B()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public bv()V
    .locals 3

    .line 18469
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/CameraManager;->e(ZZ)V

    .line 18470
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    return-void
.end method

.method public bw()V
    .locals 1

    .line 18475
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18476
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dt(Lcom/oplus/camera/CameraManager;)V

    .line 18477
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;Z)V

    :cond_0
    return-void
.end method

.method public bx()Z
    .locals 1

    .line 18483
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18484
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public by()Z
    .locals 1

    .line 18519
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18520
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->di()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bz()Landroid/view/View;
    .locals 1

    .line 18560
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18561
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->f()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(I)V
    .locals 1

    .line 17281
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17282
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->i(I)V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 17244
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IIJ)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 16821
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16822
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->I()Lcom/oplus/camera/ui/preview/a/p;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/camera/capmode/ModeManager;->a(Lcom/oplus/camera/ui/preview/a/p;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 17840
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17841
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->s(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/u/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/u/d;->a(Z)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    .line 16569
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;Z)Z
    .locals 0

    .line 18638
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ui/d;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public ca()I
    .locals 0

    .line 18861
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->eH()Lcom/oplus/camera/screen/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result p0

    return p0
.end method

.method public cb()V
    .locals 1

    .line 18869
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18870
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ab;->d(Z)V

    :cond_0
    return-void
.end method

.method public cc()V
    .locals 3

    .line 18875
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18876
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->c(Z)V

    .line 18879
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->bI()Lcom/oplus/camera/ui/preview/g;

    move-result-object v0

    .line 18881
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 18883
    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/g;->X()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18884
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/preview/ab;->d(Z)V

    :cond_1
    return-void
.end method

.method public cd()V
    .locals 1

    .line 18890
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18891
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->C()V

    :cond_0
    return-void
.end method

.method public ce()V
    .locals 1

    .line 18897
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18898
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/preview/ab;->d(Z)V

    :cond_0
    return-void
.end method

.method public cf()V
    .locals 1

    .line 18904
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18905
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/a$c;)V

    :cond_0
    return-void
.end method

.method public cg()Z
    .locals 1

    .line 18911
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18912
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->s()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ch()V
    .locals 2

    .line 18920
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18921
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/d;->ax(Z)V

    .line 18923
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18924
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cg(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/ab;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->e()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/preview/ab;->b(Z)V

    :cond_1
    return-void
.end method

.method public ci()Lcom/oplus/camera/ui/q;
    .locals 0

    .line 18938
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dP()Lcom/oplus/camera/ui/q;

    move-result-object p0

    return-object p0
.end method

.method public d(I)V
    .locals 7

    .line 17462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeItemClick, itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v3, p1, :cond_0

    .line 17464
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x1c

    if-ne v3, p1, :cond_2

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    .line 17466
    :goto_0
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/a/c;->d(I)Ljava/lang/String;

    move-result-object v4

    .line 17468
    iget-object v5, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v5}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17469
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p0, v3, p1, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZIZ)V

    return-void

    :cond_3
    const/16 v5, 0x9

    const/4 v6, -0x1

    if-ne v5, p1, :cond_4

    .line 17474
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->dk(Lcom/oplus/camera/CameraManager;)V

    .line 17475
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/d;->av(Z)V

    .line 17476
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v2, v2, v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    .line 17477
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;Z)V

    return-void

    .line 17481
    :cond_4
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->Y()Z

    move-result v5

    if-nez v5, :cond_5

    const-string p1, "onModeItemClick, is not allowed to switch mode"

    .line 17482
    invoke-static {v1, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17484
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->dl(Lcom/oplus/camera/CameraManager;)V

    .line 17485
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/oplus/camera/ui/d;->av(Z)V

    .line 17486
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v2, v2, v6}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    return-void

    .line 17491
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ag;->y()V

    .line 17492
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/camera/ui/preview/o;->j(Z)V

    const-string v1, "pref_zoom_key"

    .line 17494
    invoke-virtual {p0, v1}, Lcom/oplus/camera/CameraManager$52;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17495
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v0}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 17496
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1, v0}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 17499
    :cond_6
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;Z)V

    .line 17500
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-static {v1, v3, p1, v5}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZIZ)V

    .line 17501
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/camera/ui/d;->q(Z)V

    .line 17502
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    if-nez p1, :cond_7

    const-string p1, "com.oplus.feature.front.panorama.support"

    .line 17505
    invoke-static {p1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 17506
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v4, v0, v2, v0}, Lcom/oplus/camera/CameraManager;->a(Ljava/lang/String;IZZ)Z

    goto :goto_1

    .line 17508
    :cond_7
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v4}, Lcom/oplus/camera/CameraManager;->d(Ljava/lang/String;)Z

    :goto_1
    return-void
.end method

.method public d(II)V
    .locals 2

    .line 18369
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18370
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->J()Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cD(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/oplus/camera/capmode/ModeManager;->a(IIZI)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 16828
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16829
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->f(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 18123
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18124
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;Z)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 0

    .line 16574
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result p0

    return p0
.end method

.method public e(I)I
    .locals 1

    .line 17598
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17599
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->r(I)I

    move-result p0

    return p0

    :cond_0
    const p0, -0x186a0

    return p0
.end method

.method public e()V
    .locals 1

    .line 16579
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->m(Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 17020
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 18136
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18137
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->h(Z)V

    :cond_0
    return-void
.end method

.method public e(II)Z
    .locals 2

    .line 18376
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/screen/g;->a()Lcom/oplus/camera/screen/b/a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18377
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/ui/CameraUIInterface;II)Z

    move-result p0

    .line 18376
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(ZII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(I)V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onBackFromMoreMode"

    .line 17646
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17648
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0, v0, p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;ZZI)V

    return-void
.end method

.method public f(II)V
    .locals 2

    .line 18799
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 18800
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 18801
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 18802
    iput p2, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 18803
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ao()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 18804
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 18805
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p1

    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 18806
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->B()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 18807
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method public f(Z)V
    .locals 5

    .line 18143
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18144
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aj()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ag;->f()Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090436

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18145
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090438

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    .line 18144
    invoke-virtual {v0, v1}, Lcom/oplus/camera/screen/b/a;->a([Landroid/view/View;)V

    .line 18146
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aj()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/-$$Lambda$CameraManager$52$8mPIJ5CIxhoxA1L9oEI1KuoAtDc;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/-$$Lambda$CameraManager$52$8mPIJ5CIxhoxA1L9oEI1KuoAtDc;-><init>(Lcom/oplus/camera/CameraManager$52;Z)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/screen/b/a;->a(Lcom/oplus/camera/screen/b/o$a;)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 0

    .line 16584
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aY()Z

    move-result p0

    return p0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .line 17032
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17033
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g(I)V
    .locals 0

    .line 17886
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public g(II)V
    .locals 1

    .line 18847
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18848
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/ag;->a(II)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 18462
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18463
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->e(Z)V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 0

    .line 16589
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aX()Z

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 17041
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17042
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->e(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getFaceBeautyItemValue(I)I
    .locals 1

    .line 17548
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17549
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->q(I)I

    move-result p0

    return p0

    :cond_0
    const p0, -0x186a0

    return p0
.end method

.method public h(I)V
    .locals 1

    .line 18130
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18131
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->d(I)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 18500
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->t(Z)V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 16594
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16595
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cR()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    .line 17050
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17051
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i(I)V
    .locals 2

    .line 18257
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 18258
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 18259
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const/4 p1, 0x1

    .line 18260
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 18261
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ao()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 18262
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aU()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 18263
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 18264
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->B()Z

    move-result p0

    xor-int/2addr p0, p1

    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureType:I

    .line 18265
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 17239
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 18505
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18506
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->az(Z)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 2

    .line 16603
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->N()I

    move-result p0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j(I)V
    .locals 1

    .line 18362
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18363
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->v(I)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 1

    .line 17256
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17257
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 18609
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18610
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->C(Z)V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 0

    .line 16608
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ba()Z

    move-result p0

    return p0
.end method

.method public k(I)V
    .locals 1

    .line 18553
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18554
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->w(I)V

    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 18624
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->a(Z)V

    return-void
.end method

.method public k()Z
    .locals 0

    .line 16613
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->aU()Z

    move-result p0

    return p0
.end method

.method public k(Ljava/lang/String;)Z
    .locals 6

    .line 17324
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->Y()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "more"

    .line 17325
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 17329
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "isHeadlineCanTouch, modeName: "

    const-string v3, "CameraManager"

    if-eqz v0, :cond_4

    .line 17330
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    .line 17332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentModeName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17335
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "microscope"

    .line 17336
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "microscopeVideo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const-string v4, "starry"

    .line 17337
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "starVideo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "tiltShift"

    .line 17338
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "tiltShiftFastVideo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    return v1

    .line 17343
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17344
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/t;->b()Ljava/lang/String;

    move-result-object p0

    .line 17346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastModeName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17348
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public l(I)V
    .locals 3

    const/4 v0, 0x7

    if-ne v0, p1, :cond_0

    .line 18675
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18676
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p1

    const/4 v1, 0x1

    const-string v2, "key_bottom_guide_type_makeup"

    invoke-virtual {p1, v2, v1}, Lcom/oplus/camera/ComboPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18677
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->k(I)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 17359
    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/CameraManager$52;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Z)V
    .locals 1

    .line 18764
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18765
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->as(Z)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 0

    .line 16618
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->A()Z

    move-result p0

    return p0
.end method

.method public m()V
    .locals 0

    .line 16623
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->m()V

    return-void
.end method

.method public m(I)V
    .locals 1

    .line 18854
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18855
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->f(I)V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)Z
    .locals 2

    .line 17779
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    if-eqz v0, :cond_3

    .line 17780
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dv()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "pref_camera_hdr_mode_key"

    .line 17781
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dw()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "pref_filter_menu"

    .line 17782
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dx()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 17787
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 17791
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 17792
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->o(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0

    .line 17788
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aW(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public n()I
    .locals 0

    .line 16628
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->br(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    .line 18192
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18193
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->p(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 0

    .line 16633
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->M()V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    .line 18199
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18200
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->q(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEffectItemChange(IZZ)V
    .locals 0

    .line 16709
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;IZZ)V

    return-void
.end method

.method public onFaceBeautyItemChange(I)V
    .locals 1

    .line 17557
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17558
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->p(I)V

    :cond_0
    return-void
.end method

.method public onFaceBeautyItemValueChange(IIZ)V
    .locals 1

    .line 17564
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17565
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/ModeManager;->b(IIZ)V

    :cond_0
    return-void
.end method

.method public onMakeupTypeChanged(IZ)V
    .locals 1

    .line 17606
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17607
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->c(IZ)V

    :cond_0
    return-void
.end method

.method public onMakeupValueChanged(IIZ)V
    .locals 1

    .line 17612
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17613
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/camera/capmode/ModeManager;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public onMultiCameraTypeChanged(I)V
    .locals 2

    .line 18382
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 18383
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_multicamera_type_selected_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18384
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cS(Lcom/oplus/camera/CameraManager;)V

    .line 18385
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->s(I)V

    :cond_0
    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 2

    .line 18275
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 18276
    new-instance v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 18277
    invoke-virtual {v0, v1}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    .line 18278
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->I()I

    move-result v1

    iput v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCameraId:I

    .line 18279
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 18280
    iput-object p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mToolbarType:Ljava/lang/String;

    const/16 p1, 0x1a

    .line 18281
    iput p1, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    .line 18282
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p0

    const-string p1, "off"

    const-string v1, "pref_subsetting_key"

    invoke-virtual {p0, v1, p1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 18283
    :goto_0
    iput p0, v0, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 18284
    invoke-virtual {v0}, Lcom/oplus/camera/statistics/model/MenuClickMsgData;->report()V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 0

    .line 16658
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->at(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public q()V
    .locals 4

    .line 16663
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v2, "pref_zoom_key"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->au(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/screen/g;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 16664
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$52;->ca()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 16665
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v3}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 16666
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->w(Z)V

    .line 16669
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16670
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bf()V

    .line 16673
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16674
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/aa;->c(Z)V

    .line 16677
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->aA()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16678
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/ui/d;->J(Z)V

    :cond_3
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 0

    .line 18419
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->d(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 0

    .line 16719
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->af()V

    return-void
.end method

.method public resetFaceBeautyValues()V
    .locals 1

    .line 17514
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17515
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bG()V

    :cond_0
    return-void
.end method

.method public s()F
    .locals 0

    .line 16724
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aO()F

    move-result p0

    return p0
.end method

.method public setBlurIndex(IZ)V
    .locals 1

    .line 18007
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18008
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/capmode/ModeManager;->t(I)V

    if-eqz p2, :cond_2

    .line 18011
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string p2, "func_video_blur_process"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18012
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const-string p1, "pref_video_blur_menu_state"

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    goto :goto_0

    .line 18013
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string p2, "func_face_blur"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 18014
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    const-string p2, "func_bokeh"

    invoke-virtual {p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18015
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    const-string p1, "pref_portrait_blur_menu_index"

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public t()Z
    .locals 0

    .line 16780
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->L()Z

    move-result p0

    return p0
.end method

.method public u()Z
    .locals 1

    .line 16794
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16795
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->K()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public v()I
    .locals 2

    .line 16803
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/camera/capmode/ModeManager;->n(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public w()Z
    .locals 1

    .line 16812
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16813
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const-string v0, "pref_subsetting_key"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()Z
    .locals 1

    .line 16835
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16836
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->N()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()V
    .locals 1

    .line 17025
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17026
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->t()V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 1

    .line 17059
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17060
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->ab()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
