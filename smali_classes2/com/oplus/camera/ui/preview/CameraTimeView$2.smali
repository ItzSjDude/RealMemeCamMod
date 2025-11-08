.class Lcom/oplus/camera/ui/preview/CameraTimeView$2;
.super Lcom/oplus/camera/b/a;
.source "CameraTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/CameraTimeView;->h()V
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

    .line 361
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$2;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 371
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    const-string p1, "CameraTimeView"

    const-string v0, "showTimeUI, onAnimationCancel"

    .line 372
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$2;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "CameraTimeView"

    const-string v0, "showTimeUI, onAnimationEnd"

    .line 364
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$2;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z

    return-void
.end method
