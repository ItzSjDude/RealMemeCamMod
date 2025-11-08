.class Lcom/oplus/camera/Camera$17;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Camera;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Camera;


# direct methods
.method constructor <init>(Lcom/oplus/camera/Camera;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/oplus/camera/Camera$17;->a:Lcom/oplus/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 372
    iget-object v0, p0, Lcom/oplus/camera/Camera$17;->a:Lcom/oplus/camera/Camera;

    new-instance v1, Lcom/oplus/camera/CameraManager;

    invoke-direct {v1, v0, v0}, Lcom/oplus/camera/CameraManager;-><init>(Landroid/app/Activity;Lcom/oplus/camera/f;)V

    invoke-static {v0, v1}, Lcom/oplus/camera/Camera;->a(Lcom/oplus/camera/Camera;Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/CameraManager;

    .line 373
    iget-object p0, p0, Lcom/oplus/camera/Camera$17;->a:Lcom/oplus/camera/Camera;

    invoke-static {p0}, Lcom/oplus/camera/Camera;->b(Lcom/oplus/camera/Camera;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
