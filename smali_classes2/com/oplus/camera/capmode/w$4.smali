.class Lcom/oplus/camera/capmode/w$4;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->onPreviewCaptureResult(Lcom/oplus/ocs/camera/CameraPreviewCallback$CameraPreviewResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$4;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$4;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mCameraInterface:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->f()V

    return-void
.end method
