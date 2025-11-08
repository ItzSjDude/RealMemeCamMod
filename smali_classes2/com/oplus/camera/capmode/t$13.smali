.class Lcom/oplus/camera/capmode/t$13;
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

    .line 561
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$13;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$13;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-nez v0, :cond_0

    return-void

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$13;->a:Lcom/oplus/camera/capmode/t;

    iget-object v0, v0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->n(ZZ)V

    .line 569
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$13;->a:Lcom/oplus/camera/capmode/t;

    invoke-static {v0}, Lcom/oplus/camera/capmode/t;->c(Lcom/oplus/camera/capmode/t;)V

    .line 570
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$13;->a:Lcom/oplus/camera/capmode/t;

    iget-object p0, p0, Lcom/oplus/camera/capmode/t;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v0, 0x1

    invoke-interface {p0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->j(ZZ)V

    return-void
.end method
