.class Lcom/oplus/camera/ui/SwitchCameraBar$5;
.super Ljava/lang/Object;
.source "SwitchCameraBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/SwitchCameraBar;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/SwitchCameraBar;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/SwitchCameraBar;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$5;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$5;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->m(Lcom/oplus/camera/ui/SwitchCameraBar;F)F

    .line 734
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$5;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/SwitchCameraBar;->invalidate()V

    return-void
.end method
