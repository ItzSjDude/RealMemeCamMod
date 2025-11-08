.class Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$2;
.super Ljava/lang/Object;
.source "RotateAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$2;->a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView$2;->a:Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/menu/facebeauty/RotateAnimationView;->setColorFilter(I)V

    return-void
.end method
