.class Lcom/oplus/camera/CameraManager$49$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$49;->c()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$49;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$49;)V
    .locals 0

    .line 14231
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$49$1;->a:Lcom/oplus/camera/CameraManager$49;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 14234
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49$1;->a:Lcom/oplus/camera/CameraManager$49;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14235
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$49$1;->a:Lcom/oplus/camera/CameraManager$49;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49$1;->a:Lcom/oplus/camera/CameraManager$49;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$49;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ch(Lcom/oplus/camera/CameraManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/ui/d;->ae(Z)V

    :cond_0
    return-void
.end method
