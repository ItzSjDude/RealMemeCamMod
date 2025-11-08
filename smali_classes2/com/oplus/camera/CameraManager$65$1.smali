.class Lcom/oplus/camera/CameraManager$65$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$65;->a()V
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

    .line 20822
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$65$1;->a:Lcom/oplus/camera/CameraManager$65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 20825
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$65$1;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20826
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65$1;->a:Lcom/oplus/camera/CameraManager$65;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$65;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->A(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/f;->p()V

    :cond_0
    return-void
.end method
