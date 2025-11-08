.class Lcom/oplus/camera/capmode/g$5;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Lcom/oplus/camera/doubleexposure/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideBlurView, mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {v1}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleExposureMode"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PREVIEW:Lcom/oplus/camera/capmode/g$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {v0}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object v0

    sget-object v1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    iget-object v0, v0, Lcom/oplus/camera/capmode/g;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIInterface;->aR()V

    .line 135
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$5;->a:Lcom/oplus/camera/capmode/g;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/capmode/g;->a(Lcom/oplus/camera/capmode/g;Z)Z

    :cond_1
    return-void
.end method
