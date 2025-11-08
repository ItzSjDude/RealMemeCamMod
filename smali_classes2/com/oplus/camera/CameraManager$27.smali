.class Lcom/oplus/camera/CameraManager$27;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->c(ZZ)V
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

    .line 7140
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$27;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 7143
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$27;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7144
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$27;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$27;->a:Lcom/oplus/camera/CameraManager;

    .line 7145
    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/o;->O()Z

    move-result v2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$27;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->D(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/o;->C()Z

    move-result p0

    .line 7144
    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/camera/ui/d;->c(ZZZ)Z

    :cond_0
    return-void
.end method
