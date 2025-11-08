.class Lcom/oplus/camera/CameraManager$d;
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
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12454
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12454
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$d;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const-string v0, "CameraManager"

    const-string v1, "BlurModeAnimationListenerImpl, onAnimationEnd"

    .line 12488
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12490
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$d;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12492
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12493
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/z;->b(Z)V

    .line 12496
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->cp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;I)V

    .line 12497
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12498
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12499
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12500
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->h(Z)V

    .line 12501
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->i(Z)V

    .line 12502
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12503
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 12505
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aj()Lcom/oplus/camera/screen/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/screen/b/a;->j()I

    move-result v0

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    .line 12506
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 12507
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v3

    xor-int/2addr v1, v2

    iget-object v4, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v4}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/camera/ui/d;->R()Z

    move-result v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/oplus/camera/ui/d;->b(IZZ)V

    .line 12509
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 4

    const-string p1, "CameraManager"

    const-string v0, "BlurModeAnimationListenerImpl, onAnimationStart"

    .line 12457
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12459
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12460
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const v0, 0x7f1006d5

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12461
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const v0, 0x7f1006d6

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/d;->a(I)V

    .line 12463
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->aD()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    .line 12464
    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->h(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    const-string v3, "common"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    .line 12465
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    .line 12464
    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    .line 12465
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->c()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 12466
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v0}, Lcom/oplus/camera/CameraManager;->l(I)Z

    goto :goto_0

    .line 12468
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 12469
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/CameraManager;->n(I)V

    .line 12471
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "commonVideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12472
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$d;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bM(Lcom/oplus/camera/CameraManager;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    const-string p0, "CameraManager"

    const-string p1, "BlurModeAnimationListenerImpl, onAnimationMiddle"

    .line 12479
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12481
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 12482
    invoke-static {p0}, Lcom/oplus/camera/ui/menu/g;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method
