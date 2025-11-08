.class Lcom/oplus/camera/CameraManager$37;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->g(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;F)V
    .locals 0

    .line 8956
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    iput p2, p0, Lcom/oplus/camera/CameraManager$37;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 8959
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "updateZoomView"

    .line 8963
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 8965
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8966
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aS(Lcom/oplus/camera/CameraManager;)V

    .line 8969
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8970
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/capmode/ModeManager;->dF()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/camera/CameraManager;->u(Z)V

    .line 8973
    :cond_2
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->k(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/entry/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/entry/b;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    const-string v2, "pref_front_zoom_key"

    invoke-virtual {v1, v2}, Lcom/oplus/camera/CameraManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 8974
    :cond_3
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->ag(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ag;

    move-result-object v2

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->getMinZoomValue()F

    move-result v3

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v1}, Lcom/oplus/camera/CameraManager;->aS()F

    move-result v4

    iget v5, p0, Lcom/oplus/camera/CameraManager$37;->a:F

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    .line 8975
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->cu()Lcom/oplus/camera/af;

    move-result-object v7

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    .line 8976
    invoke-static {v1}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/ModeManager;->bS()Z

    move-result v8

    .line 8974
    invoke-virtual/range {v2 .. v8}, Lcom/oplus/camera/ag;->a(FFFLandroid/graphics/Rect;Lcom/oplus/camera/af;Z)V

    .line 8979
    :cond_4
    iget-object v1, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/camera/CameraManager;->l(Lcom/oplus/camera/CameraManager;Z)V

    .line 8980
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$37;->b:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aT(Lcom/oplus/camera/CameraManager;)V

    .line 8982
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method
