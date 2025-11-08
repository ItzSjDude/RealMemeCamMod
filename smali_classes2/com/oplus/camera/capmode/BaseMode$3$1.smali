.class Lcom/oplus/camera/capmode/BaseMode$3$1;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/BaseMode$3;->onCaptureFailed(Lcom/oplus/ocs/camera/CameraPictureCallback$CameraPictureResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/BaseMode$3;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/BaseMode$3;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/oplus/camera/capmode/BaseMode$3$1;->a:Lcom/oplus/camera/capmode/BaseMode$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$3$1;->a:Lcom/oplus/camera/capmode/BaseMode$3;

    iget-object p0, p0, Lcom/oplus/camera/capmode/BaseMode$3;->a:Lcom/oplus/camera/capmode/BaseMode;

    invoke-virtual {p0}, Lcom/oplus/camera/capmode/BaseMode;->disableBurstShot()V

    return-void
.end method
