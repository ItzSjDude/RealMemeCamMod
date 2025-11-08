.class Lcom/oplus/camera/CameraManager$k;
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
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/CameraManager;)V
    .locals 0

    .line 12518
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 12518
    invoke-direct {p0, p1}, Lcom/oplus/camera/CameraManager$k;-><init>(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method private synthetic c()V
    .locals 0

    .line 12525
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bo(Lcom/oplus/camera/CameraManager;)V

    return-void
.end method

.method public static synthetic lambda$NzB-1003wfsZ8QYkRJ30Cb0OFK0(Lcom/oplus/camera/CameraManager$k;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/CameraManager$k;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "FishEyeAnimationListenerImpl, onAnimationEnd"

    .line 12544
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12546
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager$k;->b()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    .line 12548
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12549
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bP(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/z;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/z;->b(Z)V

    .line 12552
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->cp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;I)V

    .line 12553
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12554
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->f(Z)V

    .line 12555
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(Z)V

    .line 12556
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->d(I)V

    .line 12557
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/d;->i(Z)V

    .line 12559
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    const/16 v0, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/oplus/camera/capmode/ModeManager;->b(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 3

    const-string p1, "CameraManager"

    const-string v0, "FishEyeAnimationListenerImpl, onAnimationStart"

    .line 12521
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12523
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/oplus/camera/ui/d;->d(ZZ)V

    .line 12525
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/-$$Lambda$CameraManager$k$NzB-1003wfsZ8QYkRJ30Cb0OFK0;

    invoke-direct {v0, p0}, Lcom/oplus/camera/-$$Lambda$CameraManager$k$NzB-1003wfsZ8QYkRJ30Cb0OFK0;-><init>(Lcom/oplus/camera/CameraManager$k;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/oplus/camera/w/b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    const-string p1, "CameraManager"

    const-string p2, "FishEyeAnimationListenerImpl, onAnimationMiddle"

    .line 12530
    invoke-static {p1, p2}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12532
    invoke-static {}, Lcom/oplus/camera/ui/menu/g;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 12533
    invoke-static {p1}, Lcom/oplus/camera/ui/menu/g;->a(Z)V

    .line 12537
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p1}, Lcom/oplus/camera/CameraManager;->E()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12538
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$k;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->c()Lcom/oplus/camera/ui/preview/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/h;->m()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method
