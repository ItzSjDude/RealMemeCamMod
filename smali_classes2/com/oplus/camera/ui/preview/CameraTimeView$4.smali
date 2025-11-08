.class Lcom/oplus/camera/ui/preview/CameraTimeView$4;
.super Lcom/oplus/camera/b/a;
.source "CameraTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/CameraTimeView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/CameraTimeView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/CameraTimeView;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$4;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 442
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 444
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$4;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z

    .line 445
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$4;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "CameraTimeView"

    const-string v0, "hideTimeUI, onAnimationEnd"

    .line 434
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$4;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z

    .line 437
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$4;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 427
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationStart(Landroid/animation/Animator;)V

    const-string p0, "CameraTimeView"

    const-string p1, "hideTimeUI, onAnimationStart"

    .line 429
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
