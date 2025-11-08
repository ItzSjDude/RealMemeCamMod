.class Lcom/oplus/camera/CameraManager$66$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$66;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$66;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$66;)V
    .locals 0

    .line 21125
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$66$1;->a:Lcom/oplus/camera/CameraManager$66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 21128
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$66$1;->a:Lcom/oplus/camera/CameraManager$66;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$66;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21129
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$66$1;->a:Lcom/oplus/camera/CameraManager$66;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$66;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/d;->bZ()V

    :cond_0
    return-void
.end method
