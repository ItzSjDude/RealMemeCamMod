.class Lcom/oplus/camera/CameraManager$55$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$55;->a(Lcom/oplus/camera/ui/control/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$55;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$55;)V
    .locals 0

    .line 19111
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$55$1;->a:Lcom/oplus/camera/CameraManager$55;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 19114
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$55$1;->a:Lcom/oplus/camera/CameraManager$55;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$55;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19115
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$55$1;->a:Lcom/oplus/camera/CameraManager$55;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$55;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/d;->d(Z)V

    :cond_0
    return-void
.end method
