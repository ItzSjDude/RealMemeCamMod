.class Lcom/oplus/camera/CameraManager$35;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->ae()V
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

    .line 8015
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$35;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 8018
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$35;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aQ(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8019
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$35;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aN(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 8020
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$35;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aN(Lcom/oplus/camera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_0
    return-void
.end method
