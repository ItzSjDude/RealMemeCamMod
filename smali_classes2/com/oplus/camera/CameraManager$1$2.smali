.class Lcom/oplus/camera/CameraManager$1$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/screen/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$1;->a(Lcom/oplus/camera/Storage$CameraPicture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$1;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$1;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$1$2;->a:Lcom/oplus/camera/CameraManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$1$2;->a:Lcom/oplus/camera/CameraManager$1;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1$2;->a:Lcom/oplus/camera/CameraManager$1;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$1;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/d;->f(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
