.class Lcom/oplus/camera/CameraManager$7;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->c(I)V
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

    .line 2591
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$7;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    const-string v0, "onMessageQueueIdle"

    .line 2594
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 2596
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$7;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->ad(Lcom/oplus/camera/CameraManager;)V

    .line 2598
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
