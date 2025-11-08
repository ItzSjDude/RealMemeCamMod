.class Lcom/oplus/camera/ui/control/ShutterButton$5;
.super Lcom/oplus/camera/b/a;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/ShutterButton;->c(ZZ)V
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

    .line 323
    iput-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 335
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 336
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 337
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 338
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 339
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 326
    invoke-super {p0, p1}, Lcom/oplus/camera/b/a;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 327
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableScale(F)V

    .line 328
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setDrawableAlpha(F)V

    .line 329
    iget-object p1, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/control/ShutterButton;->setAlpha(F)V

    .line 330
    iget-object p0, p0, Lcom/oplus/camera/ui/control/ShutterButton$5;->a:Lcom/oplus/camera/ui/control/ShutterButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/control/ShutterButton;->setVisibility(I)V

    return-void
.end method
