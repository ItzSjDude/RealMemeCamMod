.class Lcom/oplus/camera/capmode/p$1;
.super Ljava/lang/Object;
.source "MicroscopeVideoMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/p;->onInitCameraMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/p;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/p;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    iget-object p1, p1, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    invoke-interface {p1}, Lcom/oplus/camera/ui/CameraUIInterface;->av()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    iget-object p1, p1, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Lcom/oplus/camera/ui/CameraUIInterface;->a(ZZZ)V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {p1}, Lcom/oplus/camera/capmode/p;->a(Lcom/oplus/camera/capmode/p;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    iget-object p1, p1, Lcom/oplus/camera/capmode/p;->mCameraUIInterface:Lcom/oplus/camera/ui/CameraUIInterface;

    iget-object v1, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {v1}, Lcom/oplus/camera/capmode/p;->b(Lcom/oplus/camera/capmode/p;)Lcom/oplus/camera/ui/MicroscopeHintView$a;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/camera/capmode/p$1;->a:Lcom/oplus/camera/capmode/p;

    invoke-static {p0}, Lcom/oplus/camera/capmode/p;->c(Lcom/oplus/camera/capmode/p;)I

    move-result p0

    invoke-interface {p1, v1, v0, p0}, Lcom/oplus/camera/ui/CameraUIInterface;->a(Lcom/oplus/camera/ui/MicroscopeHintView$a;ZI)V

    :cond_1
    return-void
.end method
