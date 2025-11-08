.class Lcom/oplus/camera/capmode/o$1;
.super Ljava/lang/Object;
.source "MicroscopeCaptureMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/o;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/o;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/o;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 180
    iget-object p1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    iget-object p1, p1, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->av()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    iget-object p1, p1, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {p1}, Lcom/oplus/camera/capmode/o;->a(Lcom/oplus/camera/capmode/o;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    iget-object p1, p1, Lcom/oplus/camera/capmode/o;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {v1}, Lcom/oplus/camera/capmode/o;->b(Lcom/oplus/camera/capmode/o;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/capmode/o$1;->a:Lcom/oplus/camera/capmode/o;

    invoke-static {p0}, Lcom/oplus/camera/capmode/o;->c(Lcom/oplus/camera/capmode/o;)I

    move-result p0

    invoke-interface {p1, v1, v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    :cond_1
    return-void
.end method
