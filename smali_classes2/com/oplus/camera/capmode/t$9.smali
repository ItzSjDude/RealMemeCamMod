.class Lcom/oplus/camera/capmode/t$9;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->onCaptureCompleted(Lcom/oplus/camera/aps/service/CameraCaptureResult;Lcom/oplus/camera/e/c;)V
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

    .line 1791
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$9;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1794
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$9;->a:Lcom/oplus/camera/capmode/t;

    iget-boolean v0, v0, Lcom/oplus/camera/capmode/t;->mbDestroyed:Z

    if-nez v0, :cond_0

    .line 1795
    iget-object p0, p0, Lcom/oplus/camera/capmode/t$9;->a:Lcom/oplus/camera/capmode/t;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/capmode/t;->onAfterPictureTaken([BZ)V

    :cond_0
    return-void
.end method
