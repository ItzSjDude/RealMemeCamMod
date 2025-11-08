.class Lcom/oplus/camera/CameraManager$65$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$65;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$65;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$65;)V
    .locals 0

    .line 20834
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20837
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->aE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    .line 20838
    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->dJ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20839
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$2;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
