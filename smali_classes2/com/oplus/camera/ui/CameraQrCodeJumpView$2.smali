.class Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;
.super Ljava/lang/Object;
.source "CameraQrCodeJumpView.java"

# interfaces
.implements Lcom/oplus/camera/ui/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/CameraQrCodeJumpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->setAlpha(F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-static {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->b(Lcom/oplus/camera/ui/CameraQrCodeJumpView;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oplus/camera/ui/CameraQrCodeJumpView$2;->a:Lcom/oplus/camera/ui/CameraQrCodeJumpView;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/CameraQrCodeJumpView;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
