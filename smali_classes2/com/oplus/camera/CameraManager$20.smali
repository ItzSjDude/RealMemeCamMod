.class Lcom/oplus/camera/CameraManager$20;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/Storage$CameraPicture;Z)V
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

    .line 6187
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$20;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 2

    .line 6190
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$20;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6191
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$20;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$20$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$20$1;-><init>(Lcom/oplus/camera/CameraManager$20;Lcom/oplus/camera/ui/control/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
