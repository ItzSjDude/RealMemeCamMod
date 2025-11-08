.class Lcom/oplus/camera/ui/menu/i$4;
.super Ljava/lang/Object;
.source "RotationOptionItemView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/i;->a(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/i;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i$4;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/i$4;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/i;->a(Lcom/oplus/camera/ui/menu/i;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1025
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i$4;->a:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->postInvalidate()V

    return-void
.end method
