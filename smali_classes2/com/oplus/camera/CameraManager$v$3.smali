.class Lcom/oplus/camera/CameraManager$v$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$v;->a(Lcom/oplus/camera/e/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$v;)V
    .locals 0

    .line 9999
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$v$3;->a:Lcom/oplus/camera/CameraManager$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10002
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$v$3;->a:Lcom/oplus/camera/CameraManager$v;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/camera/CameraManager;->j(I)V

    .line 10003
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v$3;->a:Lcom/oplus/camera/CameraManager$v;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$v;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0, v1}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;Z)Z

    return-void
.end method
