.class Lcom/oplus/camera/capmode/d$14;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->onBeforeSnapping(Lcom/oplus/camera/e/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 2440
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$14;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2443
    iget-object v0, p0, Lcom/oplus/camera/capmode/d$14;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->d(ZZ)V

    .line 2444
    new-instance v0, Lcom/oplus/camera/ui/control/b;

    invoke-direct {v0}, Lcom/oplus/camera/ui/control/b;-><init>()V

    const-string v1, "button_color_inside_none"

    .line 2445
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(Ljava/lang/String;)V

    .line 2447
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    .line 2448
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2450
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/control/b;->a(I)V

    .line 2453
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$14;->a:Lcom/oplus/camera/capmode/d;

    iget-object p0, p0, Lcom/oplus/camera/capmode/d;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/control/b;)V

    return-void
.end method
