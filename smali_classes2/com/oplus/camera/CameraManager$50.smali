.class Lcom/oplus/camera/CameraManager$50;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/v/a;


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

    .line 15987
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 15990
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->M(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15991
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    .line 15992
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->S()Ljava/lang/String;

    move-result-object v0

    .line 15994
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFlash torchMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraManager"

    invoke-static {v3, v2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15996
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16000
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->af()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 16005
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->b(Ljava/lang/String;)V

    .line 16006
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->f(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oplus/camera/e/d;->a(Lcom/oplus/camera/e/d$c;)V

    .line 16008
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 16009
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t;->h()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->setFlashState()V

    .line 16012
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->bb(Lcom/oplus/camera/CameraManager;)V

    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 3

    .line 16025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustBrightness, brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMaxScreenBrightness: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->cM(Lcom/oplus/camera/CameraManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16027
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/t;->h()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/BaseMode;->getBrightness()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 16028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mBrightness: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    .line 16029
    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/t;->h()Lcom/oplus/camera/capmode/BaseMode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->getBrightness()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", so do not set brightness by system"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16028
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16035
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 16036
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 16037
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 16038
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->cM(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 16039
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 16018
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16019
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/ModeManager;->b(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 16065
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16066
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/capmode/ModeManager;->a(II)V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 2

    .line 16045
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 16046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishByHighTemperature isStartCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", highTempProtectStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraManager"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 16050
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p2

    const v0, 0x7f1001ea

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 16051
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 16054
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    const-string p2, "disable_code"

    const-string v0, "temps_cam"

    invoke-static {p1, p2, v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 16055
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 16057
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->dc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/v/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16058
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->dc(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/v/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/v/b;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 16072
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16073
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$50;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/d;->x(I)V

    :cond_0
    return-void
.end method
