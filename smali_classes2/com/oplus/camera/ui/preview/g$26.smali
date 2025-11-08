.class Lcom/oplus/camera/ui/preview/g$26;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/preview/g;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/g;)V
    .locals 0

    .line 3596
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3612
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3613
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    .line 3614
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setTranslationX(F)V

    .line 3615
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setTranslationY(F)V

    .line 3616
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 3599
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3600
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setTranslationX(F)V

    .line 3601
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setTranslationY(F)V

    .line 3602
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setAlpha(F)V

    .line 3603
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setVisibility(I)V

    .line 3604
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setClipToPadding(Z)V

    .line 3605
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/camera/ui/widget/a;->setClipChildren(Z)V

    .line 3606
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/g$26;->a:Lcom/oplus/camera/ui/preview/g;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/g;->ag(Lcom/oplus/camera/ui/preview/g;)Lcom/oplus/camera/ui/widget/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/camera/ui/widget/a;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method
