.class Lcom/oplus/camera/ui/SwitchCameraBar$2;
.super Ljava/lang/Object;
.source "SwitchCameraBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/SwitchCameraBar;->f()V
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

    .line 678
    iput-object p1, p0, Lcom/oplus/camera/ui/SwitchCameraBar$2;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/oplus/camera/ui/SwitchCameraBar$2;->a:Lcom/oplus/camera/ui/SwitchCameraBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/camera/ui/SwitchCameraBar;->j(Lcom/oplus/camera/ui/SwitchCameraBar;F)F

    return-void
.end method
