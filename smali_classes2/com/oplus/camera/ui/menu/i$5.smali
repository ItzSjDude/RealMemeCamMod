.class Lcom/oplus/camera/ui/menu/i$5;
.super Ljava/lang/Object;
.source "RotationOptionItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/i;->a(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/oplus/camera/ui/menu/i;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/i;ZII)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/i$5;->d:Lcom/oplus/camera/ui/menu/i;

    iput-boolean p2, p0, Lcom/oplus/camera/ui/menu/i$5;->a:Z

    iput p3, p0, Lcom/oplus/camera/ui/menu/i$5;->b:I

    iput p4, p0, Lcom/oplus/camera/ui/menu/i$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1036
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/i$5;->d:Lcom/oplus/camera/ui/menu/i;

    invoke-static {p1}, Lcom/oplus/camera/ui/menu/i;->a(Lcom/oplus/camera/ui/menu/i;)Landroid/graphics/Paint;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/i$5;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/camera/ui/menu/i$5;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oplus/camera/ui/menu/i$5;->c:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/i$5;->d:Lcom/oplus/camera/ui/menu/i;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/i;->postInvalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
