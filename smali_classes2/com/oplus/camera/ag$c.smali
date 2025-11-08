.class Lcom/oplus/camera/ag$c;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 3067
    iput-object p1, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ag;Lcom/oplus/camera/ag$1;)V
    .locals 0

    .line 3067
    invoke-direct {p0, p1}, Lcom/oplus/camera/ag$c;-><init>(Lcom/oplus/camera/ag;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 3070
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->I(Lcom/oplus/camera/ag;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Z
    .locals 0

    .line 3080
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->w()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    .line 3085
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->s()Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 3090
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->u()Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 1

    .line 3100
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Z
    .locals 1

    .line 3114
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3115
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()Z
    .locals 1

    .line 3123
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3124
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->y()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public h()Z
    .locals 1

    .line 3132
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3133
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ag$a;->z()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public i()F
    .locals 1

    .line 3141
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3142
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;)Lcom/oplus/camera/af;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/af;->N()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public j()Z
    .locals 1

    .line 3150
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->J(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->J(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    .line 3151
    invoke-static {v0}, Lcom/oplus/camera/ag;->K(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->K(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertialZoomButton;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertialZoomButton;->a()Z

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

.method public k()Z
    .locals 0

    .line 3162
    iget-object p0, p0, Lcom/oplus/camera/ag$c;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p0}, Lcom/oplus/camera/ag;->t()Z

    move-result p0

    return p0
.end method
