.class Lcom/oplus/camera/CameraManager$65$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$65;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/CameraManager$65;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$65;Ljava/lang/String;)V
    .locals 0

    .line 20876
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$65$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20879
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20880
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/f;->p()V

    .line 20883
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 20887
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20888
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$3;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIListener;->l(Ljava/lang/String;)V

    return-void

    .line 20892
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->isAllowSwitchMode()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 20896
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$65$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 20900
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->I(Lcom/oplus/camera/CameraManager;Z)Z

    .line 20901
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$3;->b:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->t(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$3;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/CameraUIListener;->l(Ljava/lang/String;)V

    return-void
.end method
