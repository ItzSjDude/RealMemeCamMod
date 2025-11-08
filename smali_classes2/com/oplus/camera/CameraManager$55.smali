.class Lcom/oplus/camera/CameraManager$55;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->cX()Lcom/oplus/camera/ui/control/e$b;
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

    .line 19107
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$55;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 1

    .line 19110
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$55;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19111
    iget-object p1, p0, Lcom/oplus/camera/CameraManager$55;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/oplus/camera/CameraManager$55$1;

    invoke-direct {v0, p0}, Lcom/oplus/camera/CameraManager$55$1;-><init>(Lcom/oplus/camera/CameraManager$55;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
