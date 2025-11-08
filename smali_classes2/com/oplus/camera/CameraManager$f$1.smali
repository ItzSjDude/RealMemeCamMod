.class Lcom/oplus/camera/CameraManager$f$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$f;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$f;)V
    .locals 0

    .line 9686
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$f$1;->a:Lcom/oplus/camera/CameraManager$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 9689
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$f$1;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "openFrontFlash"

    .line 9693
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9695
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f$1;->a:Lcom/oplus/camera/CameraManager$f;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$f;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->J()V

    return-void
.end method
