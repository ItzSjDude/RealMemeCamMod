.class Lcom/oplus/camera/Camera$20;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;->onResume()V
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

    .line 680
    iput-object p1, p0, Lcom/oplus/camera/Camera$20;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/oplus/camera/Camera$20;->a:Lcom/oplus/camera/Camera;

    invoke-static {v0}, Lcom/oplus/camera/Camera;->e(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/Camera$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/oplus/camera/Camera$20;->a:Lcom/oplus/camera/Camera;

    new-instance v1, Lcom/oplus/camera/Camera$b;

    invoke-virtual {v0}, Lcom/oplus/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/oplus/camera/Camera$b;-><init>(Lcom/oplus/camera/Camera;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Lcom/oplus/camera/Camera$b;)Lcom/oplus/camera/Camera$b;

    :cond_0
    const-string v0, "OplusCamera"

    const-string v1, "onResume, enable mOrientationListener"

    .line 687
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object p0, p0, Lcom/oplus/camera/Camera$20;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->e(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/Camera$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/Camera$b;->enable()V

    return-void
.end method
