.class Lcom/oplus/camera/CameraManager$48;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/capmode/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/CameraManager;
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

    .line 14188
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$48;->a:Lcom/oplus/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 14191
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$48;->a:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v0}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14192
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$48;->a:Lcom/oplus/camera/CameraManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oplus/camera/CameraManager;->B(Lcom/oplus/camera/CameraManager;Z)Z

    :cond_0
    return-void
.end method
