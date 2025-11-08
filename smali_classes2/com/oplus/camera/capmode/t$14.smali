.class Lcom/oplus/camera/capmode/t$14;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbCapModeInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/t;->isStickerMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbPaused:Z

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->l(ZZ)V

    .line 583
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$14;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p0, v2}, Lcom/oplus/camera/ui/CameraUIInterface;->v(Z)V

    :cond_0
    return-void
.end method
