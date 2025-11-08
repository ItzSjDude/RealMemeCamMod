.class Lcom/oplus/camera/ui/CameraQrCodeView$2;
.super Ljava/lang/Object;
.source "CameraQrCodeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/CameraQrCodeView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/CameraQrCodeView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/CameraQrCodeView;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/CameraQrCodeView;->setVisibility(I)V

    .line 88
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeView;->a(Lcom/oplus/camera/ui/CameraQrCodeView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeView;->a(Lcom/oplus/camera/ui/CameraQrCodeView;Z)Z

    return-void
.end method
