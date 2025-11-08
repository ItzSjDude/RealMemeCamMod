.class Lcom/oplus/camera/CameraManager$56$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$56;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$56;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$56;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$56$1;->a:Lcom/oplus/camera/CameraManager$56;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$56$1;->a:Lcom/oplus/camera/CameraManager$56;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56$1;->a:Lcom/oplus/camera/CameraManager$56;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$56;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->b(Lcom/oplus/camera/CameraManager;I)V

    :cond_0
    return-void
.end method
