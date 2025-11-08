.class Lcom/oplus/camera/ui/control/ShutterButton$9;
.super Lcom/oplus/camera/b/a;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->setResIdWithAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/ui/control/ShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ShutterButton;I)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iput p2, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->a:I

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 438
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 439
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 440
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 441
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 442
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iget v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    .line 443
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 428
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 429
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 430
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 431
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 432
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    iget v0, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->a:I

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setImageResource(I)V

    .line 433
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$9;->b:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method
