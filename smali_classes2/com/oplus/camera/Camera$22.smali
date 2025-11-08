.class Lcom/oplus/camera/Camera$22;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/oplus/camera/Camera$22;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 767
    iget-object v0, p0, Lcom/oplus/camera/Camera$22;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->e(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/Camera$b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "OplusCamera"

    const-string v1, "onPause, disable mOrientationListener"

    .line 768
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object p0, p0, Lcom/oplus/camera/Camera$22;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->e(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/Camera$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/Camera$b;->disable()V

    :cond_0
    return-void
.end method
