.class Lcom/oplus/camera/ui/control/ShutterButton$3;
.super Lcom/oplus/camera/b/a;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->b(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/ShutterButton;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/ShutterButton;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 272
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 273
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 274
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 275
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 276
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 277
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 263
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 264
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 265
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 266
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    .line 267
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$3;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p0}, Lcom/oplus/camera/ui/control/ShutterButton;->invalidate()V

    return-void
.end method
