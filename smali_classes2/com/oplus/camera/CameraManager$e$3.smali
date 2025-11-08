.class Lcom/oplus/camera/CameraManager$e$3;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$e;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/CameraManager$e;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$e;)V
    .locals 0

    .line 11262
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 11265
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->e(Lcom/oplus/camera/CameraManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11269
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->bN(Lcom/oplus/camera/CameraManager;)I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 11270
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/oplus/camera/w/b;->removeMessages(I)V

    .line 11271
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->j(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/w/b;

    move-result-object p0

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/camera/w/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 11273
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e$3;->a:Lcom/oplus/camera/CameraManager$e;

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$e;->a:Lcom/oplus/camera/CameraManager;

    invoke-static {p0}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f1000f2

    invoke-static {p0, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
