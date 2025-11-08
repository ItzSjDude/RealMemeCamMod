.class Lcom/oplus/camera/ui/control/a$14;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/control/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 2245
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$14;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2255
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$14;->a:Lcom/oplus/camera/ui/control/a;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/a;->af()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 2248
    iget-object p1, p0, Lcom/oplus/camera/ui/control/a$14;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p1}, Lcom/oplus/camera/ui/control/a;->p(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2249
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$14;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->p(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/control/ThumbImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ThumbImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
