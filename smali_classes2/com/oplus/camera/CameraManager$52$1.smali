.class Lcom/oplus/camera/CameraManager$52$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$52;->a(Lcom/oplus/camera/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/u/a;

.field final synthetic b:Lcom/oplus/camera/CameraManager$52;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$52;Lcom/oplus/camera/u/a;)V
    .locals 0

    .line 17815
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$52$1;->a:Lcom/oplus/camera/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 17818
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17823
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager$52;->aY()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->bW()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    .line 17824
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aV(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/capmode/a;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 17825
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52$1;->a:Lcom/oplus/camera/u/a;

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    goto :goto_0

    .line 17827
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52$1;->b:Lcom/oplus/camera/CameraManager$52;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$52;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/u/a;)V

    :cond_4
    :goto_0
    return-void
.end method
