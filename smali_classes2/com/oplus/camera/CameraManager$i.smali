.class Lcom/oplus/camera/CameraManager$i;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ag$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 13436
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 13436
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$i;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method private d(F)V
    .locals 3

    .line 13506
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->at()I

    move-result v0

    .line 13508
    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager$i;->a(F)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 13510
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->bV(Lcom/oplus/camera/CameraManager;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 13511
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/oplus/camera/CameraManager;->z(Lcom/oplus/camera/CameraManager;Z)Z

    .line 13512
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1}, Lcom/oplus/camera/ui/d;->a(ZZZ)V

    .line 13513
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v0}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;I)V

    goto :goto_0

    .line 13517
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1, v1}, Lcom/oplus/camera/CameraManager;->z(Lcom/oplus/camera/CameraManager;Z)Z

    .line 13518
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 13521
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->dJ()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->dH()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aG()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13522
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const p1, 0x7f1004c9

    const v0, 0x7f0805e9

    const v2, 0x7f0604ff

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/oplus/camera/ui/d;->b(III[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    .line 13831
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public B()Z
    .locals 1

    .line 13856
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "func_bokeh"

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager$i;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C()Z
    .locals 1

    .line 13861
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13862
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->dL()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public D()I
    .locals 1

    .line 13870
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13871
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->s()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public a(FZ)V
    .locals 0

    .line 13844
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/CameraManager;->a(FZ)V

    return-void
.end method

.method public a(FZF)V
    .locals 4

    .line 13458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onZoomChange, zoomValue: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraManager"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13460
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13461
    invoke-static {p2, p1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;F)Z

    move-result p2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13462
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/ag;->b()F

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;F)Z

    move-result v0

    .line 13461
    invoke-static {p2, v0}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p2

    if-eqz p2, :cond_1

    .line 13463
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p2

    const/16 v0, 0x15

    invoke-virtual {p2, v0}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 13464
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 13465
    iput v0, p2, Landroid/os/Message;->what:I

    .line 13466
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "com.oplus.sat.main.zoom.range"

    .line 13467
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigFloatArrayValue(Ljava/lang/String;)[F

    move-result-object v0

    .line 13471
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    array-length v3, v0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13473
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ag;->b()F

    move-result v2

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13474
    invoke-static {v0, p1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1e0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 13471
    :goto_0
    invoke-virtual {v1, p2, v2, v3}, Lcom/oplus/camera/w/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 13478
    :cond_1
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->bN()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/ModeManager;->cL()Z

    move-result p2

    if-nez p2, :cond_2

    .line 13479
    invoke-direct {p0, p3}, Lcom/oplus/camera/CameraManager$i;->d(F)V

    .line 13482
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    const-string p3, "off"

    const-string v0, "pref_subsetting_key"

    invoke-virtual {p2, v0, p3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "on"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13483
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13486
    :cond_3
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->bK()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13487
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->cw()V

    .line 13490
    :cond_4
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/camera/ui/d;->K()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 13491
    iget-object p2, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p2

    invoke-virtual {p2, p3, p3, p3, p3}, Lcom/oplus/camera/ui/d;->a(ZZZZ)V

    .line 13494
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/oplus/camera/CameraManager$i;->a(FZ)V

    .line 13496
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13497
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->bv()V

    :cond_6
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 13729
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13730
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->e(I)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 13617
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13618
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->y(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .line 13439
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13440
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_zoom_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13441
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cN()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13442
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13443
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->R()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(F)Z
    .locals 0

    .line 13540
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->d(F)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 13453
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b(F)V
    .locals 1

    .line 13624
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13625
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/e/d;->b(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 13805
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13806
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/camera/ui/d;->G(I)V

    .line 13809
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13810
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->f(I)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 13631
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13632
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->u(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 13447
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13448
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "pref_zoom_key"

    invoke-virtual {v0, v1}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13449
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->cN()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 0

    .line 13530
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->q()V

    return-void
.end method

.method public c(F)V
    .locals 1

    .line 13736
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13737
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->a(F)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "pref_front_zoom_key"

    .line 13836
    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager$i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13837
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->cc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13838
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/m;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/m;->a(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .line 13535
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->p()V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 13849
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13850
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->i(Z)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 4

    .line 13555
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraManager"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13556
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13557
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v3, "pref_zoom_key"

    invoke-virtual {v0, v3}, Lcom/oplus/camera/capmode/ModeManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13558
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aT()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13559
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ba()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13560
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13561
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13562
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13563
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13564
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/preview/h;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13565
    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aN()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13566
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13567
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13568
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13569
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bW(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 13577
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13578
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->dF()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13579
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->er()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13580
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->em()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 13581
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoomMenuEnabled, headline is scrolling, disable ZoomMenu: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->dF()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDrawerDrag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13582
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/camera/ui/d;->er()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDrawerLayoutHeightNone: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13583
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->em()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13581
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13570
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getZoomMenuEnabled, isPreviewStarted: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSizeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13571
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->aG(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSwitchingCamera: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->E(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbCaptureModeChanging: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13572
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mbSendCapturePictureRequest: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bW(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13570
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public f()V
    .locals 2

    .line 13593
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13594
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->y(Z)V

    .line 13597
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 13598
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->J()V

    .line 13601
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13602
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cZ()V

    .line 13605
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13606
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/aa;->c(Z)V

    .line 13609
    :cond_3
    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$i;->p()V

    .line 13610
    invoke-static {}, Lcom/oplus/camera/util/Util;->aL()V

    .line 13612
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->b()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 13638
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13639
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->H()V

    .line 13642
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13643
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13644
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->bl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13645
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dL()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13646
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->ak(Z)V

    .line 13649
    :cond_2
    invoke-static {}, Lcom/oplus/camera/perf/FluencyPerformance;->c()V

    return-void
.end method

.method public h()V
    .locals 5

    .line 13654
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 13655
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13656
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->y(Z)V

    .line 13659
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->I()V

    .line 13661
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 13662
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->ao()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13663
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->W()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13664
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 13665
    :goto_0
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/capmode/ModeManager;->bg()Z

    move-result v4

    invoke-virtual {v3, v4, v0}, Lcom/oplus/camera/ui/d;->B(ZZ)V

    .line 13668
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13669
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/ui/d;->G(I)V

    .line 13672
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13673
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->A()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13674
    :cond_5
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lcom/oplus/camera/CameraManager;->a(Landroid/animation/AnimatorListenerAdapter;ZZ)V

    .line 13677
    :cond_6
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 13678
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v3}, Lcom/oplus/camera/CameraManager;->n()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->ab(Lcom/oplus/camera/CameraManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {v0, v1}, Lcom/oplus/camera/aa;->c(Z)V

    .line 13679
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->F(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/aa;->m()V

    :cond_8
    const-string v0, "pref_camera_gradienter_key"

    .line 13682
    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager$i;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13683
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v0, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13684
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "professional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13685
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->T()Z

    move-result v1

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bJ(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/d;->a(ZI)V

    :cond_9
    return-void
.end method

.method public i()V
    .locals 1

    .line 13692
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13693
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->T(Z)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 1

    .line 13699
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13700
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->T(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 5

    .line 13706
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bP()D

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 13708
    :goto_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13709
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bN()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13710
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_2

    cmpl-double v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13712
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "com.oplus.super.resolution.picturesize"

    .line 13714
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13717
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13718
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const v0, 0x7f10050c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 13719
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v1

    .line 13718
    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/ui/d;->a(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 13721
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const v0, 0x7f10050d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ui/d;->a(I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public l()Z
    .locals 1

    .line 13743
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()Z
    .locals 1

    .line 13748
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 13753
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public o()Z
    .locals 1

    .line 13758
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13759
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->aV()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    .line 13760
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bX(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ae;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ae;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()V
    .locals 1

    .line 13765
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    const/16 v0, 0x44

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public q()V
    .locals 1

    .line 13770
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 13775
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->n(Lcom/oplus/camera/CameraManager;I)V

    return-void
.end method

.method public s()Z
    .locals 0

    .line 13780
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bY(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public t()Z
    .locals 0

    .line 13785
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bZ(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public u()Z
    .locals 0

    .line 13790
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ca(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public v()Z
    .locals 0

    .line 13795
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cb(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 1

    .line 13800
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->cv()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public x()Z
    .locals 0

    .line 13816
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p0

    return p0
.end method

.method public y()Z
    .locals 0

    .line 13821
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->K()Z

    move-result p0

    return p0
.end method

.method public z()Z
    .locals 0

    .line 13826
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$i;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result p0

    return p0
.end method
