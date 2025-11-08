.class Lcom/oplus/camera/CameraManager$65;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/watch/b$a;


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

    .line 20819
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 20822
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$65$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$65$1;-><init>(Lcom/oplus/camera/CameraManager$65;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 2

    .line 20856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraContract.setWatchSize, size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20858
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20859
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/camera/ui/d;->h(II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 20874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraContract.watchSwitchMode, modeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20876
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$65$3;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$65$3;-><init>(Lcom/oplus/camera/CameraManager$65;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 20834
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$65$2;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$65$2;-><init>(Lcom/oplus/camera/CameraManager$65;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 20908
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$65$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$65$4;-><init>(Lcom/oplus/camera/CameraManager$65;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lcom/oplus/camera/gl/GLRootView;
    .locals 1

    .line 20847
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20848
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->a()Lcom/oplus/camera/gl/GLRootView;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 20865
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20866
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Landroid/util/Size;
    .locals 1

    .line 20943
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20947
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->U(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/t;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aF(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/e/h;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/t;->a(Lcom/oplus/camera/e/h;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public f()I
    .locals 0

    .line 20952
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->P(Lcom/oplus/camera/CameraManager;)I

    move-result p0

    return p0
.end method

.method public g()V
    .locals 2

    .line 20957
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$65$5;

    invoke-direct {v1, p0}, Lcom/oplus/camera/CameraManager$65$5;-><init>(Lcom/oplus/camera/CameraManager$65;)V

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
