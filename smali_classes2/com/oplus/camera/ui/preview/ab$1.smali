.class Lcom/oplus/camera/ui/preview/ab$1;
.super Ljava/lang/Object;
.source "TeleSmallPreviewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/ab;->b(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/ab;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/ab;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TeleSmallPreviewManager"

    const-string v0, "showTeleSmallPreviewView, onAnimationCancel"

    .line 478
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 481
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/u;->setVisibility(I)V

    .line 482
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setTeleSmallPreviewRenderModeDirty(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TeleSmallPreviewManager"

    const-string v0, "showTeleSmallPreviewView, onAnimationEnd"

    .line 469
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 472
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/camera/gl/u;->setTeleSmallPreviewRenderModeDirty(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TeleSmallPreviewManager"

    const-string v0, "showTeleSmallPreviewView, onAnimationStart"

    .line 455
    invoke-static {p1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 458
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->b(Lcom/oplus/camera/ui/preview/ab;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/camera/gl/u;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/gl/u;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/gl/u;->setVisibility(I)V

    .line 462
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/ab$1;->a:Lcom/oplus/camera/ui/preview/ab;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/ab;->a(Lcom/oplus/camera/ui/preview/ab;)Lcom/oplus/camera/gl/u;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/gl/u;->setTeleSmallPreviewRenderModeDirty(Z)V

    :cond_1
    :goto_0
    return-void
.end method
