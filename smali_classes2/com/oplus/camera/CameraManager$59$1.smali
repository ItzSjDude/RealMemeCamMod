.class Lcom/oplus/camera/CameraManager$59$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager$59;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$59;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$59;)V
    .locals 0

    .line 19248
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$59$1;->a:Lcom/oplus/camera/CameraManager$59;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 2

    .line 19251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThumbnailLoadSucceed: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/camera/ui/control/e;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19253
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59$1;->a:Lcom/oplus/camera/CameraManager$59;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$59;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, p1}, Lcom/oplus/camera/CameraManager;->c(Lcom/oplus/camera/CameraManager;Lcom/oplus/camera/ui/control/e;)V

    return-void
.end method
