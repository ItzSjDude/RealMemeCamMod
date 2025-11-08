.class Lcom/oplus/camera/CameraManager$34;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->bd()V
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

    .line 1035
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1038
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->v(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/e;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/e;I)V

    .line 1040
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;Z)V

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->w(Lcom/oplus/camera/CameraManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1045
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Ljava/util/concurrent/CopyOnWriteArrayList;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1048
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$34;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)Lcom/oplus/camera/ui/control/e;

    return-void
.end method
