.class Lcom/oplus/camera/CameraManager$76;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/control/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager;->a(JLjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lcom/oplus/camera/CameraManager;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager;IJZ)V
    .locals 0

    .line 2010
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    iput p2, p0, Lcom/oplus/camera/CameraManager$76;->a:I

    iput-wide p3, p0, Lcom/oplus/camera/CameraManager$76;->b:J

    iput-boolean p5, p0, Lcom/oplus/camera/CameraManager$76;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/control/e;)V
    .locals 2

    .line 2013
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2017
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/oplus/camera/CameraManager$76$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/CameraManager$76$1;-><init>(Lcom/oplus/camera/CameraManager$76;Lcom/oplus/camera/ui/control/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
