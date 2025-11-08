.class Lcom/oplus/camera/ui/preview/g$19;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$19;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 450
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$19;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->Q(Lcom/oplus/camera/ui/preview/g;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 451
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$19;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->R(Lcom/oplus/camera/ui/preview/g;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
