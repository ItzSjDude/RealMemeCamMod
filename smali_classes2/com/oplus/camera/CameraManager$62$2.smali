.class Lcom/oplus/camera/CameraManager$62$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$62;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$62;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$62;)V
    .locals 0

    .line 19892
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$62$2;->a:Lcom/oplus/camera/CameraManager$62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 19895
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$62$2;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->av()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19896
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62$2;->a:Lcom/oplus/camera/CameraManager$62;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$62;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->di(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/control/i;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/i;->f()V

    :cond_0
    return-void
.end method
