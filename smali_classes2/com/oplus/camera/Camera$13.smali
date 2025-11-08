.class Lcom/oplus/camera/Camera$13;
.super Landroid/database/ContentObserver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;Landroid/os/Handler;)V
    .locals 0

    .line 1347
    iput-object p1, p0, Lcom/oplus/camera/Camera$13;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1350
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1351
    iget-object p1, p0, Lcom/oplus/camera/Camera$13;->a:Lcom/oplus/camera/Camera;

    invoke-static {p1}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1352
    iget-object p0, p0, Lcom/oplus/camera/Camera$13;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->c(Lcom/oplus/camera/Camera;)Lcom/oplus/camera/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/CameraManager;->aK()V

    const-string p0, "OplusCamera"

    const-string p1, "onChange,updateThumbnail"

    .line 1354
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
