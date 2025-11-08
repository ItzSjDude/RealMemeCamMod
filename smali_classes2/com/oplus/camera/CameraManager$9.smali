.class Lcom/oplus/camera/CameraManager$9;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->a(Landroid/util/Size;Landroid/util/Size;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/Size;

.field final synthetic b:Landroid/util/Size;

.field final synthetic c:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;Landroid/util/Size;Landroid/util/Size;)V
    .locals 0

    .line 3228
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$9;->c:Lcom/oplus/camera/CameraManager;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$9;->a:Landroid/util/Size;

    iput-object p3, p0, Lcom/oplus/camera/CameraManager$9;->b:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3231
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$9;->c:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3232
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$9;->c:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/CameraManager$9;->a:Landroid/util/Size;

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$9;->b:Landroid/util/Size;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/ui/d;->a(Landroid/util/Size;Landroid/util/Size;Z)V

    .line 3233
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$9;->c:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$9;->c:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->aa(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/preview/a/t;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t;->k()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/oplus/camera/ui/preview/a/t;->b(I)V

    :cond_0
    return-void
.end method
