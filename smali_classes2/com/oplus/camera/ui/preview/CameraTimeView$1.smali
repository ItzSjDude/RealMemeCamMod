.class Lcom/oplus/camera/ui/preview/CameraTimeView$1;
.super Ljava/lang/Object;
.source "CameraTimeView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/CameraTimeView;->a(ZZ)V
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

    .line 299
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$1;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/CameraTimeView$1;->a:Lcom/oplus/camera/ui/preview/CameraTimeView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/preview/CameraTimeView;->a(Lcom/oplus/camera/ui/preview/CameraTimeView;Z)Z

    const-string p0, "CameraTimeView"

    const-string p1, "hideTimeUI, onAnimationEnd"

    .line 314
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    const-string p0, "CameraTimeView"

    const-string p1, "hideTimeUI, onAnimationStart"

    .line 302
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
