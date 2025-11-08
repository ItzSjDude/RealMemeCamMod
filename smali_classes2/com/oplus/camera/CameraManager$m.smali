.class Lcom/oplus/camera/CameraManager$m;
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
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12392
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12392
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$m;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "HdrAnimationListenerImpl, onAnimationEnd"

    .line 12430
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12432
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$m;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12434
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12435
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/z;->b(Z)V

    .line 12438
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12439
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12440
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12441
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->h(Z)V

    .line 12442
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12443
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 12445
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    const-string p1, "CameraManager"

    const-string v0, "HdrAnimationListenerImpl, onAnimationStart"

    .line 12395
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12397
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12399
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->R(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/camera/e/d;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 12401
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->af(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->C(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$n;->b()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onAnimationStart, open camera"

    .line 12402
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12404
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0, v2}, Lcom/oplus/camera/CameraManager;->l(I)Z

    goto :goto_0

    :cond_0
    const-string p0, "onAnimationStart, mode is changing or will change soon, don\'t open camera"

    .line 12406
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12410
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->ar()V

    .line 12411
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1, v2}, Lcom/oplus/camera/CameraManager;->n(I)V

    .line 12413
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p1

    const-string v0, "commonVideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12414
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$m;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bM(Lcom/oplus/camera/CameraManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    const-string p0, "CameraManager"

    const-string p1, "HdrAnimationListenerImpl, onAnimationMiddle"

    .line 12421
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12423
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12424
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->d()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method
