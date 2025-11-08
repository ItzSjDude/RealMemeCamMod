.class Lcom/oplus/camera/CameraManager$76$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/CameraManager$76;->a(Lcom/oplus/camera/ui/control/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/e;

.field final synthetic b:Lcom/oplus/camera/CameraManager$76;


# direct methods
.method constructor <init>(Lcom/oplus/camera/CameraManager$76;Lcom/oplus/camera/ui/control/e;)V
    .locals 0

    .line 2017
    iput-object p1, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iput-object p2, p0, Lcom/oplus/camera/CameraManager$76$1;->a:Lcom/oplus/camera/ui/control/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2020
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/ModeManager;->dv()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 2021
    :goto_0
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v2, v2, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget v2, v2, Lcom/oplus/camera/CameraManager$76;->a:I

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v3, v3, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    .line 2022
    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->a(Lcom/oplus/camera/CameraManager;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v2, v2, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-virtual {v2}, Lcom/oplus/camera/CameraManager;->am()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 2024
    :goto_2
    iget-object v3, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v3, v3, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v3}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-wide v3, v3, Lcom/oplus/camera/CameraManager$76;->b:J

    cmp-long v3, v3, v0

    if-ltz v3, :cond_3

    if-nez v2, :cond_3

    .line 2025
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v2, v2, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->g(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/ui/d;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/camera/CameraManager$76$1;->a:Lcom/oplus/camera/ui/control/e;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/ui/d;->a(Lcom/oplus/camera/ui/control/e;)V

    .line 2028
    :cond_3
    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v2, v2, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v2}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-wide v2, v2, Lcom/oplus/camera/CameraManager$76;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_4

    .line 2029
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->i(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/capmode/ModeManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/camera/capmode/ModeManager;->a([BIIIZI)V

    .line 2032
    :cond_4
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-boolean v0, v0, Lcom/oplus/camera/CameraManager$76;->c:Z

    if-eqz v0, :cond_5

    .line 2033
    iget-object v0, p0, Lcom/oplus/camera/CameraManager$76$1;->b:Lcom/oplus/camera/CameraManager$76;

    iget-object v0, v0, Lcom/oplus/camera/CameraManager$76;->d:Lcom/oplus/camera/CameraManager;

    invoke-static {v0}, Lcom/oplus/camera/CameraManager;->r(Lcom/oplus/camera/CameraManager;)Lcom/oplus/camera/watch/b$b;

    move-result-object v0

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/oplus/camera/CameraManager$76$1;->a:Lcom/oplus/camera/ui/control/e;

    .line 2034
    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/e;->h()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2033
    invoke-interface {v0, v1, p0}, Lcom/oplus/camera/watch/b$b;->a(ILandroid/graphics/Bitmap;)V

    :cond_5
    return-void
.end method
