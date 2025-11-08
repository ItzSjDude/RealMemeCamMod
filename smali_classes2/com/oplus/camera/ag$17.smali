.class Lcom/oplus/camera/ag$17;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/widget/InertiaZoomBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->u(Lcom/oplus/camera/ag;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    .line 953
    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.disable.shutter.button.up.vibrate"

    .line 954
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    .line 955
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->p()V

    .line 960
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d()V

    :cond_2
    return-void
.end method

.method public a(F)V
    .locals 1

    .line 939
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, p1}, Lcom/oplus/camera/ag;->g(Lcom/oplus/camera/ag;F)F

    move-result p1

    .line 941
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->o(Lcom/oplus/camera/ag;)F

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ag;->a(F)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;)F

    move-result v0

    iget-object v1, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v1}, Lcom/oplus/camera/ag;->v(Lcom/oplus/camera/ag;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    .line 970
    invoke-static {v0}, Lcom/oplus/camera/ag;->b(Lcom/oplus/camera/ag;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.disable.shutter.button.up.vibrate"

    .line 971
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oplus.disable.shutter.button.down.vibrate"

    .line 972
    invoke-static {v0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ag$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ag$a;->p()V

    .line 978
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->d()V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 0

    .line 985
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 990
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->w(Lcom/oplus/camera/ag;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0, v1}, Lcom/oplus/camera/ag;->c(Lcom/oplus/camera/ag;Z)V

    .line 999
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0, v1}, Lcom/oplus/camera/ag;->d(Lcom/oplus/camera/ag;Z)V

    return-void
.end method

.method public f()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/ag;->e(Lcom/oplus/camera/ag;Z)V

    .line 1005
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v2}, Lcom/oplus/camera/ag;->i(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/preview/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/ai;->getCurrentDisplayText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->setThumbText(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->a(Z)V

    .line 1007
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->q(Lcom/oplus/camera/ag;)Lcom/oplus/camera/ui/widget/InertiaZoomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/ui/widget/InertiaZoomBar;->c()V

    .line 1009
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {v0}, Lcom/oplus/camera/ag;->x(Lcom/oplus/camera/ag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    .line 1013
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ag$17;->a:Lcom/oplus/camera/ag;

    invoke-static {p0}, Lcom/oplus/camera/ag;->y(Lcom/oplus/camera/ag;)V

    return-void
.end method
